-- Joinler ile çalışmak 

-- Joinler kelime anlamıyla bir araya getirmek, tek bir çatı altında toplamak anlamına gelir.
-- İki farklı tabloda şarta bağlı olarak benzer verileri tek bir çatı altında toplar.

-- inner join 

/* inner joinler belirli bir şarta bağlı kalarak, şartların aynı olduğu iki tablo arasındaki verileri bir araya getirmeye olanak sağlar.*/

Select * from Products inner join Categories on Products.CategoryID = Categories.CategoryID /*on ifadesinden sonraki gelenler şart cümlesidir.*/

-- öncelikle Products ve Categories tabloları arasında benzerlik gösteren categoryId'leri bir araya getirdil
-- burada on ifadesi inner joinin hangi şarta bağlı olarak ikisi arasında benzerlik kuracağını anlatır. 

/*
ProductId		ProductName		CategoryId		//CategoryName	CategoryId
1				Kola				4			//Soğuk				4
2				Ayran				5			//Süt Ürünü			5
3				Çay					6			//Sıcak				6

// ifadesinden sonra başka bir tablodur ve categoryId'si aynı olan ifadeleri bir araya getirir Aynı olmayan yani eşleşme olmayan ifadeleri yeni oluşturulack tablo içerisine eklemez
*/

/*İnner joinlerde where koşulu kullanılabilir */

Select * from Products inner join Categories on Products.CategoryID = Categories.CategoryID 
where Products.UnitPrice > 20 

/*iki tabloyu yine Idleri benzerlik gösterenleri bir araya getirdi ama Products'ın fiyatının 20'den aşağı olanları listeye dahil etmedi */

/*İnner joinlerde order by ile sıralama yapılabilir*/

Select * from Products inner join Categories on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice > 20 
order by Products.CategoryID desc

/*Category ID'sini büyükten küçüğe doğru sıralar eğer desc'yi silip asc yazarsak küçükten büyüğe doğru sıralama yapar. */

/*inner joinlerde sıklıkla Alliance kullanılır bu şekilde yazım daha efektif ve hızlıdır. */

Select * from Products p inner join Categories c on p.CategoryID = c.CategoryID
where p.UnitPrice > 20
order by p.CategoryID desc

/*bu şekilde harflendirme yapılarak yukarıdaki sorgunun kısaltılmış hali yazılmış olur. İkisi aynı sorgudur biri alliance(aşağıdaki) diğeri normal yazımdır ama aynı sonuçları döndürür. */

-- örnekle üç tablo arasında bir bağlantı kurmak isteyelim

-- Hangi üründen bugüne kadar kaç tane sipariş aldık ürünün adını, tarihini ve yapacağımız işlemle ne kadar kazandığımızı gösteren bir tablo oluşturalım

--Öncelikle bir veritabanı incelemesi yaparsak ürünün adını Products tablosunda bulabiliriz. Sipariş tarihlerini order tablosunda bulabiliriz son olarak kazandığımız tutarı ise Order Details tablosundan bir işlem yaparak elde edebiliriz.

--Şimdi yavaştan sorgumuzu hazırlayalım bildiğimiz üzere inner joinlerde tablolar arasında benzer özelliğe sahip olan ifadeleri bir araya getirebiliriz
--gerekli veritabanlarını incelediğimizde order ile Products arasında bir bağlantı yoktur o nedenle

/*Select * from Products p inner join Orders o*/ /*gibi bir sorguyu oluşturamayız çünkü aralarında benzerlik gösteren bir kolon yoktur. */

--peki ne yapmalıyız Products ile Order Details tablolarını incelediğimizde ProductId kolonlarının benzerlik gösterdiğini görebiliriz.

-- bu yüzden buradan ilerleyelim 

Select * from Products p inner join [Order Details] od on p.ProductID = od.ProductID /*bu şekilde iki kolonu birleştirdik*/

-- şimdi diğer kolonu eklemek istersek yine bir benzerlik bağı kurmalıyız bu benzerlik ise order details tablosuyla order tablosu arasında OrderId bağlantısı olduğunu görürüz

-- Bu orderId bağlantısını da kullanarak şöyle bir sonuç elde ederiz

Select * from Products p inner join [Order Details] od on p.ProductID = od.ProductID inner join Orders o on o.OrderID = od.OrderID /*bu şekilde bağlantı kurarak istediğimiz kadar joinler atabiliriz. */

--Şimdi sorumuza geri dönelim 

-- Hangi üründen bugüne kadar kaç tane sipariş aldık ürünün adını, tarihini ve yapacağımız işlemle ne kadar kazandığımızı gösteren bir tablo oluşturalım

Select p.ProductName, o.OrderDate, od.Quantity * od.UnitPrice as Total from Products p inner join [Order Details] od on p.ProductID = od.ProductID inner join Orders o on o.OrderID = od.OrderID 

-- bu şekilde bir işlem haline getiririz. 

-- sıralama gibi özellikleri de eklemek yine söz konusudur.

Select p.ProductName, o.OrderDate, od.Quantity * od.UnitPrice as Total from Products p inner join [Order Details] od on p.ProductID = od.ProductID 
inner join Orders o on o.OrderID = od.OrderID order by p.ProductName, Total desc

-- bu şekilde hem ada göre hemde toplam tutarın fazlalığına göre sıralama işlemi yapılır

-- kısaca biz istediğimiz kadar join atabiliriz ama tek faktör join atacağımız 2 tablonun arasında bir benzerlik kolonunun bulunması eğer benzerlik bulunuyorsa diğer kolonlarla birleştirir
-- tekrardan joinleme işlemi yapabiliriz


--LEFT JOİN 

-- bildiğimiz üzere inner join arasında benzerlik gösteren iki tablonun arasında birleştirme yaparak bu şekilde gösterim sağlıyordu ve benzerlik bulunmayan ifadeleri tabloya eklemiyordu.

-- left join ise bu tabloda eşleşmeyen ifadeleri de yazmaya olanak sağlayan bir yapı olarak karşımıza çıkar

-- örnek bir soru özelinde anlatacak olursak biz sipariş aldığımız veya alamadığımız var olan ürünlerin tamamını listeleyelim

Select * from Products p left join [Order Details] od 
on p.ProductID = od.ProductID /*2155 adet ürün satmaktayız */

-- satamadığımız ürünleri nasıl listeleriz 

Select * from Products p left join [Order Details] od
on p.ProductID = od.ProductID
where p.ProductID is null /*burada id'si olmayan veriyi bize listele diyoruz*/
/*ve sonuç olarak bu kodu çalıştırdığımızda ürünlerin hepsini sattığımız anlamına gelir */

-- Başka bir soru özelinde anlatalım

-- Müşterilerde kaydı bulunan ama sipariş vermemiş müşterileri de listeye ekleyerek kim olduklarını öğrenelim

Select * from Customers c left join Orders o /*left yerine inner yazılırsa kayıt sayısı 830, left olarak kalırsa kayıt sayısı 832 */
on c.CustomerID = o.CustomerID /*bu satıra kadar ürün almış veya almamış bütün Müşterileri listeler*/
where o.CustomerID is null /*burada ise kayıtlarda olan ama ürün almamış verileri listeler */

/*is null ifadesi birinde kaydı olup diğerinde olmayan kısımların ne olduğunu gösterir 

left ifadesinin özeti şudur: 

Customers c left join Orders o 

soldaki tabloda yani c'de kaydın olup, sağdaki tabloda yani o'da kaydın olup olmamasına bakılmaksızın bize listele yani tamamını listele

is null ise kaydın olmadığı yani eşleşmediği verileri bize filtreler.

*/

-- RIGHT JOIN 

-- right join, left joinin tam tersidir. yani sağdaki tabloda olup soldaki tabloda kaydın olup olmamasına bakılmaksızın
-- hepsini bize listele anlamına gelir.

Select * from Orders o right join Customers c 
on o.CustomerID = c.CustomerID 
where o.CustomerID is null

/*is null ifadesi birinde kaydı olup diğerinde olmayan kısımların ne olduğunu gösterir 

right ifadesinin özeti şudur: 

 Orders o right join Customers c 
sağdaki tabloda yani o'da kaydın olup, soldaki tabloda yani c'de kaydın olup olmamasına bakılmaksızın bize listele yani tamamını listele

is null ise kaydın olmadığı yani eşleşmediği verileri bize filtreler.

*/

/*raporun biraz temiz gözükmesi için şöyle bir ufak dokunuş yapalım */

Select c.ContactName,c.CustomerID from Orders o right join Customers c
on o.CustomerID = c.CustomerID
where o.CustomerID is null 

/* burada temel anlamda yapılan şey, iletişim adı ve müşteri kodunu raporda daha temiz halde gösterebilmektir */

-- Full join

-- Right join, left join, inner join'in tamamını kapsayan bir join çeşitidir.

Select * from Orders o full join Customers c /*inner: 832 kayıt, right:832 kayıt, left: 830 kayıt, full: 832 kayıt oluşturur  */
on o.CustomerID = c.CustomerID
