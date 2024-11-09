INSERT INTO WYDAWCY VALUES
('WYD001','Alkazar','alkazar@gmail.com'),
('WYD002','Alma-press', 'alma_press@gmail.com'),
('WYD003','Fabryka S��w', 'fabryka_slow@gmailcom'),
('WYD004','Genius Creations','genius_creations@gmail.com'),
('WYD005','Towarzystwo Wydawnicze �Ignis�', 'ignis@gmailcom'),
('WYD006','ISA', 'isa@gmailcom'),
('WYD007','Ksi��ka i Wiedza','ksiazka_i_wiedza@gmail.com'),
('WYD008','Marpress', 'marpress@gmailcom'),
('WYD009','Mystic Production', 'mystic_production@gmailcom'),
('WYD010','�wiat Ksi��ki', 'swiat_ksiazki@gmailcom');

INSERT INTO KSIAZKI VALUES
('KSZ001','Lalka', '2021', 99, 'WYD001'),
('KSZ002','Ziemia obiecana', '2019', 74, 'WYD002'),
('KSZ003','Qvo Vadis', '2020', 46, 'WYD003'),
('KSZ004','Panny z Wilka', '2010', 30, 'WYD004'),
('KSZ005','Przedwio�nie', '2022', 20, 'WYD005'),
('KSZ006','Traktat o �uskaniu fasoli', '2012', 70, 'WYD006'),
('KSZ007','Inny �wiat', '2018', 33, 'WYD007'),
('KSZ008','Madame', '2011', 85, 'WYD008'),
('KSZ009','Opowiadania zebrane', '2014', 24, 'WYD009'),
('KSZ010','Dziennik 1954', '2009', 36, 'WYD010'),
('KSZ011','Pan Tadeusz', '2002', 96, 'WYD001'),
('KSZ012','Nad Niemnem', '2017', 51, 'WYD002'),
('KSZ013','Cyberiada', '2022', 71, 'WYD003'),
('KSZ014','Dziady', '2010', 34, 'WYD004'),
('KSZ015','Wrzenie �wiata', '2001', 63, 'WYD005'),
('KSZ016','Zniewolony umys�', '2004', 41, 'WYD006'),
('KSZ017','Barbarzy�ca w ogrodzie', '2018', 56, 'WYD007'),
('KSZ018','Poezje zebrane', '2007', 98, 'WYD008'),
('KSZ019','My�li nieuczesanych', '2019', 81, 'WYD009'),
('KSZ020','Cymanowski M�yn', '2022', 88, 'WYD010');

INSERT INTO AUTORZY VALUES
('AUT001', 'Boles�aw', 'Prus', '1847-08-20'),
('AUT002', 'W�adys�aw', 'Reymont', '1867-05-07'),
('AUT003', 'Henryk', 'Sienkiewicz', '1846-05-05'),
('AUT004', 'Jaros�aw', 'Iwaszkiewicz', '1894-02-20'),
('AUT005', 'Stefan', '�eromski', '1864-10-14'),
('AUT006', 'Wies�aw', 'My�liwski', '1932-03-25'),
('AUT007', 'Gustaw', 'Herling-Grudzi�ski', '1919-05-20'),
('AUT008', 'Antoni', 'Libera', '1949-04-19'),
('AUT009', 'Marek', 'H�asko', '1934-01-14'),
('AUT010', 'Leopold', 'Tyrmand', '1920-05-16'),
('AUT011', 'Adam', 'Mickiewicz', '1798-12-24'),
('AUT012', 'Eliza', 'Orzeszkowa', '1841-06-06'),
('AUT013', 'Stanis�aw', 'Lem', '1921-09-12'),
('AUT014', 'Ryszard', 'Kapu�ci�ski', '1932-03-04'),
('AUT015', 'Czes�aw', 'Mi�osz', '1911-06-30'),
('AUT016', 'Zbigniew', 'Herbert', '1924-10-29'),
('AUT017', 'Boles�aw', 'Le�mian', '1877-01-22'),
('AUT018', 'Stanis�aw Jerzy', 'Lec', '1909-03-06'),
('AUT019', 'Magdalena', 'Witkiewicz', '1976-08-11'),
('AUT020', 'Stefan', 'Darda', '1972-09-02');

INSERT INTO GATUNKI (NAZWA, OPIS_GATUNKU)VALUES
  ('Science Fiction', 'Fikcyjne opowie�ci naukowe, cz�sto osadzone w przysz�o�ci lub w innych galaktykach.'),
  ('Romans', 'Historie mi�osne, zazwyczaj skupione na relacjach uczuciowych mi�dzy bohaterami.'),
  ('Fantasy', 'Opowie�ci o magicznych �wiatach, stworzenia fantastyczne i przygody.'),
  ('Krymina�', 'Intrygi kryminalne, �ledztwa i zagadki do rozwi�zania.'),
  ('Dramat', 'Opowie�ci poruszaj�ce emocje, cz�sto z g��bokimi przemy�leniami na temat ludzkiego �ycia.'),
  ('Komedia', 'Lekkie i zabawne historie, zazwyczaj maj�ce na celu rozbawienie czytelnika.'),
  ('Historyczny', 'Opowie�ci osadzone w konkretnym okresie historycznym, cz�sto z elementami fikcji.'),
  ('Przygodowy', 'Pe�ne akcji opowie�ci o odwa�nych bohaterach i niebezpiecznych podr�ach.'),
  ('Horror', 'Historie straszne i przera�aj�ce, cz�sto z elementami nadprzyrodzonymi.'),
  ('Naukowe', 'Ksi��ki prezentuj�ce informacje naukowe w spos�b dost�pny dla szerokiego czytelnika.'),
  ('Biografia', 'Opowie�ci o �yciu prawdziwych ludzi, ich osi�gni�ciach i do�wiadczeniach.'),
  ('Poezja', 'Tw�rczo�� poetycka, cz�sto wyra�aj�ca uczucia i refleksje.'),
  ('Nowela', 'Kr�tka forma literacka, opowiadanie o jednym zdarzeniu lub temacie.'),
  ('Thriller', 'Intryguj�ce historie z napi�ciem i nieoczekiwanymi zwrotami akcji.'),
  ('Science Fantasy', 'Po��czenie element�w fantasy i science fiction.'),
  ('Literatura faktu', 'Rzetelne relacje z wydarze� historycznych lub wsp�czesnych.'),
  ('Romantyczna komedia', '��czy w sobie elementy romansu i komedii.'),
  ('Mistyka', 'Opowie�ci z elementami tajemnicy i nadprzyrodzono�ci.'),
  ('Opowiadanie podr�nicze', 'Historie zwi�zane z podr�ami i odkrywaniem nowych miejsc.'),
  ('Literatura filozoficzna', 'Refleksje filozoficzne przedstawione w formie literackiej.');


INSERT INTO OPINIE (TEKST_OPINII, OCENA, AUTOR, DATA_DODANIA_OPINII, ID_KSIAZKI) VALUES
  ('Fascynuj�ca lektura, polecam!', 5, 'Jan Kowalski', '2022-01-15', 'KSZ001'),
  ('Troch� nu��ca, ale zako�czenie zaskakuje.', 3, 'Anna Nowak', '2021-02-02', 'KSZ002'),
  ('Najlepsza ksi��ka, jak� czyta�em!', 5, 'Marek Nowicki', '2023-03-10', 'KSZ003'),
  ('Bardzo poruszaj�ca historia, �zy w oczach.', 4, 'Zofia Wi�niewska', '2019-04-22', 'KSZ001'),
  ('Nie mog�em si� oderwa�, czyta�em w jeden wiecz�r.', 5, 'Piotr Kowalczyk', '2020-05-08', 'KSZ004'),
  ('�le', 2, 'Patrycja Kowalczyk', '2022-06-17', 'KSZ002'),
  ('Intryguj�ca fabu�a, polecam fanom krymina��w.', 4, 'Adam Malinowski', '2021-07-04', 'KSZ005'),
  ('�wietnie napisane, ale zbyt kr�tka.', 4, 'Aleksandra Majewska', '2018-08-12', 'KSZ012'),
  ('Ciekawa tematyka, ale momentami naci�gane.', 3, 'Wojciech Duda', '2022-09-28', 'KSZ020'),
  ('Wci�gaj�ca opowie��, nie mog�em si� oderwa�.', 5, 'Patrycja Kowalczyk', '2023-10-15', 'KSZ013'),
  ('Niezwykle m�dra i pouczaj�ca ksi��ka.', 5, 'Kamil Kr�l', '2019-11-02', 'KSZ007'),
  ('Sza�owa przygoda, nie mog� si� doczeka� kolejnej cz�ci.', 5, 'Karolina Piotrowska', '2020-12-19', 'KSZ008'),
  ('Wstrz�saj�ca, ale wa�na do przemy�lenia.', 4, 'Rafa� Kaczmarek', '2018-01-07', 'KSZ009'),
  ('Niezbyt przekonuj�ca, trudno uwierzy� w fabu��.', 2, 'Monika Czajka', '2016-02-23', 'KSZ010'),
  ('Czyta�em ju� lepsze, ale nie najgorsze.', 3, 'Mateusz Zaj�c', '2020-03-11', 'KSZ016'),
  ('�wietnie napisane, ale zbyt skomplikowane zako�czenie.', 4, 'Alicja �ukowska', '2021-04-28', 'KSZ015'),
  ('Doskona�a powie��, autentyczne postacie.', 5, 'Marcin Wr�bel', '2022-05-15', 'KSZ002'),
  ('Bardzo wci�gaj�ca, polecam ka�demu.', 5, 'Natalia Lewandowska', '2017-06-02', 'KSZ006'),
  ('Zaskakuj�ce zwroty akcji, trzyma w napi�ciu do ko�ca.', 5, 'Grzegorz Nowak', '2020-07-19', 'KSZ007'),
  ('XD', 1, 'Patrycja Kowalczyk', '2021-08-05', 'KSZ002');

INSERT INTO BESTSELLERY VALUES
  ('BS202301', '2023-01-05'),
  ('BS202302', '2023-02-12'),
  ('BS202303', '2023-03-20'),
  ('BS202304', '2023-04-08'),
  ('BS202305', '2023-05-15'),
  ('BS202306', '2023-06-22'),
  ('BS202307', '2023-07-30'),
  ('BS202308', '2023-08-18'),
  ('BS202309', '2023-09-25'),
  ('BS202310', '2023-10-02'),
  ('BS202311', '2023-11-12'),
  ('BS202312', '2023-12-20'),
  ('BS202313', '2024-01-08'),
  ('BS202314', '2024-02-15'),
  ('BS202315', '2024-03-22'),
  ('BS202316', '2024-04-30'),
  ('BS202317', '2024-05-18'),
  ('BS202318', '2024-06-25'),
  ('BS202319', '2024-07-02'),
  ('BS202320', '2024-08-10');



INSERT INTO CZYTELNICY VALUES
  ('88110604459', 'Jan', 'Kowalski', '123456901', 'jan.kowalski@example.com', 'Mazowieckie', 'Warszawa', 'Aleja Kwiatowa', '12', '00-001'),
  ('63042204166', 'Anna', 'Nowak', '987654309', 'anna.nowak@example.com', 'Ma�opolskie', 'Krak�w', 'ul. S�oneczna', '5', '30-002'),
  ('81100800916', 'Piotr', 'Wi�niewski', '654398765', 'piotr.wisniewski@example.com', 'Wielkopolskie', 'Pozna�', 'ul. Radosna', '8', '60-003'),
  ('64101603238', 'Katarzyna', 'D�browska', '321765432', 'katarzyna.dabrowska@example.com', 'Dolno�l�skie', 'Wroc�aw', 'pl. Zielony', '23', '50-004'),
  ('80090802894', 'Marcin', 'Lis', '789012367', 'marcin.lis@example.com', '��dzkie', '��d�', 'ul. Nowa', '17', '90-005'),
  ('39031504551', 'Magdalena', 'Zaj�c', '012367890', 'magdalena.zajac@example.com', 'Podkarpackie', 'Rzesz�w', 'ul. Kwiatki', '3', '35-006'),
  ('83061009403', 'Adam', 'Kowal', '543218765', 'adam.kowal@example.com', 'Pomorskie', 'Gda�sk', 'ul. Morska', '45', '80-007'),
  ('72091601602', 'Natalia', 'Mazurek', '298765432', 'natalia.mazurek@example.com', 'Opolskie', 'Opole', 'ul. Le�na', '9', '45-008'),
  ('04271607047', 'Wojciech', 'Jaworski', '874321098', 'wojciech.jaworski@example.com', '�l�skie', 'Katowice', 'pl. Rynkowy', '21', '40-009'),
  ('73021308486', 'Ewa', 'Szyma�ska', '432187650', 'ewa.szymanska@example.com', 'Zachodniopomorskie', 'Szczecin', 'ul. B��kitna', '6', '70-010');

INSERT INTO WYPOZYCZENIA VALUES
('WYP001', '2023-01-05', '2023-02-05', NULL, '88110604459', 'KSZ001'),
('WYP002', '2023-02-12', '2023-03-12', '2023-03-02', '63042204166', 'KSZ002'),
('WYP003', '2023-03-20', '2023-04-20', '2023-04-15', '81100800916', 'KSZ003'),
('WYP004', '2023-04-08', '2023-05-08', NULL, '64101603238', 'KSZ004'),
('WYP005', '2023-05-15', '2023-06-15', NULL, '80090802894', 'KSZ005'),
('WYP006', '2020-06-22', '2020-07-22', '2020-07-23', '39031504551', 'KSZ006'),
('WYP007', '2023-07-30', '2023-08-30', '2023-08-25', '88110604459', 'KSZ007'),
('WYP008', '2022-08-18', '2023-09-18', NULL, '72091601602', 'KSZ002'),
('WYP009', '2023-09-25', '2023-10-25', NULL, '04271607047', 'KSZ009'),
('WYP010', '2023-10-02', '2023-11-02', '2023-10-28', '73021308486', 'KSZ010'),
('WYP011', '2023-11-10', '2023-12-10', NULL, '88110604459', 'KSZ011'),
('WYP012', '2021-12-18', '2024-01-12', NULL, '63042204166', 'KSZ012'),
('WYP013', '2020-01-26', '2024-01-12', NULL, '81100800916', 'KSZ013'),
('WYP014', '2019-02-03', '2024-03-03', NULL, '64101603238', 'KSZ014'),
('WYP015', '2020-03-11', '2024-01-12', NULL, '80090802894', 'KSZ015'),
('WYP016', '2019-04-18', '2024-01-09', NULL, '39031504551', 'KSZ016'),
('WYP017', '2020-05-26', '2020-06-26', '2020-06-20', '83061009403', 'KSZ017'),
('WYP018', '2021-06-03', '2021-07-03', '2021-07-04', '72091601602', 'KSZ018'),
('WYP019', '2022-07-11', '2022-08-11', '2022-08-10', '04271607047', 'KSZ019'),
('WYP020', '2022-08-18', '2022-09-18', '2022-09-18', '73021308486', 'KSZ020');

INSERT INTO REZERWACJE VALUES
('RZ001', '2023-01-05', '2023-02-05', 'Aktywna', '88110604459', 'KSZ001'),
('RZ002', '2019-02-12', '2019-03-12', 'Odebrana', '63042204166', 'KSZ002'),
('RZ003', '2023-03-20', '2023-04-20', 'Anulowana', '81100800916', 'KSZ003'),
('RZ004', '2020-04-08', '2020-05-08', 'Nieodebrana w terminie', '64101603238', 'KSZ004'),
('RZ005', '2022-05-15', '2022-06-15', 'W trakcie przetwarzania', '80090802894', 'KSZ005'),
('RZ006', '2023-06-22', '2023-07-22', 'Wstrzymana', '39031504551', 'KSZ006'),
('RZ007', '2023-07-30', '2023-08-30', 'W oczekiwaniu na ksi��k�', '83061009403', 'KSZ007'),
('RZ008', '2023-08-18', '2023-09-18', 'Aktywna', '72091601602', 'KSZ008'),
('RZ009', '2023-09-25', '2023-10-25', 'Odebrana', '04271607047', 'KSZ009'),
('RZ010', '2023-10-02', '2023-11-02', 'Anulowana', '73021308486', 'KSZ010'),
('RZ011', '2023-11-10', '2023-12-10', 'Nieodebrana w terminie', '88110604459', 'KSZ011'),
('RZ012', '2023-12-07', '2024-01-07', 'W trakcie przetwarzania', '63042204166', 'KSZ012'),
('RZ013', '2018-01-26', '2018-02-26', 'Wstrzymana', '81100800916', 'KSZ013'),
('RZ014', '2023-02-03', '2023-03-03', 'W oczekiwaniu na ksi��k�', '64101603238', 'KSZ014'),
('RZ015', '2022-03-11', '2022-04-11', 'Aktywna', '80090802894', 'KSZ015'),
('RZ016', '2020-04-18', '2020-05-18', 'Odebrana', '39031504551', 'KSZ016'),
('RZ017', '2022-05-26', '2022-06-26', 'Anulowana', '83061009403', 'KSZ017'),
('RZ018', '2022-06-03', '2022-07-03', 'Nieodebrana w terminie', '72091601602', 'KSZ018'),
('RZ019', '2021-07-11', '2021-08-11', 'W trakcie przetwarzania', '04271607047', 'KSZ019'),
('RZ020', '2024-08-18', '2024-09-18', 'Wstrzymana', '73021308486', 'KSZ020');

INSERT INTO AUTORZY_KSIAZEK (ID_AUTORA, ID_KSIAZKI)VALUES
  ('AUT001', 'KSZ001'),
  ('AUT002', 'KSZ002'),
  ('AUT003', 'KSZ003'),
  ('AUT004', 'KSZ004'),
  ('AUT005', 'KSZ005'),
  ('AUT006', 'KSZ006'),
  ('AUT007', 'KSZ007'),
  ('AUT008', 'KSZ008'),
  ('AUT009', 'KSZ009'),
  ('AUT010', 'KSZ010'),
  ('AUT011', 'KSZ011'),
  ('AUT011', 'KSZ014'),
  ('AUT012', 'KSZ012'),
  ('AUT013', 'KSZ013'),
  ('AUT014', 'KSZ015'),
  ('AUT015', 'KSZ016'),
  ('AUT016', 'KSZ017'),
  ('AUT017', 'KSZ018'),
  ('AUT018', 'KSZ019'),
  ('AUT019', 'KSZ020'),
  ('AUT020', 'KSZ020');

INSERT INTO GATUNKI_KSIAZEK (NAZWA_GATUNKU, ID_KSIAZKI) VALUES
  ('Romans', 'KSZ001'), ('Dramat', 'KSZ001'),
  ('Historyczny', 'KSZ002'), ('Dramat', 'KSZ002'),
  ('Historyczny', 'KSZ003'), ('Przygodowy', 'KSZ003'),
  ('Romans', 'KSZ004'), ('Dramat', 'KSZ004'),
  ('Romans', 'KSZ005'), ('Dramat', 'KSZ005'),
  ('Komedia', 'KSZ006'), ('Dramat', 'KSZ006'),
  ('Science Fiction', 'KSZ007'), ('Przygodowy', 'KSZ007'),
  ('Romans', 'KSZ008'), ('Dramat', 'KSZ008'),
  ('Biografia', 'KSZ009'), ('Dramat', 'KSZ009'),
  ('Biografia', 'KSZ010'), ('Dramat', 'KSZ010'),
  ('Dramat', 'KSZ011'), ('Historyczny', 'KSZ011'),
  ('Romans', 'KSZ012'), ('Dramat', 'KSZ012'),
  ('Science Fiction', 'KSZ013'), ('Przygodowy', 'KSZ013'),
  ('Horror', 'KSZ014'), ('Dramat', 'KSZ014'),
  ('Science Fiction', 'KSZ015'), ('Przygodowy', 'KSZ015'),
  ('Dramat', 'KSZ016'), ('Przygodowy', 'KSZ016'),
  ('Przygodowy', 'KSZ017'), ('Dramat', 'KSZ017'),
  ('Poezja', 'KSZ018'),
  ('Nowela', 'KSZ019'),
  ('Science Fiction', 'KSZ020'), ('Przygodowy', 'KSZ020');


  INSERT INTO KSIAZKI_NA_LISCIE_BESTSELLEROW(ID_KSIAZKI, ID_LISTY_BESTSELLEROW)VALUES
  ('KSZ001', 'BS202301'),
  ('KSZ002', 'BS202302'),
  ('KSZ003', 'BS202303'),
  ('KSZ004', 'BS202304'),
  ('KSZ005', 'BS202305'),
  ('KSZ006', 'BS202306'),
  ('KSZ007', 'BS202307'),
  ('KSZ008', 'BS202308'),
  ('KSZ009', 'BS202309'),
  ('KSZ010', 'BS202310'),
  ('KSZ011', 'BS202301'),
  ('KSZ012', 'BS202302'),
  ('KSZ013', 'BS202303'),
  ('KSZ014', 'BS202304'),
  ('KSZ015', 'BS202305'),
  ('KSZ016', 'BS202306'),
  ('KSZ017', 'BS202307'),
  ('KSZ018', 'BS202308'),
  ('KSZ019', 'BS202309'),
  ('KSZ020', 'BS202310');
  