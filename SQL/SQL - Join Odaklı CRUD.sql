aSelect * from CustomerWork /*önceden CustomerWork adında bir tablo oluşturdum ve gösterdim */

-- JOİN Odaklı insert uptade delete

-- İnsert methodu 

-- Mevcut bulunan bir tabloda bazı kolonların başka bir tabloya komple taşıma işlemi yapmamız gerekebilir.
-- örnek olarak kendi veri girişlerimizi excel'e aktarmak gibi düşünebiliriz.

-- Böyle bir durumda öncelikle aktaracağımız yere göre bir tablo oluşturup o kolonların özellikleriyle,
-- aktardığımız tablonun özellikleri birebir aynı olması gerekir 

/*örneğin: Customers Tablosundaki CustomerID hem primary key ve nvarchar(5) özelliğine sahiptir. 
yeni açılan CustomerWork tablosundaki CustomerID kolonu hem primary key hem de nvarchar(5) olması gerekir. */

insert into CustomerWork (CustomerID,CompanyName,ContactName) /*yine klasik insert into ekledik.*/
Select CustomerID,CompanyName,ContactName from Customers

-- Çıktı: 91 rows affected 

Select * from CustomerWork /*değişikliği görüntüledik*/

-- burada anlatılan şey: CustomerWork tablosunda bulunan CustomerID,CompanyName,ContactName kolonlarına
-- diğer Customers tablosunda bulunan CustomerID,CompanyName,ContactName özelliklerini CustomerWork'e aktar.

delete from CustomerWork /*ilişkisel bir bağlantı olmadığı için silinebilir */

-- verileri olduğu gibi aktarmak yerine belirli bir şartı sağlayarak aktarmak da mümkündür.
-- bunun için where koşulu kullanarak yaptırım olanak sağlar.

insert into CustomerWork (CustomerID,CompanyName,ContactName)
select CustomerID, CompanyName,ContactName from Customers
where ContactName like '%en%' /*contact name kolonunun içinde 'en' geçsin. */

-- Çıktı: 17 rows affected 

Select * from CustomerWork

-- burada yapılmak istenen ise verileri ContactName içerisinde 'en' kelimesi geçen verileri CustomerWork tablosuna aktarır 

-- kısaca bazı verileri filtreleyip bu şekilde aktarmak mümkündür.

-- Update işlemleri

-- Büyük tablolarda oluşan hatalı kayıtları başka bir tabloya çekip orada düzeltip tekrar olduğu yere gönderdiğimiz bir senaryo hayal edelim
-- Bu tablolarda bu şekilde çalışılmasının asıl mantığı düzeltme esnasında çalıştığımız veritabanı tablosunun çok büyük olması ve bu işin çok 
-- zahmetli olacağının bilinmesinden ötürüdür.

-- Bunun yerine bizler Büyük tablolarda hata bulunan kolonların satırlarını başka bir tabloya aktarırız.
-- ve düzeltme yapılarak tekrar aynı bulunduğu veritabanını tablosuna gönderebiliriz.

-- öncelikle customers tablosunda bulunan hatalı kayıtları customerWork tablosuna attım.
-- ve sonrasında customerwork kısmında çalıştım ve hatalı kayıtları düzeltip tekrardan birleştirme işlemine geldim.

update Customers set CompanyName = CustomerWork.CompanyName /*Customers tablosundaki CompanyName kolonundaki kayıtları CustomerWork 'de bulunan companyName kolonuyla güncelle */
from 
Customers inner join CustomerWork /* tabi öncelikle tabloları birleştirmem gerekir */
on Customers.CustomerID = CustomerWork.CustomerID /*satırları birbirinden ayıran tek şey ID'lerdir */
where CustomerWork.CompanyName like '%TEST%' /*düzenlenen kayıtlara önceden test yazıldı. ve içerisinde test yazanları güncelle denildi */


Select * from Customers /*ve değişiklikleri görüntüledim. */

-- DELETE Sorgusu

-- update ile benzerlik gösterir nitekim şu şekilde çalışır.

delete Customers /*hangi tablodan silinecek*/
from /*nereden?*/
Customers inner join CustomerWork /* birleştirir. */
on Customers.CustomerID = CustomerWork.CustomerID /*özelleştirdik*/
where Customers.CompanyName like '%Test%' /*içinde test geçen kayıtları siler sadece*/

/*nitekim şuanda silme işlemi yapamaz çünkü diğer tablolarla arasında bir ilişkisel bağlantı söz konusudur. */

-- UNION ile Çalışmak 

--Union operatörü, iki sorgunun alt alta çalışmasına olanak sağlar.

Select * from Customers /*bu iki sorgunun birleşimi unionla mümkündür*/
Select * from CustomerWork /*bu iki sorgunun birleşimi unionla mümkündür*/

/* bu tip iki sorgunun belirli kurallar çercevesinde birleştirerek tek bir tablo halinde çıktı almamıza olanak sağlayan yapı uniondur */

-- peki union nasıl çalışır 

Select * from Customers
union
Select * from CustomerWork

/*yukarıdaki sorguyu çalıştırırsak hata alırız çünkü Customers tablosunda 8 farklı kolon varken,
CustomerWork'te 3 farklı kolon vardır */

-- nitekim buradan çıkarılacak birinci ders (alt alta gelecek iki tablonun kolon isimleri ve sayıları aynı olmalıdır! )

-- bunu şu şekilde önleyebiliriz.

Select CustomerID,CompanyName,ContactName from Customers
union
Select * from CustomerWork

-- union'un bir diğer özelliği ise aynı verileri sadece bir kere yazar.

Select CustomerID,CompanyName,ContactName from Customers 
Select * from CustomerWork /*bu iki sorgunun birleşimi toplam 108 satır oluşturur*/

Select CustomerID,CompanyName,ContactName from Customers
union
Select * from CustomerWork /*bu iki ifade 96 satır oluşturur*/

-- çünkü tekrarlanan verileri bu birleştirilen tablo içerisine almaz.

-- peki hepsini alma özelliği var mıdır dersek evet vardır o da union'dan sonra gelecek all ifadesine bağlıdır.

Select CustomerID,CompanyName,ContactName from Customers 
union all /* bu ifade tekrardan 108 kayıt oluşturduğu gösterir. */
Select * from CustomerWork

-- diğer bir kural ise iki farklı tablonun kolonlarının türleri aynı olmalıdır.
-- Örneğin bambaşka bir veritabanı düşünürsek burada şehirler kolonunda bir tabloda 'Ankara' yazıyorsa 
-- diğer tablonun şehir kolonunda '06' yazıyorsa burada hata almış oluruz.

-- Kısaca union belirli şartlar doğrultusunda iki farklı sorgunun aynı tabloda birleştirmesine olanak sağlar.
