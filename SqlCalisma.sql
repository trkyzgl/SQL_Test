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
select * from Atlar -- eklediğimiz atları çektik
UPDATE Atlar SET yas = ABS(CAST(CAST(NEWID() AS VARBINARY) AS INT)) % 10 + 1 -- atların yaşlarını rastgele 1-10 arası güncelledik

select * from Atlar order by name, turu, yas


---------------------------------------------
create table Kediler (
	id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100),
    turu NVARCHAR(100),
    yas int,
	Aciklama nvarchar(max)
);


INSERT INTO Kediler (name, turu, yas, Aciklama)
VALUES ('Lily', 'Tabby', 3, 'Sakin ve sevimli bir kedi.'); -- bir veri ekledik 

INSERT INTO Kediler (name, turu, yas, Aciklama)
VALUES 
('Mia', 'Persian', 4, 'Uzun tüylü, zarif bir kedi.'),
('Max', 'British Shorthair', 2, 'Oyuncu ve sevimli bir kedicik.'),
('Casper', 'Scottish Fold', 5, 'Kulakları katlanmış, tatlı bir kedi.'),
('Luna', 'Siamese', 3, 'Göz alıcı bir kedi, enerjik ve oyunbaz.'),
('Oscar', 'Maine Coon', 6, 'Büyük ve dost canlısı bir kedi.'),
('Simba', 'Persian', 1, 'Uyumayı seven, sevimli bir kedicik.'),
('Tom', 'Sphynx', 2, 'Tüysüz ve sevimli bir kedi.'),
('Sasha', 'Bengal', 3, 'Canlı ve hareketli bir kedi.'),
('Tigger', 'Ragdoll', 4, 'Nazik ve sevecen, oyuncu bir kedi.'),
('Whiskers', 'Russian Blue', 5, 'Mavi tüylü, sessiz bir kedi.'); -- 10 tane daha ekledik 

select * from kediler

-- Atlar tablosunda "turu" sütununu "cins" olarak değiştirme
EXEC sp_rename 'Atlar.turu', 'cins', 'COLUMN';

-- Kediler tablosunda "turu" sütununu "cins" olarak değiştirme
EXEC sp_rename 'Kediler.turu', 'cins', 'COLUMN';

-- Atlar tablosuna "turu" sütununu ekleme
ALTER TABLE Atlar
ADD turu NVARCHAR(100);

-- Kediler tablosuna "turu" sütununu ekleme
ALTER TABLE Kediler
ADD turu NVARCHAR(100);

--Atlarını ve kedilerin Türünü ayarlama

UPDATE Atlar SET turu = 'at' -- atların yaşlarını rastgele 1-10 arası güncelledik
UPDATE kediler SET turu = 'kedi' -- atların yaşlarını rastgele 1-10 arası güncelledik
