-- SQL Veritabanında değişiklik yapan sorgular - I

-- insert, uptade, delete 

-- insert, var olan veritabanına kolonlar girilerek yeni kayıtlar oluşturur.

-- uptade, şarta uyan veritabanındaki kayıtları güncellemek için kullanılır.

-- delete, şarta uyan veritabanındaki kayıtları silmek için kullanılır.

-- INSERT KOMUTU

/* insert komutu belirtilecek veritabanında yine aynı şekilde belirtilen kolonlara ekleme yapılır */

insert into Categories (CategoryName,Description) /* Categories içerisinde bulunan 'CategoryName' ve 'Description' kolonlarına*/
values ('Test Name','Test Category Description') /* values'ten sonra gelecek verileri ekler */

insert into Categories (CategoryName,Description)
values ('Test Name 2','Test Category 2 Description')

insert into Categories (CategoryName,Description)
values ('Test Name 3','Test Category 3 Description')

insert into Categories (CategoryName,Description)
values ('Test Name 5','Test Category 5 Description')

insert into Categories (CategoryName,Description)
values ('Test Name 5','Test Category 5 Description') /*bu şekilde istediğimiz kadar veri ekleyebiliriz*/

Select * from Categories /*ekleme olduğunu doğruladık */

/*Çıktı -->  1 row affected yani başarılı oldu anlamına gelir. */

-- Burada önemli olan nokta şudur. Ekleme yapılacak olan kolonların artanlı(identity) değerli olmaması gerekir. Çünkü o otomatik olarak ekleme yapılır. 

-- Diğer bir örnek ise eğer ki bir tabloda bütün kolonlara ekleme yapılırsa teker teker kolon ismi yazılmasına gerek yoktur.

insert into [Order Details] values (10248,12,14,10) /*bu kod hata alır çünkü order details'te 5 kolon vardır biz values'ten sonra 4 veri girişi yaptık */

-- şu şekilde düzeltirsek

insert into [Order Details] values (10248,12,14,10,0) /*bu kod çalışır nitekim order details'te 5 kolon vardır biz values'ten sonra 5 veri girişi yaptık. */

/*Çıktı -->  1 row affected */

-- Kısaca doğru sayıda veri girişi yapılırsa bu şekilde yapılmış sorguda çalışır. 

-- UPDATE KOMUTU 

-- update komutu belirli bir şarta göre veritabanındaki kolonları güncellemeye yarayan bir sorgudur.
-- Ha keza oldukça tehlikeli bir sorgudur çünkü yapılacak bir yanlış hamle bütün veriyi değiştirebilir.
-- bu yüzden dolayı kullanacağımız zaman mutlaka where koşulunu yazmamız gerekir.

-- update sorgusu temel anlamda şu şekilde oluşturulur.

Update Categories set CategoryName = 'Category Update 1'
where CategoryID = 10

-- Burada yapılmak istenen, Categories tablosundaki CategoryID'si 10 olan satırın CategoryName kolonuna 'Category Uptade 1' yazarak güncelle.

Select * from Categories

-- update sorgusu oldukça tehlikeli bir sorgudur. çünkü yapılabilecek bir hata geri dönülemeyen işlere yol açar.

-- örneğin where koşulu kullanmadan sorgumuza bi bakalım 

Update Territories set TerritoryDescription = 'İç Anadolu' 

/*bu sorgu çalışırsa territories tablosundaki bütün Description'lara 'İç Anadolu' yazar.*/

Select * from Territories /*örneği çalıştırarak görüntüledik */

-- o yüzden dolayı kullanırken dikkat edilmesi gerekir.

-- Birden fazla kolonda çalışmak da mümkündür.

update Categories set CategoryName = 'test2', Description='test Description 2' /*virgül koyarak istediğimiz kadar kolon değiştirebiliriz.*/
where CategoryID = 10

/*10 numaralı categoryid'ye sahip kolonun categoryname ve description alanlarını değiştirerek sırasıyla 'test2' ve 'test Description 2' yazdırdı */

Select * from Categories /*değişikliği görüntüledik*/

-- birden fazla kolonla çalışmak mümkün. birden fazla satırla çalışmak da mümkündür.

update Categories set CategoryName = 'test two', Description = 'test Description two'
where CategoryID >=10 

/* id'si 10'a eşit ve 10'dan büyük satırların name ve description kolonlarına belirtilen ifadeleri yazdırdı. */

-- diğer bir yöntem ise şudur:

Select * from Categories /* değişikliği görüntüledik */

update Categories set CategoryName = 'test ', Description = 'test description ' 
where CategoryID = 10 or CategoryId = 11

/*id'si 10 ve 11 olan satırların name ve description kolonlarını değiştir */

Select * from Categories /* değişikliği görüntüledik */

-- pekiştirme sorusu 
-- yukarıda oluşturduğumuz territories tablosunu kendi bölgelerimize göre işaretleyelim

-- örneğin 1 numara iç anadolu, 2 numara marmara, 3 numara ege, 4 numara da akdeniz olarak güncelleyelim. 

Select * from Territories 

update Territories set TerritoryDescription = 'İç Anadolu'
where RegionID = 1

update Territories set TerritoryDescription = 'Marmara'
where RegionID = 2

update Territories set TerritoryDescription = 'Ege'
where RegionID = 3

update Territories set TerritoryDescription = 'Akdeniz'
where RegionID = 4

Select * from Territories /*etkinliğimiz başarılı bir şekilde gerçekleşti */

-- DELETE SORGUSU 

-- Update sorgusu gibi delete sorgusu da belirtilen satırlardaki kolonlardaki verileri siler.
-- oldukça tehlikeli bir sorgu olduğundan bahsedebiliriz.

delete from Categories where CategoryID = 15

/*id'si 15 olan satırı sildi */

Select * from Categories /*işlem başarılı oldu */

-- dediğimiz gibi tehlikeli bir sorgudur örneğin

 -- delete from Categories 

/* sorgusunu çalıştırırsak diğer tablolarla arasında ilişkisel bir bağlantı yoksa gözünün yaşına bakmaz tabloyu komple siler*/

-- where'den sonra başka türlü sorgular yazmak da mümkündür.

delete from Categories where CategoryID >= 12

/* id'si 12'ye eşit ve 12'den büyük satırları sildi */

Select * from Categories /*işlemi görüntüledik */

-- başka bir örnek olarak 

delete from Categories where CategoryID = 10 or CategoryID = 11

/* id'si 10 ve 11 olan satırları sildi */

Select * from Categories /*işlemi görüntüledik */
