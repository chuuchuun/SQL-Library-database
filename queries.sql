--Bibliotekarz chce sprawdziæ, jakie ksi¹¿ki znajduj¹ siê w bazie danych i kto jest ich autorem/wspó³autorami.
SELECT * FROM WIDOK_KSIAZKI_AUTORZY

--Bibliotekarz chce dowiedzieæ siê, na które ksi¹¿ki nie ma popytu,w tym celu musi odnaleŸæ wszystkie ksi¹¿ki, które nigdy nie by³y wypo¿yczone.
SELECT K.*
FROM KSIAZKI K
LEFT JOIN WYPOZYCZENIA W ON K.ID_KSIAZKI = W.ID_KSIAZKI
WHERE W.ID_WYPOZYCZENIA IS NULL;

--Bibliotekarz chce efektywnie zarz¹dzaæ rezerwacjami. Aby zrozumieæ, jak zarz¹dzaæ swoim czasem, musi znaæ iloœæ rezerwacji o ró¿nych statusach. 
SELECT STATUS_REZERWACJI, COUNT(ID_REZERWACJI) AS LICZBA_REZERWACJI
FROM REZERWACJE
GROUP BY STATUS_REZERWACJI;

-- Biblioteka chce motywowaæ czytelników do wypo¿yczania ksi¹¿ek, dlatego obdarowuje czytelnika, który w tym roku wypo¿yczy³ najwiêcej ksi¹¿ek.
SELECT TOP 1
    C.PESEL AS NAJWIECEJ_WYPOZYCZAJACY,
    C.IMIE,
    C.NAZWISKO,
    C.NUMER_TELEFONU,
    YEAR(W.DATA_WYPOZYCZENIA) AS ROK,
    COUNT(W.ID_WYPOZYCZENIA) AS LICZBA_WYPOZYCZEN
FROM
    WYPOZYCZENIA W
JOIN
    CZYTELNICY C ON W.PESEL = C.PESEL
WHERE
    YEAR(W.DATA_WYPOZYCZENIA) = 2023
GROUP BY
    C.PESEL, C.IMIE, C.NAZWISKO, C.NUMER_TELEFONU, YEAR(W.DATA_WYPOZYCZENIA)
ORDER BY
    LICZBA_WYPOZYCZEN DESC;

-- Pracownik biblioteki chce zobaczyæ, jakie ksi¹¿ki powinny byæ dziœ wrócone. Wprowadza datê, system wraca listê ksi¹¿ek.
SELECT W.ID_WYPOZYCZENIA, K.TYTUL, W.PLANOWANA_DATA_ZWROTU
FROM WYPOZYCZENIA W
JOIN KSIAZKI K ON W.ID_KSIAZKI = K.ID_KSIAZKI
WHERE CONVERT(DATE, W.PLANOWANA_DATA_ZWROTU) = CONVERT(DATE, GETDATE());


--Bibliotekarz chce zobaczyæ ksi¹¿ki, które maj¹ niskie oceny. System wraca listê ksi¹¿ek z œredni¹ ocen¹ poni¿ej 4.
SELECT K.ID_KSIAZKI, K.TYTUL, K.ROK_WYDANIA, K.SREDNIA_OCENA
FROM (
    SELECT 
        K.ID_KSIAZKI, 
        K.TYTUL, 
        K.ROK_WYDANIA, 
        AVG(O.OCENA) AS SREDNIA_OCENA
    FROM KSIAZKI K
    JOIN OPINIE O ON K.ID_KSIAZKI = O.ID_KSIAZKI
    GROUP BY 
        K.ID_KSIAZKI, 
        K.TYTUL, 
        K.ROK_WYDANIA
    HAVING AVG(O.OCENA) < 4
) AS K
ORDER BY K.SREDNIA_OCENA ASC;

--Podejrzewa siê, ¿e u¿ytkownik o nazwie X wystawia nierzetelne opinie. Bibliotekarz chce sprawdziæ, czy to prawda, wyœwietlaj¹c i analizuj¹c jego opinie, 
--które zawieraj¹ tekst opinii krótszy ni¿ 5 znaków. 
SELECT O.TEKST_OPINII, O.OCENA, K.TYTUL
FROM OPINIE O
JOIN KSIAZKI K ON O.ID_KSIAZKI = K.ID_KSIAZKI
WHERE O.AUTOR = 'Patrycja Kowalczyk' AND LEN(O.TEKST_OPINII) < 5;

--Czytelnik chce wypo¿yczyæ ksi¹¿kê, która zosta³a wydana w pewnym okresie czasu (pomiêdzy rokiem X a rokiem Y). System zwraca listê ksi¹¿ek, 
--które zosta³y wydane w tym okresie czasu.
SELECT 
    K.TYTUL,
    A.IMIE AS IMIE_AUTORA,
    A.NAZWISKO AS NAZWISKO_AUTORA,
    K.ROK_WYDANIA
FROM 
    KSIAZKI K
JOIN 
    AUTORZY_KSIAZEK AK ON K.ID_KSIAZKI = AK.ID_KSIAZKI
JOIN 
    AUTORZY A ON AK.ID_AUTORA = A.ID_AUTORA
WHERE 
    K.ROK_WYDANIA BETWEEN 2018 AND 2022
ORDER BY 
	K.ROK_WYDANIA ASC;

--Biblioteka zbiera statystyki dotycz¹ce popularnoœci ró¿nych gatunków. 
--System zwraca listê wszystkich gatunków razem z œredni¹ ocen¹ wszystkich ksi¹¿ek tego gatunku w kolejnoœci malej¹cej.
SELECT G.NAZWA AS GATUNEK, AVG(O.OCENA) AS SREDNIA_OCENA
FROM 
	GATUNKI G
JOIN 
	GATUNKI_KSIAZEK GK ON G.NAZWA = GK.NAZWA_GATUNKU
JOIN 
	KSIAZKI K ON GK.ID_KSIAZKI = K.ID_KSIAZKI
JOIN 
	OPINIE O ON K.ID_KSIAZKI = O.ID_KSIAZKI
GROUP BY 
	G.NAZWA
ORDER BY 
	SREDNIA_OCENA DESC;

--Bibliotekarz zauwa¿y³ brak kilku ksi¹¿ek i chc¹c ustaliæ, gdzie one s¹, chce przejrzeæ wszystkie rezerwacje, których planowany termin zwrotu ju¿ min¹³, ale nie by³y wrócone do  biblioteki.
SELECT W.ID_WYPOZYCZENIA, W.DATA_WYPOZYCZENIA, W.PLANOWANA_DATA_ZWROTU, W.DATA_ZWROTU, C.PESEL, C.IMIE AS IMIE_CZYTELNIKA, C.NAZWISKO AS NAZWISKO_CZYTELNIKA, K.ID_KSIAZKI, K.TYTUL, A.IMIE AS IMIE_AUTORA, A.NAZWISKO AS NAZWISKO_AUTORA
FROM WYPOZYCZENIA W
JOIN CZYTELNICY C ON W.PESEL = C.PESEL
JOIN KSIAZKI K ON W.ID_KSIAZKI = K.ID_KSIAZKI
JOIN AUTORZY_KSIAZEK AK ON K.ID_KSIAZKI = AK.ID_KSIAZKI
JOIN AUTORZY A ON AK.ID_AUTORA = A.ID_AUTORA
WHERE W.PLANOWANA_DATA_ZWROTU < GETDATE() AND W.DATA_ZWROTU IS NULL;



/*SELECT * FROM WYDAWCY
SELECT * FROM KSIAZKI
WHERE ID_WYDAWCY = 'WYD001'
UPDATE WYDAWCY
SET ID_WYDAWCY = 'WYD123'
WHERE ID_WYDAWCY = 'WYD001'
SELECT * FROM WYDAWCY
SELECT * FROM KSIAZKI
WHERE ID_WYDAWCY = 'WYD123'

SELECT * FROM KSIAZKI_NA_LISCIE_BESTSELLEROW
WHERE ID_LISTY_BESTSELLEROW = 'BS202301'

DELETE FROM BESTSELLERY
WHERE ID_LISTY_BESTSELLEROW = 'BS202301'

SELECT * FROM KSIAZKI_NA_LISCIE_BESTSELLEROW
WHERE ID_LISTY_BESTSELLEROW = 'BS202301'
*/
