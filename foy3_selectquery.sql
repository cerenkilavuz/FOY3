-- “Yazılım” veya “Donanım” birimlerinde çalışanların ad, soyad ve maaş bilgilerini listeleyen SQL sorgusu
select ad, soyad, maas from calisanlar where calisan_birim_id  in(1 , 2);   -- 1. Yol

select ad, soyad, maas from calisanlar A inner join birimler B on A.calisan_birim_id = B.birim_id where birim_ad in('Yazılım' , 'Donanım'); -- 2. Yol

-- Maaşı en yüksek olan çalışanların ad, soyad ve maaş bilgilerini listeleyen SQL sorgusu
select ad, soyad, maas from calisanlar where maas = (select max(maas) from calisanlar);

-- Birimlerin her birinde kaç adet çalışan olduğunu ve birimlerin isimlerini listeleyen sorgu
select birim_ad, count(calisan_birim_id) from birimler A inner join calisanlar B on A.birim_id = B.calisan_birim_id 
group by birim_ad;

-- Birden fazla çalışana ait olan unvanların isimlerini ve o unvan altında çalışanların sayısını listeleyen sorgu
select unvan_calisan, count(unvan_calisan) AS calisan_sayısı 
from unvan A inner join calisanlar B on A.unvan_calisan_id = B.calisan_id 
group by unvan_calisan having count(calisan_id) > 1;

-- Maaşları “50000” ve “100000” arasında değişen çalışanların ad, soyad ve maaş bilgilerini listeleyen sorgu
select ad, soyad, maas from calisanlar where maas between 50000 and 100000;

-- İkramiye hakkına sahip çalışanlara ait ad, soyad, birim, unvan ve ikramiye ücreti bilgilerini listeleyen sorgu
select ad, soyad, birim_ad, unvan_calisan, ikramiye_ucret 
from calisanlar C inner join birimler B on C.calisan_birim_id = B.birim_id 
inner join unvan U on C.calisan_id = U.unvan_calisan_id 
inner join ikramiye I on C.calisan_id = I.ikramiye_calisan_id;  -- 1. Yol

select ad, soyad, birim_ad, unvan_calisan ,sum(ikramiye_ucret) as ikramiye 
from calisanlar C inner join birimler B on C.calisan_birim_id = B.birim_id 
inner join unvan U on C.calisan_id = U.unvan_calisan_id 
inner join ikramiye I on C.calisan_id = I.ikramiye_calisan_id 
group by ad, soyad, maas ,birim_ad, unvan_calisan;   -- 2. Yol

-- Ünvanı “Yönetici” ve “Müdür” olan çalışanların ad, soyad ve unvanlarını listeleyen sorgu
select ad, soyad, unvan_calisan from calisanlar C inner join unvan U on C.calisan_id = U.unvan_calisan_id
where unvan_calisan in('Yönetici', 'Müdür');

-- Her bir birimde en yüksek maaş alan çalışanların ad, soyad ve maaş bilgilerini listeleyen sorgu
select ad, soyad, maas from calisanlar where maas in(select max(maas) from calisanlar group by calisan_birim_id);




