Select * from Products

Select * from Products WHERE CategoryID = 4

Select * from Products WHERE UnitsInStock >=10

Select p.ProductName, p.UnitsInStock, p.ProductID from Products p WHERE UnitsInStock<30 and ProductID < 20 

/* Or veya not satırları*/

Select * from Products where UnitsInStock = 0 or UnitsOnOrder = 0

Select * from Products where not ProductName = 'Chai' and CategoryID = 1

/* order by */

Select * from Products order by UnitPrice asc /* en tabandan en tavana */

Select * from Products order by UnitPrice desc /*En yüksekten en düşüğe */

Select * from Products order by ProductName /* A-Z sıralama */

Select * from Products order by ProductName desc /* Z-A sıralama */

Select * from Products order by UnitPrice asc, ProductName desc /* Fiyatı en azdan en çoka ve fiyatı aynı olan ürünlerin sıralaması Z-A'ya doğru */

/*asc - sayıları en düşüğünden başlatır en yükseğe doğru gider harfleri A'dan başlar Z'de biter. */

/*desc - sayıları en büyüğünden başlatır en küçüğe doğru gider harfleri Z'den başlar A'da biter. */

/*Like komutu */

/*Bir nevi arama motoru gibi düşünebiliriz bu like komutunda aranacak kelime tam anlamıyla hatırlanmadığında içerisinde geçen kelimeleri bize dokuman olarak verir */

Select * from Products where ProductName like 'ch%' /*ch ile başlasın kelimenin sonu ne olursa olsun */

Select * from Products where ProductName like '%ch' /*ch ile bitsin kelimenin başı ne olursa olsun */

Select * from Products where ProductName like '%ch%' /*kelimenin içinde ch bulunsun kelimenin başı ve sonu ne olursa olsun */

/*Between komutu filtreleme komutlarından bir tanesidir. Girilen değer aralığında arama yapılır*/

Select * from Products where UnitPrice between 25 and 97 order by UnitPrice /* 25 ve 97 dahil olmak üzere aralığında fiyatları küçükten büyüğe doğru listele */

Select * from Products where UnitsInStock between 0 and 100 order by UnitsInStock /*stok adeti 0 veya 100 arasında olan ürünleri listele ve küçükten büyüğe doğru sırala */

/*in komutu, between gibi bir aralıktan ziyade iki inputu aratır */

Select * from Products where CategoryID in (1,2) /*kategori ID'si 1 veya 2 olan ürünleri listele */

Select * from Products where ProductName in ('Chai', 'Chang') /*chai ve chang ürünlerini listele */
