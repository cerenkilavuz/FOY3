insert into birimler (birim_ad)
values
('Yazılım'),
('Donanım'),
('Güvenlik');

insert into calisanlar (ad, soyad, maas, katılmaTarihi, calisan_birim_id)
values
('İsmail', 'İşeri', 100000, '2014-02-20', 1),
('Hami', 'Satılmış', 80000, '2014-06-11', 1),
('Durmuş', 'Şahin', 300000, '2014-02-20', 2),
('Kağan', 'Yazar', 500000, '2014-02-20', 3),
('Meryem', 'Soysaldı', 500000, '2014-06-11', 3),
('Duygu', 'Akşehir', 200000, '2014-06-11', 2),
('Kübra', 'Seyhan', 75000, '2014-01-20', 1),
('Gülcan', 'Yıldız', 90000, '2014-04-11', 3);

insert into ikramiye (ikramiye_calisan_id, ikramiye_ucret, ikramiye_tarih)
values
(1, 5000, '2016-02-20'),
(2, 3000, '2016-06-11'),
(3, 4000, '2016-02-20'),
(1, 4500, '2016-02-20'),
(2, 3500, '2016-06-11');

insert into unvan (unvan_calisan_id, unvan_calisan, unvan_tarih)
values 
(1, 'Yönetici', '2016-02-20'),
(2, 'Personel', '2016-06-11'),
(8, 'Personel', '2016-06-11'),
(5, 'Müdür', '2016-06-11'),
(4, 'Yönetici Yardımcısı', '2016-06-11'),
(7, 'Personel', '2016-06-11'),
(6, 'Takım Lideri', '2016-06-11'),
(3, 'Takım Lideri', '2016-06-11');