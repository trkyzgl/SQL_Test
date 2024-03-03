CREATE DATABASE HAYVANLAR; /* Hayvanlar alemini üzerinde çalışma yapabileceğimiz bir veritabanı oluşturduk*/

use HAYVANLAR;

CREATE TABLE Atlar (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100),
    turu NVARCHAR(100),
    yas int,
	Aciklama nvarchar(max)
);   /*Atlar isminde bir tablo ekledik.*/ 

INSERT INTO Atlar (name, turu, yas, Aciklama) VALUES ('Şahbatur', 'Arabian', 5, 'Güzel ve hızlı bir at.'); -- Bir veri ekledik
INSERT INTO Atlar (name, turu, yas, Aciklama)VALUES ('Kısrak', 'Arabian', 6, 'Eşekler gibi');
INSERT INTO Atlar (name, turu, yas, Aciklama)VALUES ('Aygır', 'Draught Horse', 10, 'Taşıyıcı, yük taşıyan');
INSERT INTO Atlar (name, turu, yas, Aciklama)VALUES ('Pony', 'Shetland', 4, 'küçük sevimli at');
INSERT INTO Atlar (name, turu, yas, Aciklama)VALUES ('Yarış atı', 'Thoroughbred', 5, 'Yarış için üretilen at');
INSERT INTO Atlar (name, turu, yas, Aciklama)VALUES ('Koşum atı', 'Paso Fino', 7, 'Yük taşıma amacıyla üretilen at');
INSERT INTO Atlar (name, turu, yas, Aciklama)VALUES ('Lipizzaner', 'Lipizzan', 9, 'Gösteri atı');
INSERT INTO Atlar (name, turu, yas, Aciklama)VALUES ('Percheron', 'Percheron', 11, 'Tarım atı');
INSERT INTO Atlar (name, turu, yas, Aciklama)VALUES ('Clydesdale', 'Clydesdale', 8, 'Taşıyıcı at');
INSERT INTO Atlar (name, turu, yas, Aciklama)VALUES ('Araber', 'Arabian', 12, 'Dayanıklı yarış atı');
INSERT INTO Atlar (name, turu, yas, Aciklama)VALUES ('Belgian', 'Belgian', 6, 'Tarlada kullanılan at');
-- ve 10 vedi daha 