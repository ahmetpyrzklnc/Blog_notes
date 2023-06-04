-- String Fonksiyonlarıyla Çalışmak

-- Birden fazla string fonksiyonları vardır ama birkaç tanesini öğrensek bizim için yeterlidir.

-- LEFT() Bu fonksiyon 2 farklı parametre alır ilk parametre stringdir ikincisi integerdir. 
-- girilen datanın solundan başlayarak sonrasında girilen sayı kadar kelime seçer


Select LEFT('Ahmet Kılınç', 5) /* Ahmet */

Select LEFT(ProductName,3) as SoldanKisaltma from Products /*Product Tablosunda bulunan productname kolonun solundan başlayarak üç harf seçer ve SoldanKısaltma Kolonu adı altında bu çıktıyı yazar */

--RIGHT() Bu fonksiyon leftle benzerlik gösterir sadece sağdan seçim yapar 

Select RIGHT('Ahmet Kılınç',6) /* Kılınç */

Select RIGHT(ProductName,4) as SagdanKisaltma from Products /*Product Tablosunda bulunan productname kolonun sağından başlayarak dört harf seçer ve SagdanKisaltma Kolonu adı altında bu çıktıyı yazar */

-- LEN() Bu fonksiyon girilen parametrenin uzunluğu verir

Select LEN('Ahmet') /* 5 */

Select ProductName, LEN(ProductName) as Uzunluk  from Products /*Product Tablosunda bulunan ProductName Kolonun içindeki komponentlerin harflerini sayar ve Uzunluk ismini verdiğimiz kolona yazar */

-- LOWER() -- parametreyle alınan bütün yazıları küçük harfli yazar

Select LOWER('AhMEt kIlINç') /* ahmet kılınç */

Select ProductName, LOWER(ProductName) as lowerFunction from Products /*önce ilk halini yazdırdı sonra küçük harflerle yazılmış halini lowerFunction adını verdiğimiz kolonunda yazdı */

-- UPPER() -- parametreyle alınan bütün string ifadeleri büyük harfli yazar

Select UPPER('ahmet kılınç') /* AHMET KILINÇ */

Select ProductName, UPPER(ProductName) as UpperFunction from Products /*önce ilk halini yazdırdı sonra büyük harflerle yazılmış halini UpperFunction adını verdiğimiz kolonunda yazdı */

--Bu fonksiyonların gerçek hayattaki genel amacı Ürün Kodu oluşturmaktan geçer

-- TRIM, LTRIM, RTRIM, REVERSE

--TRIM fonksiyonu kelimenin başındaki ve sonundaki boşlukları siler.

Select TRIM('   AHMET KILINÇ     ') /*AHMET KILINÇ*/

-- LTRIM fonksiyonu ismi LEFTTRIM'den gelir ve solundaki boşluğu siler

Select LTRIM('  AHMET KILINÇ') /*AHMET KILINÇ*/

Select * from Products WHERE LTRIM(ProductName) = 'Chai' /*chai normalde veritabanında ' chai' diye kayıtlı eğer ki biz ltrim kullanmasaydık bu veriyi çekemezdik */

-- RTRIM Fonksiyonunun ismi RIGHTTRIM'den gelir ve sağdaki boşluğu siler.

Select RTRIM('AHMET KILINÇ   ') /*AHMET KILINÇ*/

-- REVERSE Kelimenin tamamiyle ters yazar 

Select REVERSE('AHMET KILINÇ') /*ÇNILIK TEMHA*/

-- SUBSTRİNG, REVERSE, CHARINDEX, ASCII, CHAR FONKSİYONLARI

-- CHARINDEX, bir metinsel ifadenin içerisinde başka bir metinsel ifadeyi arayan fonksiyondur.

/* CharIndex üç farklı girdi alır bunlar sırasıyla aranacak kelime, nerede aranacağı ve kaçıncı indexten aranmaya başlanması anlamına gelir */

Select CharIndex('h','Ahmet Kılınç',1) /* 2 */ /* aranacak kelime, nerede aranması gerektiği, kaçıncı indexten aranmaya başlasın */

-- burada index sayısını değiştirirsek örneğin 3 yaparsak sonucu bulamaz ve sıfır yazar  

Select CHARINDEX('h','Ahmet Kılınç', 3) /* 0 */

/* başka bir örnek ise */

Select ProductName from Products where CHARINDEX ('anton', ProductName, 1)>0 /*içerisinde anton geçen kelimeleri arar  ve ekrana yazar */

-- REPLACE fonksiyonu, değiştirme fonksiyonu olarak niteleyebiliriz. metinsel ifade içerisinde yer alan bir karakteri girilecek diğer bir karakterle değiştirir.

/*REPLACE fonksiyonu üç parametre alır bunlar sırasıyla değişiklik yapılacak metin, değişecek harf ve yerine yeni olarak ne yazılacağıdır */

Select REPLACE('AHMET KILINÇ',' ','-') /*AHMET-KILINÇ*/

--başka bir örnek ise 

Select REPLACE(ProductName,' ','*') from Products /* ProductName kolonundaki boşlukları siler yerine * yazılır */

-- SUBSTRİNG Fonksiyonu, metinsel ifadeyi parçalama fonksiyonudur. Girilen veya var olan bir metinsel değeri istenilen ölçütlerde parçalar.

-- substring sırasıyla üç parametre alır bunlar kırpılacak metin, hangi harften başlayacağı ve en son kaç tane harfte sonlandıracağıdır. 

Select SUBSTRING('AHMET KILINÇ',1,5) /*AHMET*/

-- başka bir örnek ise

Select SUBSTRING(ProductName,1,5) from Products /*ProductName kolonunda bulunan metinsel ifadelerin tamamını birinci indexten başlayarak 5. indexi de kaplayacak şekilde parçala */

/*kısaca metinleri bu şekilde böleriz */

-- ASCII fonksiyonu, girilen bir harfin ASCII Tablosundaki sayısal karşılığını verir.

Select ASCII('A') /*ASCII Tablosunda A Harfinin karşılığı 65'tir! */

-- CHAR fonksiyonu, girilen sayısal değerin ASCII Tablosundaki harf karşılığını verir.

Select CHAR(65) /* ASCII Tablosunda 65 sayısının harf karşılığı 'A'dır. */

