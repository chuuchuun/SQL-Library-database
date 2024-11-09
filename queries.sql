--Bibliotekarz chce sprawdzi�, jakie ksi��ki znajduj� si� w bazie danych i kto jest ich autorem/wsp�autorami.
SELECT * FROM WIDOK_KSIAZKI_AUTORZY

--Bibliotekarz chce dowiedzie� si�, na kt�re ksi��ki nie ma popytu,w tym celu musi odnale�� wszystkie ksi��ki, kt�re nigdy nie by�y wypo�yczone.
SELECT K.*
FROM KSIAZKI K
LEFT JOIN WYPOZYCZENIA W ON K.ID_KSIAZKI = W.ID_KSIAZKI
WHERE W.ID_WYPOZYCZENIA IS NULL;

--Bibliotekarz chce efektywnie zarz�dza� rezerwacjami. Aby zrozumie�, jak zarz�dza� swoim czasem, musi zna� ilo�� rezerwacji o r�nych statusach. 
SELECT STATUS_REZERWACJI, COUNT(ID_REZERWACJI) AS LICZBA_REZERWACJI
FROM REZERWACJE
GROUP BY STATUS_REZERWACJI;

-- Biblioteka chce motywowa� czytelnik�w do wypo�yczania ksi��ek, dlatego obdarowuje czytelnika, kt�ry w tym roku wypo�yczy� najwi�cej ksi��ek.
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

-- Pracownik biblioteki chce zobaczy�, jakie ksi��ki powinny by� dzi� wr�cone. Wprowadza dat�, system wraca list� ksi��ek.
SELECT W.ID_WYPOZYCZENIA, K.TYTUL, W.PLANOWANA_DATA_ZWROTU
FROM WYPOZYCZENIA W
JOIN KSIAZKI K ON W.ID_KSIAZKI = K.ID_KSIAZKI
WHERE CONVERT(DATE, W.PLANOWANA_DATA_ZWROTU) = CONVERT(DATE, GETDATE());


--Bibliotekarz chce zobaczy� ksi��ki, kt�re maj� niskie oceny. System wraca list� ksi��ek z �redni� ocen� poni�ej 4.
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

--Podejrzewa si�, �e u�ytkownik o nazwie X wystawia nierzetelne opinie. Bibliotekarz chce sprawdzi�, czy to prawda, wy�wietlaj�c i analizuj�c jego opinie, 
--kt�re zawieraj� tekst opinii kr�tszy ni� 5 znak�w. 
SELECT O.TEKST_OPINII, O.OCENA, K.TYTUL
FROM OPINIE O
JOIN KSIAZKI K ON O.ID_KSIAZKI = K.ID_KSIAZKI
WHERE O.AUTOR = 'Patrycja Kowalczyk' AND LEN(O.TEKST_OPINII) < 5;

--Czytelnik chce wypo�yczy� ksi��k�, kt�ra zosta�a wydana w pewnym okresie czasu (pomi�dzy rokiem X a rokiem Y). System zwraca list� ksi��ek, 
--kt�re zosta�y wydane w tym okresie czasu.
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

--Biblioteka zbiera statystyki dotycz�ce popularno�ci r�nych gatunk�w. 
--System zwraca list� wszystkich gatunk�w razem z �redni� ocen� wszystkich ksi��ek tego gatunku w kolejno�ci malej�cej.
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

--Bibliotekarz zauwa�y� brak kilku ksi��ek i chc�c ustali�, gdzie one s�, chce przejrze� wszystkie rezerwacje, kt�rych planowany termin zwrotu ju� min��, ale nie by�y wr�cone do  biblioteki.
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
