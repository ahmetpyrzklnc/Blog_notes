# TSQL DERS NOTLARI

## SQL SERVER STRING FUNCTION

***ASCII FONKSİYONU:*** Bir karakterin ascii değerini döndürür. Verinin içerisinde görünmeyen veya kirli karakterleri temizlemek için kullanılır. 

Her bir karakterin bilgisayar dilinde bir sayısal değeri vardır. ASCII fonksiyonu ise belirtilen karakterin ascii tablosundaki sayısal değerini vermektedir.

*Örneğin:*

```sql
SELECT ASCII('B') // 66

SELECT ASCII('A') // 65

SELECT ASCII('!') // 33

SELECT ASCII('.') // 46

SELECT ASCII('$') // 36

SELECT ASCII(' ') // 32
```

Bu değerlerin her biri karakter türünde olan verilerin ascii tablosundaki sayısal karşılıklarını vermektedir. Örneğin ‘A’ harfinin ascii tablosundaki sayısal karşılığı ‘65’ tir. 

***CHAR FONKSİYONU:*** Bir sayısal değerin ascii tablosundaki karakter değerini döndürmektedir. Kullanım şekli yine aynı şekilde kirli verileri temizlemek veya veri manipülasyonlarını gerçekleştirmek için kullanılır. 

Önceden de bahsedildiği gibi bilgisayar dilinde her bir karakterin bir sayısal değeri vardır. CHAR fonksiyonu ise sayısal değerin ascii tablosundaki karakter değerini vermektedir.

*Örneğin:*

```sql
SELECT CHAR(65) // A

SELECT CHAR(66)  // B

SELECT CHAR(33) // !

SELECT CHAR(46) // .

SELECT CHAR(36) // $
```

Görüldüğü gibi bu şekilde kullanılır. Ancak bazı durumlardan kurtulabilmek için ascii fonksiyonu ile char fonksiyonu beraber kullanılır. Örneğin ascii tablosunda enter yani alt satır karakterinin değeri 13’tür. Bunu ascii fonksiyonuyla yakalamak mümkündür. Ancak char fonksiyonuyla 13 parametresini girerseniz bu fonksiyon bizlere sadece boş veri döndürecektir.

*Örneğin:*

```sql
SELECT ASCII('
') // 13

SELECT CHAR(13) // boşluk verisi döndürür.
```

Yukarıdaki kod parçacığında ascii olarak alt satıra geçilmiş karakterin sayısal değeri verilirken char ise bunu boşluk olarak döndürmektedir. İşte bu tip hatalardan kaçınmak için çoğu zaman ascii fonksiyonuyla char fonksiyonu beraber kullanılmaktadır.

***CONCAT FONKSİYONU:*** İki veya daha fazla karakter ifadelerini birleştirmek için kullanılan bir fonksiyondur. 

*Örneğin:*

```sql
SELECT CONCAT('Kelime','Birleştirildi!') -- KelimeBirleştirildi!

SELECT CONCAT('Kelime',' ','Birleştirildi!') -- Kelime Birleştirildi!

SELECT CONCAT('Bu',' ','şekilde',' ','birden',' ','fazla',' ','kelimeyi',' ','de',' ','birleştirebiliriz!')
-- Bu şekilde birden fazla kelimeyi de birleştirebiliriz!
```

Bu şekilde karakter türünde olan verileri birleştirmemize olanak sağlamaktadır. Ayrıca toplama (+) işareti kullanarak da karakter verilerini birleştirebiliriz.

*Örneğin:*

```sql
SELECT 'Toplama'+' '+'birleştirme' -- Toplama birleştirme
```

Bu şekilde de iki veya daha fazla karakter verilerini birleştirebiliriz. Ancak bu tip birleştirmeler bazen sorunlara neden olabilmektedir. Çünkü toplam değişkenleri yani “+” işareti MSSQL içerisinde farklı yerlerde de kullanılabilir. O yüzden dolayı genellikle concat fonksiyonuyla birleştirme yapmak daha efektif bir çalışma sağlamaktadır.

***LEFT-RIGHT FONKSİYONLARI:*** Bir string değerini sağdan veya soldan belirtilen parametreye göre bölmeye olanak sağlayan bir fonksiyondur.

*Örneğin:*

```sql
SELECT RIGHT('Süper Lig',3) // "Lig"

SELECT RIGHT('Süper Lig',6) // "er Lig"

SELECT LEFT('Süper Lig', 5) // "Süper"

SELECT LEFT('Süper Lig',8) // "Süper Li"
```

Bu şekilde karakter verilerini sağdan veya soldan belirtilen karakter sayısı kadar bölmemize olanak sağlayan bir fonksiyon olarak karşımıza çıkmaktadır.

***TRIM-LTRIM-RTRIM FONKSİYONLARI:*** TRIM fonksiyonu bir string verisindeki başındaki veya sonundaki boşluk karakterlerini silmeye olanak sağlar. LTRIM ve RTRIM ise soldan veya sağdan başında boşluk olan karakterlerin boşluklarını silmeye olanak sağlamaktadır.

*Örneğin:*

```sql
// Başındaki ve sonundaki boşlukları siler.
SELECT TRIM(' Süper Lig ') // "Süper Lig" 

// Soldan yani başındaki boşlukları siler.
SELECT LTRIM(' Süper Lig ') // "Süper Lig "

// Sağdan yani sondaki boşlukları siler.
SELECT RTRIM(' Süper Lig ') // " Süper Lig"
```

TRIM Fonksiyonu sadece ama sadece başındaki ve sonundaki boşluk karakterlerini silmeye olanak sağlar. Kod parçacığında da görüldüğü gibi ortadaki boşluk karakterini silmez. 

***LOWER-UPPER-REVERSE-REPLICATE FONKSİYONLARI:*** 

- *Lower Fonksiyonu:* Belirtilen karakter değerini küçük harflere dönüştürme fonksiyonudur.
- *Upper Fonksiyonu:* Belirtilen karakter değerini büyük harflere dönüştürme fonksiyonudur.
- *Reverse Fonksiyonu:* Belirtilen karakter değerini tersten yazdırmaya olanak sağlayan bir fonksiyondur.
- *Replicate Fonksiyonu:* Belirtilen karakter değerini girilen girdi parametresine göre tekrar yazdıran bir fonksiyondur.

*Örneğin:*

```sql
SELECT LOWER('SÜPER LİG') // süper lig
SELECT LOWER('SüPeR LiG') // süper lig

SELECT UPPER('süper lig') // SÜPER LİG
SELECT UPPER('SüPer lİG') // SÜPER LİG
```

Görüldüğü gibi lower fonksiyonu girilen karakter değerlerini küçük harflere uygun olarak dönüştürürken, upper ise büyük harflere dönüştürme işlemini yapmaktadır. 

<aside>
💡 İngilizce’de ve Türkçe’de karakter açısından farklılıklar vardır. Örneğin Türkçe’de büyük i harfi (İ) varken İngilizce’de bu harften bulunmamaktadır. MSSQL bu karakter dönüşümlerinde ise kurulum esnasında mevcut veritabanının collition değerine göre hareket etmektedir. Örneğin collation değeri Turkish_CI ise büyük (İ) dönüşümünü sağlamaktadır. Ancak bu değeri İngilizce olarak tutarsak lower ve upper fonksiyonlarında (i) harfi (I) olarak dönüşürken, (I) harfi ise (i) olarak dönüşecektir.

</aside>

*Örneğin:*

```sql
SELECT LOWER('DATA SCIENCE') // data scıence
SELECT UPPER('data science') // DATA SCİENCE
```

Görüldüğü gibi burada dönüşüm sağlanmadı çünkü ben kurulumda collation değerini ‘Turkish_CI’ olarak belirtmiştim. İşte veri tabanlarının kurulum esnasında bu değerlere önem vermek gerekmektedir.

Ayrıca benim veri tabanımın kurulum ayarları şu şekildedir.

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled.png)

Görüldüğü gibi dil ayarları Türkçe olduğu için bu fonksiyon bende problem çıkartabilir. Eğer ki İngilizce bir veriyle çalışacaksanız bu veri tabanı ayarlarından Server Collation değerini İngilizce olarak belirtmek gerekir.

<aside>
💡 Türkçe olarak ayarlanan bir veritabanında ingilizce yazı dilinde sorgu çalıştırmak istersek ise collate fonksiyonuyla bunu düzeltebiliriz.

</aside>

***Örneğin:***

Washington kelimesi, İngilizce bir kelimedir. Eğer ki ‘Turkish_CI_AS’ ayarlanmış veri tabanında `UPPER()` fonksiyonu çalıştırırsak bize dönüşüm olarak “WASHİNGTON” olarak dönüş sağlayacaktır. İngilizce’de “İ” harfi gibi bir harf tanımlı olmadığı için bu hatalı bir dönüşüm olacaktır. İşte bu hatadan kurtulmak için şöyle bir sorgu çalıştırmamız gerekir.

```sql
SELECT 'washington'

SELECT UPPER('washington') -- WASHİNGTON (hatalı ifade)

/*

hatadan kurtulmak için --> collate sql_latin1_general_cp1_ci_as 

*/

-- Örnek:

SELECT UPPER('washington' collate sql_latin1_general_cp1_ci_as) -- WASHINGTON
```

Bu şekilde sorunu çözebiliriz.

***Reverse Fonksiyonu*** ise girilen kelime parametresini tersten yazdırmaya olanak sağlamaktadır. 

*Örneğin:*

```sql
SELECT REVERSE('Süper Lig') // giL repüS

SELECT REVERSE('Microsoft TSQL') // LQST tfosorciM

SELECT REVERSE('AMBULANS') 
```

Görüldüğü gibi ifadeleri komple tersten yazdırmaya olanak sağlamaktadır. 

<aside>
💡 Bu fonksiyon genellikle yüksek hacimli veri setlerinde arama yaparken kullanılır. Örneğin ad soyad ve adres bilgilerinden oluşan çok hacimli bir veri seti içerisinden soyadı ile ilgili sorgular çalıştırırsanız ‘like %’ ifadesi gibi sorguların çalışması çok zor olacaktır. Çünkü içerisinde belirli bir değerin var olduğunu bildiğiniz değerlerde veri tabanı indeksleme yapamaz. İşte reverse komutuyla birlikte veri tabanı bu indekslemeyi gerçekleştirir ve daha performanslı bir şekilde çalışmasına olanak sağlamaktadır.

</aside>

***Replicate fonksiyonu*** ise girilen kelime parametresini ve diğer girilen sayısal girdi parametresi kadar tekrar tekrar yan yana yazdırmaya olanak sağlayan bir fonksiyondur.

*Örneğin:*

```sql
SELECT REPLICATE('LOSC', 5) // LOSCLOSCLOSCLOSCLOSC

SELECT REPLICATE('TSQL ', 3) // TSQL TSQL TSQL 
```

Görüldüğü gibi ilk fonksiyonda ‘LOSC’ ifadesini yan yana 5 defa yazdırırken, ikinci replicate fonksiyonunda ise ‘TSQL ’ ifadesini 3 defa yan yana yazdırarak yeni bir veri oluşturdu.

<aside>
💡 Replicate fonksiyonu gerçek hayatta bazı algoritmik olarak yapılan problemlerde çözümler getirebilir. Örneğin bir ürün kodu oluşturmak isteyebiliriz. Bu ürün kodunda 0 sayısal değerini ürünün id değişkenine göre ve uzunluğuna göre ekleyebiliriz.

</aside>

*Örneğin:*

```sql
SELECT 'URUN'+REPLICATE('0',5-LEN('139'))+'139' //URUN00139

SELECT 'URUN'+REPLICATE('0',5-LEN('10'))+'10' // URUN00010

SELECT 'URUN'+REPLICATE('0',5-LEN('1457'))+'1457' //URUN01457
```

Bu şekilde ürünün id numarasının uzunluğuna göre 0 ekleyip eklememe durumu gibi bir durumda çözümlemeler gerçekleştirilebilmektedir.

***REPLACE FONKSİYONU:*** Üç adet parametre alan bu fonksiyonda girilen ilk parametrede üzerinde değişiklik yapılacak değer girilir. İkinci parametrede bu kelimenin veya ilk kelime içerisinde geçen ifadenin eski sürümünü ve son olarak üçüncü ifade de ise bu ifadenin yeni sürümünün girilmesi beklenilir.

*Örneğin:*

```sql
SELECT REPLACE('OpenCV görüntü işlemede kullanılan bir python dili kütüphanesidir.',
'OpenCV','Tensorflow')
// Tensorflow görüntü işlemede kullanılan bir python dili kütüphanesidir.
```

Görüldüğü gibi içerisinde geçen ‘OpenCV’ ifadesini, ‘Tensorflow’ olarak değiştirdi.

<aside>
💡 Replace Fonksiyonu, kirli verileri temizlemek için oldukça sıklıkla kullanılan bir fonksiyondur. Örneğin bir form verisi içerisinde ‘istanbul’, ‘İstanbul’ veya ‘ist.’ olarak kullanılabilir. İşte bu veri karmaşıklığını tek düze indirebilmek için replace komutunu kullanarak ‘İstanbul’ olarak verileri düzenleyebiliriz.

</aside>

***SUBSTRING FONKSİYONU:*** Bir string ifadesinde belirli bir başlangıç noktasından belirli bir bitiş noktasına kadar değeri almamıza olanak sağlayan bir fonksiyondur.

```sql
SELECT SUBSTRING('ChatGPT gpt tabanlı bir yapay zeka dil modelidir.',1,7) 
// ChatGPT

SELECT SUBSTRING('ChatGPT gpt tabanlı bir yapay zeka dil modelidir.',25,10) 
//yapay zeka 
```

Görüldüğü gibi girilen karakter verisini bölmek istenilen yerden, kaç tane bölmek istenildiği parametreleri girilerek karakter veri setlerinde içerisindeki değerleri dilediğimiz gibi manipüle etmemize olanak sağlayan bir yapı olarak karşımıza çıkmaktadır.

<aside>
💡 Substring fonksiyonu gündelik hayatta oldukça fazla kullanılan bir fonksiyondur. Örneğin büyük veri içerisinde yer alan bir html sayfasını belirli yerlerinden scraping işlemi yapmak için kullanılabilmektedir.

</aside>

***CHARINDEX FONKSİYONU:*** Belirli bir string ifadesinde aranan ifadenin kaçıncı indeksten başladığını bildiren bir fonksiyondur. Temel olarak iki tane parametre alan bu fonksiyonda öncelikle aranan ifade ve sonrasında nerede aranacağını bildiren ikinci ifade yer almaktadır.

```sql
SELECT CHARINDEX('2022', 'MICROSOFT SQL SERVER 2022') //22

SELECT CHARINDEX('SQL', 'MICROSOFT SQL SERVER 2022') // 11
```

Görüldüğü gibi aranan ‘2022’ ifadesi belirtilen string dizisinde 22’nci indexten başladığını belirtmektedir.

<aside>
💡 Temel olarak string ifadelerini belirli parametrelere göre bölmemize olanak sağlayan bu fonksiyon örneğin elimizde olan bir string fonksiyonunda değiştirmek istediğimiz ifadenin kaçıncı indexte olduğunu öğrenip ona göre manipülasyon işlemlerini gerçekleştirebilmemize olanak sağlayan bir yapı olarak karşımıza çıkmaktadır.

</aside>

***STRING_SPLIT FONKSİYONU:*** Diğer fonksiyonlardan ayrılan bu fonksiyonda bize sonuç odaklı dönüş değil tablo olarak dönüş sağlamaktadır. Bundan ötürü de kullanımda ise FROM ifadesi kullanılmaktadır. Temel olarak iki ifade alır. Bunlardan biri split edilmesi gereken ifadeyi alırken diğeri ise neye göre split edilmesi gerektiğinden bahseder.

*Örneğin:*

```sql
SELECT * FROM STRING_SPLIT('ChatGPT, GPT tabanlı bir yapay zeka dil modelidir.',' ')

/*
ChatGPT,
GPT
tabanlı
bir
yapay
zeka
dil
modelidir.

*/
```

Bu şekilde girilen string parametresini boşluklardan ayırarak bir tablo halinde gösterime olanak sağlayan bir yapı olarak karşımıza çıkmaktadır. Bu fonksiyon öncesinde de dediğimiz gibi diğer fonksiyonlardan ayıran özelliği bir tablo olarak gösterim sağlamasıdır. Örnek olarak aşağıdaki kodu çalıştıralım ve sonucuna bir bakalım.

*Örneğin:*

```sql
SELECT STRING_SPLIT('ChatGPT, GPT tabanlı bir yapay zeka dil modelidir.',' ')

/*

Msg 195, Level 15, State 10, Line 15
'STRING_SPLIT' is not a recognized built-in function name.

Completion time: 2024-05-30T17:46:01.6367640+03:00

*/
```

Görüldüğü üzere hata almamıza sebep olabilmektedir. Çünkü scaler value değerinde değer döndüren bir string_split fonksiyonu yoktur. string_split fonksiyonu bize table-value değeri döndürmektedir.

### STRING FONKSİYONLARI ALIŞTIRMALAR

***SORU-1:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%201.png)

***Adımlar sırasıyla:***

- Öncelikle veri tabanındaki tabloyu bir görüntülememiz gerekir.
- İkinci olarak soruda belirtilen alanlar için tasarımcı ekranından yeni bir sütun veri tablosuna ekledik.
- Üçüncü olarak soruda belirtilen alanları birleştiren komutu yazdık.
- En son olarak veri tabanı içerisinde önceden de oluşturduğumuz NAMESURNAME sütunundaki verileri güncelledik.

Kurduğumuz yapının SQL sorgusu aşağıdaki gibidir.

```sql
SELECT * FROM LAB01 -- tabloyu listeledik

SELECT *, NAME_+' '+SURNAME FROM LAB01 -- Eklemek istediğimiz yapıyı kontrol ettik

UPDATE LAB01 SET NAMESURNAME = NAME_+' '+SURNAME -- Veritabanında güncelleme yaptık.
```

Kod sonrası oluşan son durum şu şekildedir. 

[LAB01](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/LAB01%209a66c86f97eb4e9f91243703baee3ba4.csv)

***SORU-2:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%202.png)

***Adımlar sırasıyla:***

- Öncelikle veri tabanındaki mevcut tabloyu görüntüledik.
- Sonrasında istenilen formata göre select sorgusu yazıldı.
- Ürün kodu ve ürün adı alt alta satırlarda olmasını istediğimizden ötürü de char(13) string fonksiyonunu kullandık. Çünkü bu fonksiyon bizlere enter karakterinin ascii tablosundaki değerini vermektedir.
- Tablo olarak enter gözükmeyeceği için çıktı kısmının görüntülenme şeklini text olarak ayarladım ki daha iyi anlayabilelim

Bu adımlar durumunda sorgu şu şekildedir:

```sql
SELECT * FROM LAB02

SELECT 'Ürün Kodu:' +ITEMCODE +CHAR(13)+ 'Ürün Adı: '+ITEMNAME AS 'AÇIKLAMA' FROM LAB02 

-- CHAR(32) --> BOŞLUK KARAKTERİ
-- CHAR(13) --> ENTER KARAKTERİ
```

Kod sonrası oluşan tablo ise şu şekildedir.

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%203.png)

***SORU-3:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%204.png)

Adımlar sırasıyla:

- Öncelikle güncellemek istediğimiz tabloyu `SELECT` komutuyla görüntüledik.
- Sonrasında problemde bize bildirilen büyük harfe dönüştürme işlemi için `UPPER()` fonksiyonunu kullanarak belirlenen alanlardaki fonksiyonu denedik.
- En sonunda güncellemek istediğimiz tabloyu ve sütunları belirterek ilgili `UPDATE` fonksiyonunu yazarak işlemi tamamladık.

Bu adımlar neticesinde oluşturulan SQL sorgusu şu şekildedir:

```sql
SELECT * FROM LAB03

/*

UPPER() --> Büyük harfe dönüştüren String fonksiyonu
LOWER() --> Küçük harfe dönüştüren String fonksiyonu

*/

SELECT *, UPPER(TOWN), UPPER(CITY) FROM LAB03

UPDATE LAB03 SET CITY = UPPER(CITY), TOWN = UPPER(TOWN);
```

Sorgu sonucu oluşan yeni tablomuz şu şekildedir:

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%205.png)

***SORU-4:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%206.png)

Bu işlemi gerçekleştirebilmek için birden fazla string fonksiyonunu iç içe yazmamız gerekebilir. Adım adım incelersek:

- Öncelikle tabloyu listelemek için `SELECT()` sorgusunu çalıştırmamız gerekir. Bu şekilde tabloyu komple görüntüleyebiliriz.
- Sonrasında soruda belirtilen “ilk harfi büyük” ifadesi için gerekli yerin ilk harfini seçebilmek için `LEFT()` fonksiyonunu kullanırız. Eğer parametre olarak 1 sayısı girilirse ilk harfi seçecektir.
- Soruda ilk harfin büyük kalması talep edilmiş büyük harf olarak kalması için `UPPER()` fonksiyonu kullanılır. Bu şekilde gerekli alandaki ilk ifade kısmı bitmiş olur.
- Diğer bir kısım ise küçük harf olarak dönüşmesi gereken kısımlar bunlar için de yine benzer bir yöntem izlemek gerekir.
- Bunun için öncelikle baş harf hariç diğerinin seçilmesi istenmiş. Bunun için tabii ki `RIGHT()` fonksiyonu kullanacağız. `RIGHT()` fonksiyonu için ise ilk kelime hariç olduğu için ve tablo içerisinde kelimelerin tam uzunluğunu bilemediğimiz için `LEN()` fonksiyonuyla bunu belirleyebiliriz. En sonunda `LEN()` fonksiyonundan gelen ifadeden -1 olarak düşersek baş harfi hariç bütün kelimeler bize dönüş sağlayacaktır.
- En sonunda ise bütün harflerin küçük olması nedeniyle burada ise lower fonksiyonuyla kurulan yapı içeriye aktarılır.
- Son olarak `UPDATE()` sorgusu çalıştırılarak sonuç ekranı döndürülür.

İlgili adımların sorguları şu şekilde olmaktadır.

```sql
SELECT * FROM LAB04

/*
	SOLDAN KARAKTER SEÇİMİ: LEFT()
	SAĞDAN KARAKTER SEÇİMİ: RIGHT()
*/

/*
	KÜÇÜK HARF DÖNÜŞTÜRÜCÜ: LOWER()
	BÜYÜK HARF DÖNÜŞTÜRÜCÜ: UPPER()
*/

/*
	UZUNLUK BELİRTECİ: LEN()
*/

SELECT LEFT('ANKARA',1)+LOWER(RIGHT('ANKARA', LEN('ANKARA')-1)) -- Ankara

-- Tabloyu güncelleştirelim

UPDATE LAB04 SET CITY = UPPER(LEFT(CITY,1))+LOWER(RIGHT(CITY, LEN(CITY)-1)), TOWN = UPPER(LEFT(TOWN,1))+LOWER(RIGHT(TOWN, LEN(TOWN)-1))
```

Sorgu neticesinde çıkacak görüntü ise şu şekildedir:

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%207.png)

***SORU-5:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%208.png)

Yine aynı şekilde bu sorunu çözebilmek için birden fazla string fonksiyonunu iç içe yazmamız gerekecek. Bu adımları sırasıyla incelersek:

- İlk olarak tabloyu görüntüleyebilmek için `SELECT` komutunu çalıştırarak tablonun tamamını listeledik.
- Sonrasında soruda istenilen mail servis sağlayıcılarının seçimini belirtmemiz gerekecek. Bunun için ise burada belirleyici etken ‘@’ işaretidir. O zaman burada ‘@’ işaretinin yerini tespit edebilirsek buna uygun olarak servis sağlayıcının domain adresini ayırabiliriz.
- ‘@’ işaretinin yerini tespit edebilmek için `CHARINDEX()` fonksiyonunu kullanabiliriz. `CHARINDEX()` fonksiyonu bize belirli bir konum sayısı yani indeks döndürür bu dönen indeks sayısını ise `RIGHT()` fonksiyonu ile bölebiliriz.
- O zaman metnin tam uzunluğundan `CHARINDEX()` çıkarırsak ve sonucunu `LEN()`fonksiyonu ile belirtirsek bize tam bir sonuç sağlayabilir.
- Yapıyı kurduktan sonra bizden istenilen toplam sayı kullanabilmek için ise `GROUP BY` ile `COUNT()` kullanarak yapıyı tamamen istediğimiz şekilde kurabiliriz.

Bu adımlar neticesinde sorgumuz şu şekildedir:

```sql
SELECT * FROM LAB05
/*
	email'i seçmemiz için gereken ayraç '@' işareti
	Bunun için kullanılabilecek fonksiyon CharIndex
*/

SELECT CHARINDEX('@','mel_ozipek@fakeyahoo.com') -- 11

/*
	'@' sonrası seçimi için len ve rightı iç içe kullanabiliriz.
*/

SELECT LEN('mel_ozipek@fakeyahoo.com') -- 24-11= 13

SELECT RIGHT('mel_ozipek@fakeyahoo.com',13)

-- Sorguya bir düzen getirelim

SELECT *, RIGHT(EMAIL, LEN(EMAIL) - CHARINDEX('@', EMAIL)) FROM LAB05

-- Hangi mail adresinden ne kadar var sorusunu da count ve group by ile yapabiliriz.

SELECT RIGHT(EMAIL, LEN(EMAIL) - CHARINDEX('@', EMAIL)), COUNT(*) FROM LAB05 
GROUP BY RIGHT(EMAIL, LEN(EMAIL) - CHARINDEX('@', EMAIL));
```

Bu sorgu neticesinde çıktımız ise şu şekildedir:

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%209.png)

***SORU-6:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2010.png)

Sorunun çözümü şu şekildedir:

```sql
SELECT TELNR FROM LAB06

/*
	LEFT() - SOLDAN İLK SAYI SEÇİMİ yani 0
	SUBSTRING() --> kaçıncı indeksten başlayıp kaç tane karakter seçimi olsun
*/

SELECT '+90 ('+ SUBSTRING('03563355976',2,3)+')'+' '+
SUBSTRING('03563355976',5,3)+' '+
SUBSTRING('03563355976',8,2)+' '+
SUBSTRING('03563355976',10,2)

SELECT *,'+90 ('+ SUBSTRING(TELNR,2,3)+')'+' '+
SUBSTRING(TELNR,5,3)+' '+
SUBSTRING(TELNR,8,2)+' '+
SUBSTRING(TELNR,10,2) AS 'Formatlanmış Numaralar' FROM LAB06
```

Sorgunun çıktısı ise şu şekildedir:

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2011.png)

***SORU-7:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2012.png)

Sorunun çözümü şu şekildedir:

```sql
SELECT * FROM LAB07

/*
	REPLICATE() --> tekrar yazılması istenilen ve ne kadar yazılması istenen parametreleri alır
	LEN() --> ürün kodunun uzunluğunu belirtir.
*/

SELECT *,CATEGORY1CODE + REPLICATE(0, 6-LEN(ITEMCODE))+ITEMCODE AS 'Akıllı Kod' FROM LAB07

UPDATE LAB07 SET ITEMCODE = CATEGORY1CODE + REPLICATE(0, 6-LEN(ITEMCODE))+ITEMCODE;
```

Sorgunun çıktısı şu şekildedir:

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2013.png)

***SORU-8:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2014.png)

Sorunun çözümü şu şekildedir:

```sql
SELECT * FROM LAB09
/*
	string_split(x,y) --> x=veri, y=bölünme parametresi
	count() --> toplam veri sayısı
*/
SELECT COUNT(*) FROM string_split('İstanbul tarihi mekanlarıyla ünlü bir büyükşehirdir.', ' ')

SELECT *,(SELECT COUNT(*) FROM string_split(FULLTEXT, ' ')) as 'ToplamKelimeSayisi' FROM LAB09
```

Sorgunun çıktısı şu şekildedir:

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2015.png)

***SORU-9:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2016.png)

Sorunun çözüm sorgusu şu şekildedir:

```sql
SELECT * FROM LAB10

SELECT REPLACE(INFO, '##',CHAR(13)) FROM LAB10
```

Sorgunun çıktısı şu şekildedir:

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2017.png)

### SQL SERVER DATETIME FUNCTION

***ANLIK TARİHİ ve SAATİ GETİREN FONKSİYONLAR:*** SQL serverın çalıştığı ana makinenin tarih ve saatlerini getiren fonksiyonlardır. Kısaca maddeler halinde değinelim:

- `GETDATE()` fonksiyonu sistemin anlık zaman dilimini yıl-ay-gün saat-dakika-saniye-milisaniye (max 3 digit) şeklinde gösterim sağlamaktadır. En çok kullanılan fonksiyon ise budur.
- `SYSDATETIME()` fonksiyonu ise daha da detaylı bir milisaniye değeri döndürür.
- `SYSDATETIMEOFFSET()` fonksiyonu ise +03.00 timezon değerini de gösterir.

Diğer fonksiyonların kullanımı ise şu şekildedir:

```sql
SELECT 
GETDATE() GETDATE,
SYSDATETIME() SYSDATETIME,
SYSDATETIMEOFFSET() SYSDATETIMEOFFSET,
SYSUTCDATETIME() SYSUTCDATETIME,
CURRENT_TIMESTAMP "CURRENT_TIMESTAMP",
GETUTCDATE() GETUTCDATE
```

Yukarıda yazılmış olan datetime fonksiyonların çıktısı ise şu şekildedir:

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2018.png)

***DATEPART FONKSİYONU:*** Bir tarih ve saat yapısı içerisinden belirli bir kısmı almak için kullanılan fonksiyondur. Belirli bir parametreler girerek örneğin: ay, yıl gün gibi değerleri alabiliriz.

*Örneğin:*

```sql
/*
	 DATEPART FUNCTIONS
	 YEAR -> yıl bilgisini alır.
	 MONTH -> ay bilgisini alır.
	 DAY -> gün bilgisini alır.
	 HOUR -> saat bilgisini alır.
	 MINUTE -> dakika bilgisini alır.
	 SECOND -> saniye bilgisini alır.
*/

SELECT DATEPART(YEAR, '2024-06-02 02:23:58.723') AS 'YIL',
DATEPART(MONTH, '2024-06-02 02:23:58.723') AS 'AY',
DATEPART(DAY, '2024-06-02 02:23:58.723') AS 'GUN',
DATEPART(HOUR, '2024-06-02 02:23:58.723') AS 'SAAT',
DATEPART(MINUTE, '2024-06-02 02:23:58.723') AS 'MINUTE',
DATEPART(SECOND, '2024-06-02 02:23:58.723') AS 'SECOND'
```

Sorgu sonucunda oluşan tablo ise şu şekildedir:

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2019.png)

***DATENAME FONKSİYONU:*** DATEPART fonksiyonuna tıpatıp benzerdir. Sadece tek farklı yanı ay gibi ifadeleri sayısal olarak değil string türü olarak yazdırır.

*Örneğin:*

```sql
/*
	 DATENAME FUNCTIONS
	 YEAR -> yıl bilgisini alır.
	 MONTH -> ay bilgisini alır.
	 DAY -> gün bilgisini alır.
	 HOUR -> saat bilgisini alır.
	 MINUTE -> dakika bilgisini alır.
	 SECOND -> saniye bilgisini alır.
*/

SELECT DATENAME(YEAR, '2024-06-02 02:23:58.723') AS 'YIL',
DATENAME(MONTH, '2024-06-02 02:23:58.723') AS 'AY',
DATENAME(DAY, '2024-06-02 02:23:58.723') AS 'GUN',
DATENAME(HOUR, '2024-06-02 02:23:58.723') AS 'SAAT',
DATENAME(MINUTE, '2024-06-02 02:23:58.723') AS 'DAKIKA',
DATENAME(SECOND, '2024-06-02 02:23:58.723') AS 'SANIYE'
```

Sorgu sonucunda oluşan tablo şu şekildedir:

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2020.png)

***DATE-TimeFromParts FONKSİYONLARI:***  İçine almış olduğu gün-ay-yıl değerini date türünde döndürür. TimeFromParts ise içerisinde gün-ay-yıl-saat-dakika türünde veri alır ve date türünde döndürür.

*Örneğin:*

```sql
SELECT DATEFROMPARTS(2020,2,18); -- date türünde döndürdü (2020-02-18)
SELECT DATEFROMPARTS(2020,8,19); -- date türünde döndürdü (2020-08-19)

-- Hatalı tarih girişleri denemesi
SELECT DATEFROMPARTS(2020,2,29); -- 2020 artık yıl olduğu için içerisinde 29 şubat vardır o yüzden sorgu doğrudur. ancak

SELECT DATEFROMPARTS(2019,2,29);
/*
	Msg 289, Level 16, State 1, Line 6
	Cannot construct data type date, some of the arguments have values which are not valid. (hata alındı.)
*/

-- farklı bir şekilde olmayan bir ay girdisi verelim:
SELECT DATEFROMPARTS(2020,13,4); -- 13. ay diye bir ay yoktur.
/*
(hata türü)
	Msg 289, Level 16, State 1, Line 14
	Cannot construct data type date, some of the arguments have values which are not valid.
*/

-- DATEFROMPARTS (7 tane parametre alır eğer almazsa hata alınır.)

SELECT DATETIMEFROMPARTS(2022,12,20,16);
/*
(hata türü)
	Msg 174, Level 15, State 1, Line 23
	The datetimefromparts function requires 7 argument(s).
*/

SELECT DATETIMEFROMPARTS(2022,12,20,18,19,20,8) -- 2022-12-20 18:19:20.007

-- TIMEFROMPARTS -> 5 tane parametre alır bunlar sırasıyla

/*
	-> saat
	-> dakika
	-> saniye
	-> milisaniye
	-> milisaniye hassasiyeti (örneğin 5 girilirse 5 rakamdan oluşan bir yapı olarak karşımıza çıkar (00046) gibi.
*/

SELECT TIMEFROMPARTS(16,45,56,415,5); -- 16:45:56.00415

-- örneğin 5 digitlik bir milisaniye girelim ve hassasiyeti 3 ayarlayalım:

SELECT TIMEFROMPARTS(16,45,56,1234,3);
/*
(hata kodu)
	Msg 289, Level 16, State 2, Line 46
	Cannot construct data type time, some of the arguments have values which are not valid.
*/
-- yani burada anlamamız gereken şey hassasiyet girilen milisaniye digit değerinden fazla olamaz eğer olursa hata alınır.
```

Bu şekilde özetleyebiliriz….

***DAY-MONTH-YEAR FONKSİYONLARI:*** Genel olarak elimizde bulunan bir tarih verisini gün-ay-yıl veya farklı şekillerde farklı veriler elde etmemize olanak sağlayan temel bir tsql fonksiyonudur. DateFromParts ile ayrılan özelliği y-a-g-s-d-ms şeklinde veri istenirken day-month-year fonksiyonlarında buna ihtiyaç yoktur. Sadece y-a-g şeklinde tarih verisi yeterlidir.

*Örneğin:*

```sql
-- Sistemim için anlık tarih saat verisini gösterelim:
SELECT GETDATE(); -- 2024-06-24 14:24:09.623

SELECT YEAR(GETDATE()) as 'YEAR'; -- sistemin anlık olarak yıl bilgisi (2024)
SELECT MONTH(GETDATE()) as 'MONTH'; -- sistemin anlık olarak ay bilgisini (06)
SELECT DAY(GETDATE()) as 'DAY'; -- sistemin anlık olarak gün bilgisini (24) alabiliriz.

-- ayrıca sadece getdate fonksiyonuyla iç içe kullanılamaz. Farklı bir date veri içerisinde de çalışabilir.

SELECT YEAR('2022-08-14') as 'YEAR'; -- date verisindeki yıl değerini (2022) milisaniye değeri olmadan da alabilirim datefromparts ile ayrılan özelliği budur.
SELECT MONTH('2022-08-14 12:24:09.613') as 'MONTH'; -- date verisindeki ay değerini (08)
SELECT DAY('2022-08-14 12:24:09.613') as 'DAY'; -- date verisindeki gün değerini (14)
```

Bu şekilde özetleyebiliriz…

***Datediff Fonksiyonu:*** Bu fonksiyonda ise iki tarih arasındaki farkı almak için kullanılır. İçerisine iki adet parametre alır. Ayrıca iki tarih arasındaki farkı nasıl olarak göstermemiz gerektiğine dair bir parametre daha alır.

*Örneğin:*

```sql
/*
	Üç adet parametre alır:
	-> iki tarih arasındaki farkı hangi türde istenilmesi (day,month,week,hour vs.)
	-> geçmiş olan tarih
	-> yeni olan tarih

*/

SELECT DATEDIFF(YEAR, '2002-09-24', '2034-10-14'); -- iki tarih arasındaki yıl farkını verir. (32 yıl)
SELECT DATEDIFF(MONTH, '2002-09-24', '2034-10-14'); -- iki tarih arasındaki ay farkını verir. (385 ay)
SELECT DATEDIFF(DAY, '2002-09-24', '2034-10-14'); -- iki tarih arasındaki gün farkını verir. (11708 gün)

-- saat ve dakika
SELECT DATEDIFF(HOUR, '2002-09-24', '2034-10-14') -- iki tarih arasındaki saat farkı (280992 saat)
SELECT DATEDIFF(MINUTE, '2002-09-24', '2034-10-14') -- iki tarih arasındaki dakika farkı (16859520 dakika)
SELECT DATEDIFF(SECOND, '2002-09-24', '2034-10-14'); -- saniye farkı (1011571200 saniye) olarak gösterilir.

/*
	bir örnek düşünelim: Bir müşterimiz bizden en son alışveriş yaptığı tarih '2008-10-09' olsun. 
	Bu müşterimizin bizden ne zamandır alışveriş yapmadığına dair bir analiz oluşturalım:
	(sistemin anlık tarihini kullanmamız için gereken fonksiyon GETDATE() fonksiyonudur.)
*/
-- çözüm:
SELECT DATEDIFF(YEAR,'2008-10-09', GETDATE()); -- yıl farkı (16) yıldır bizden alışveriş yapmıyor.
SELECT DATEDIFF(MONTH, '2008-10-09', GETDATE()); -- ay farkı (118) aydır alışveriş yapmıyor.
SELECT DATEDIFF(DAY, '2008-10-09', GETDATE()); -- gün farkı (5737) gündür bizden alışveriş yapmıyor.
SELECT DATEDIFF(WEEK, '2008-10-09', GETDATE()); -- hafta farkı (820) haftadır bizden alışveriş yapmıyor.

-- Bu şekilde çözümleri hem saat hem dakika hem saniye şeklinde de yapabiliriz.
```

Bu şekilde özetleyebiliriz….

***Dateadd Fonksiyonu:*** Bir tarihe başka bir parametrede değer girilmesine olanak sağlar. Bu fonksiyon temelinde üç parametre alır.

*Örneğin:*

```sql
/*
	Temel olarak bir tarihe başka bir değer girilerek o tarihi düzenlememize olanak sağlar.
	Bu fonksiyon üç adet parametre alır
	-> tarih verisi içerisinden hangisine ekleme yapılacak (year,month,day vs.)
	-> ne kadar süre girilecek (10,20,30 vs.)
	-> ve değiştirilmek istenen tarih verisi (2023-08-15 vs.)
*/

-- Kullanım şu şekildedir:
SELECT DATEADD(YEAR, 10, '2024-06-24'); -- tarihin yılına 10 sene ekle (2034-06-24 00:00:00.000)
SELECT DATEADD(MONTH, 1, '2024-06-24'); -- tarihin ayına 1 ay ekle (2024-07-24 00:00:00.000)
SELECT DATEADD(DAY, 5, '2024-06-24'); -- tarihin gününe 5 gün ekle (2024-06-29 00:00:00.000)
SELECT DATEADD(WEEK, 6, '2024-06-24'); -- tarihe 6 hafta ekler. (2024-08-05 00:00:00.000)

-- saat veya dakika ms ekleme ise şu şekildedir:
SELECT DATEADD(HOUR, 5, GETDATE()); -- sistemin anlık saatine 5 saat ekle (2024-06-24 22:46:42.160)
SELECT DATEADD(MINUTE, 20, GETDATE()); -- sistemin anlık dakikasına 20 dakika ekler. (2024-06-24 18:07:58.113)
SELECT DATEADD(SECOND, 45, GETDATE()); -- sistemin anlık saniyesine 45 saniye ekler. (2024-06-24 17:52:45.363)
SELECT DATEADD(MILLISECOND, 300, GETDATE()); -- sistemin anlık milisaniyesine 300 ms ekler. (2024-06-24 17:49:04.133)

-- dateadd fonksiyonunu iç içe kullanarak bir tarihi istediğimiz gibi düzenleyebiliriz.
SELECT DATEADD(MINUTE, 50, DATEADD(HOUR, 5, '2024-06-24')); -- hem saate hem de dakika verisi girmiş oluruz. (2024-06-24 05:50:00.000)
SELECT DATEADD(SECOND, 80, DATEADD(MINUTE, 50, DATEADD(HOUR, 5, '2024-06-18'))); -- bir tarih verisine sırasıyla saniye dakika ve saat verisi girildi (2024-06-18 05:51:20.000)

-- peki eklemek için kullandığımız fonksiyon dateadd ise çıkarmak istediğimiz için kullandığımız bir fonksiyon var mı diye 
-- soracak olursak hayır yoktur. Bunun için girilecek ifadede eksili (-10 vs.) gibi değerler girilmelidir.

SELECT DATEADD(DAY, -10, GETDATE()); -- sistemin anlık tarihinden 10 gün geriye yani -10 gün çıkart (2024-06-14 17:59:07.160)
SELECT DATEADD(YEAR, -100, '2023-10-29'); -- cumhuriyetin ilanı tarihini verir. Yani 100 yıl öncesi (1923-10-29 00:00:00.000)
```

Kısaca bu şekilde özetleyebiliriz…

***IsDate Fonksiyonu:*** İçine almış olduğu değerin tarih veri türünde olup olmadığını döndüren bir fonksiyondur.

```sql
/*
	içerisine sadece bir parametre alan bu fonksiyon eğer ki girilen veri tarih formatına uygunsa 1, değilse 0 döndürür.
*/

SELECT ISDATE('2024-06-24') -- girilen veri tarih formatına uygundur. Bu yüzden dolayı cevap (1)'dir.
SELECT ISDATE('2023-02-29') -- artık yılda olunmadığı için ve şubat 29 gün olmadığı için cevap (0)'dır.
SELECT ISDATE('2024-02-29') -- artık yılda olunduğu için ve şubat 29 gün olduğu için cevap (1)'dir.
SELECT ISDATE('2023-13-30') -- 13. ay diye bir ay tanımlı olmadığı için cevap (0)'dır.
SELECT ISDATE('2023-1A-10') -- cevap 0'dır. Çünkü 1A diye bir ay tanımlı değildir.

-- farklı tarih girme formatlarını denersek
SELECT ISDATE('19-09-2020') -- cevap (0)'dır çünkü tsql'de tarih formatı y-a-g şeklindedir.
SELECT ISDATE('20240216') -- tarih formatı olarak okuyabildiği için cevap (1)'dir. Yani doğrudur.

```

Bu şekilde özetleyebiliriz.

***ALIŞTIRMALAR*** 

SORU-1:

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2021.png)

SORUNUN ÇÖZÜMÜ:

```sql
-- iki tarih arasındaki farkı almak için datediff kullanabiliriz.

SELECT *, DATEDIFF(YEAR,  BIRTHDATE, GETDATE()) AS 'AGE' FROM LAB01 -- yaşları farkını buldurduk.

-- 40 ile 45 arasındaki yaşları listeleyelim: (ARALIK BELİRTMEK FONKSİYONU BETWEEN()'DİR.)

SELECT *, DATEDIFF(YEAR, BIRTHDATE, GETDATE()) AS 'AGE' FROM LAB01
WHERE
DATEDIFF(YEAR, BIRTHDATE, GETDATE()) BETWEEN 40 AND 45

-- son bir şartımız ise cinsiyeti erkek olanlardı bunun için de gender içerisinde E veya K değerleriyle bulabiliriz.

SELECT *, DATEDIFF(YEAR, BIRTHDATE, GETDATE()) AS 'AGE' FROM LAB01
WHERE
DATEDIFF(YEAR, BIRTHDATE, GETDATE()) BETWEEN 40 AND 45 -- yaşı 40 ile 45 arasında olsun.
AND GENDER = 'E'; -- cinsiyeti erkek olsun

-- Bu şekilde fonksiyonumuz son halini almış oldu. Soruda belirtilen çözümü yapan sorgu şudur:
SELECT *, DATEDIFF(YEAR, BIRTHDATE, GETDATE()) AS 'AGE' FROM LAB01
WHERE
DATEDIFF(YEAR, BIRTHDATE, GETDATE()) BETWEEN 40 AND 45
AND GENDER = 'E'; 
```

Bu şekilde soru çözülmüş olur.

***SORU-2:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2022.png)

Sorunun çözümü ise şu şekildedir:

```sql
/*
	bir tarih verisi içerisinden ay verisini string olarak da alabiliriz sıralama sayısı olarak da alabiliriz.
	sıralama sayısı olarak almak istersek --> DATEPART()
	string olarak almak istersek --> DATENAME()
*/

SELECT *, DATEPART(MONTH, BIRTHDATE) AS 'MONTH' FROM LAB02 -- sayısal olarak ayı aldık.

-- sorgumuzda istenilen mayıs ayında doğanların listesini almak istersek ise where kullanabiliriz. (mayıs 5. aydır)

SELECT *, DATEPART(MONTH, BIRTHDATE) AS 'MONTH' FROM LAB02
WHERE
DATEPART(MONTH, BIRTHDATE) = 5; -- 5. ayda yani mayıs ayında doğanları seç

-- datename() kullanarak çözümü ise şu şekildedir:

SELECT *, DATENAME(MONTH, BIRTHDATE) AS 'MONTH' FROM LAB02 -- karakter verisi olarak seçer

-- sorguda istenilen mayıs ayı filtrelemesi

SELECT *, DATENAME(MONTH, BIRTHDATE) AS 'MONTH' FROM LAB02
WHERE
DATENAME(MONTH, BIRTHDATE) = 'May' -- mayıs ayına ait filtreleme ise bu şekilde gerçekleştirilir.
```

***SORU-3:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2023.png)

Sorunun çözümü ise şu şekildedir:

```sql
 /*
	bir tarih verisi içerisinden ay verisini string olarak da alabiliriz sıralama sayısı olarak da alabiliriz.
	sıralama sayısı olarak almak istersek --> DATEPART()
	string olarak almak istersek --> DATENAME()
*/

SELECT *, DATEPART(MONTH, BIRTHDATE) AS 'MONTH' FROM LAB02 -- sayısal olarak ayı aldık.
/*
	yıl bilgisini almak için datepart fonksiyonunu kullanabiliriz.
*/

SELECT YEAR(DATE_) AS 'YEAR', -- istenilen tarihlerin seçimi
MONTH(DATE_) AS 'MONTH',
SUM(TOTALPRICE) AS 'TOTALSALES' -- toplam satış miktarı hesaplanması

FROM LAB03
GROUP BY YEAR(DATE_), MONTH(DATE_) -- tarihlere göre gruplanması

-- sorunun bizden istediği senenin 2022 olması durumuydu buna göre sorguyu tekrar düzenlersek:

SELECT YEAR(DATE_) AS 'YEAR',
MONTH(DATE_) AS 'MONTH',
SUM(TOTALPRICE) AS 'TOTALSALES' FROM LAB03
WHERE YEAR(DATE_) = 2022 -- YILIN 2022 OLARAK AYARLANMASI
GROUP BY YEAR(DATE_), MONTH(DATE_)
```

Bu şekilde çözümü sağlamış oluruz.

***SORU-4:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2024.png)

Sorunun çözümü şu şekildedir:

```sql
SELECT * FROM LAB04

/*
	bir tarih verisi içerisinde haftaları datepart ile seçebiliriz DW ise haftanın gününü bize verir.
*/

SET LANGUAGE Turkish -- haftanın günlerini doğru ve türkçe sıralaması için veri dilini türkçeye ayarladık.

SELECT 
	DATENAME(DW, DATE_) AS 'DAY_NAME', -- bizden istenilen duruma göre haftanın gün ismini dw ile seçtik.
	SUM(TOTALPRICE) AS 'TOTAL SALES' -- toplam satış miktarını aldık
FROM LAB04
	GROUP BY DATEPART(DW, DATE_), DATENAME(DW, DATE_) -- pazartesi, salı diye satışları grupladık
	ORDER BY DATEPART(DW, DATE_) -- pazartesi, salı, çarşamba diye doğru bir sırada listelemek için order by kullandık ve sıraladık.
```

Bu şekilde çözümü sağlamış oluruz.

***SORU-5:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2025.png)

Sorunun çözümü şu şekildedir:

```sql
SELECT * FROM LAB05

-- saat aralığını nasıl belirleriz ? DATEPART HOUR KULLANILABİLİR.

SELECT DATEPART(HOUR, '2022-06-25 21:59:34.000')

-- buna uygun olarak sorguyu düzenleyerek gidelim

SELECT DATEPART(HOUR, DATE_) AS 'HOUR', -- saat aralığı seçtik
SUM(TOTALPRICE) AS 'TOTALSALES' -- her saat aralığının toplam satış miktarını aldık
FROM LAB05 
WHERE CUSTOMERGENDER = 'K' AND -- cinsiyetinin kadın olması şartını sağladık bu birinci şarttı
DATEDIFF(YEAR, CUSTOMERBIRHTDATE, GETDATE()) BETWEEN 30 AND 50 -- ve seçilen kadınların yaş aralığını 30 ile 50 arasında belirttik
GROUP BY DATEPART(HOUR, DATE_) -- saatlere göre verileri gruplayıp
ORDER BY 2 DESC -- toplam satışa göre en yüksek fiyattan en düşük fiyata sıralama yaptık.

-- Ancak şöyle bir durum var ki soru bizden sadece ama sadece en yüksek satışa sahip olan saat dilimini istemişti
-- buna uygun olarak ise yapılabilecek en doğru karar top 1 fonksiyonunu yazarak listelemektir. 
-- sorgunun son hali ektedir:

SELECT TOP 1 -- sadece 1 kayıt
DATEPART(HOUR, DATE_) AS 'HOUR',
SUM(TOTALPRICE) AS 'TOTALSALES'
FROM LAB05
WHERE CUSTOMERGENDER = 'K' AND
DATEDIFF(YEAR, CUSTOMERBIRHTDATE, GETDATE()) BETWEEN 30 AND 50
GROUP BY DATEPART(HOUR, DATE_)
ORDER BY 2 DESC
```

***SORU-6:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2026.png)

Sorunun çözümü şu şekildedir:

```sql
/*
	öncelikle gün bilgisini almamız gerekir.
	sonrasında gün ve ay kırılımlarına göre verileri alabiliriz.
	öncelikle gün bilgisinden başlayalım:
*/

-- gün bilgisi için datepart kullanabiliriz.

SELECT DATEPART(DAY, DATE_) AS 'DAYS',* FROM LAB06

-- gün ve ay kırılımlarına göre listeleme yapabilmek ve toplam satışı almak için ise yine datepart fonksiyonlarıyla çözümleriz.

SELECT 
	YEAR(DATE_) AS 'YEARS',
	MONTH(DATE_) AS 'MONTHS',
	SUM(TOTALPRICE) AS 'TOTALSALES' 
FROM LAB06
GROUP BY YEAR(DATE_), MONTH(DATE_)

-- yapı kuruldu ancak her ayın 10 ile 15 diye bir şartımız var onu sağlamamızı istersek

SELECT 
	YEAR(DATE_) AS 'YEARS',
	MONTH(DATE_) AS 'MONTHS',
	SUM(TOTALPRICE) AS 'TOTALSALES'
FROM LAB06
WHERE DATEPART(DAY, DATE_) BETWEEN 10 AND 15
GROUP BY YEAR(DATE_), MONTH(DATE_)

-- aylara göre sıralamayı da gerçekleştirirsek

SELECT 
	YEAR(DATE_) AS 'YEARS',
	MONTH(DATE_) AS 'MONTHS',
	SUM(TOTALPRICE) AS 'TOTALSALES'
FROM LAB06
WHERE DATEPART(DAY, DATE_) BETWEEN 10 AND 15
GROUP BY YEAR(DATE_), MONTH(DATE_)
ORDER BY 1,2 

-- ayların sadece sayısı değil yazı olarak da gösterilmesini istersek eğer datename kullanabiliriz.

SELECT 
	YEAR(DATE_) AS 'YEARS',  -- yıl bilgisini aldık
	MONTH(DATE_) AS 'MONTHS', -- ay bilgisini aldık (sayısal olarak)
	DATENAME(MONTH, DATE_) AS 'MONTH_NAME', -- ay bilgisini aldık (karakter olarak)
	SUM(TOTALPRICE) AS 'TOTAL_SALES' -- toplam satış bilgisini hesaplattık
FROM LAB06
	WHERE DATEPART(DAY, DATE_) BETWEEN 10 AND 15 -- ayın 10 ve 15 günleri arasındaki ifadeleri filtreledik
	GROUP BY YEAR(DATE_), MONTH(DATE_), DATENAME(MONTH, DATE_) -- grupladık
	ORDER BY 1,2 -- yıl ve ay sütunlarına göre sıralama yaptırdık.

-- sorgunun son hali aşağıdaki gibidir:

SELECT 
	YEAR(DATE_) AS 'YEARS', 
	MONTH(DATE_) AS 'MONTHS',
	DATENAME(MONTH, DATE_) AS 'MONTH_NAME',
	SUM(TOTALPRICE) AS 'TOTAL_SALES'
FROM LAB06
	WHERE DATEPART(DAY, DATE_) BETWEEN 10 AND 15
	GROUP BY YEAR(DATE_), MONTH(DATE_), DATENAME(MONTH, DATE_)
	ORDER BY 1,2

```

***SORU-7:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2027.png)

Sorunun çözümü şu şekildedir:

```sql
SELECT * FROM LAB07

/* 
	bugün doğum günü olanların listesini yapacağız.
	bugünün tarihini getdate() ile alabiliriz.
	iki tarihin arasındaki kurguyu ise günleri ve ayları where sorgusuyla doğrulatabiliriz.
*/

-- Bugünün tarihi içerisinden günü ve ayı alalım.

SELECT DATEPART(MONTH, GETDATE()), DATEPART(DAY, GETDATE())

-- veri setinin içerisinde gün ve ay bilgilerini nasıl alabiliriz?

SELECT *, 
	DATEPART(MONTH, BIRTHDATE) AS 'MONTH',
	DATEPART(DAY, BIRTHDATE) AS 'DAY'
FROM LAB07

-- şartımız olan bugünün tarihiyle kıyaslayalım

SELECT *,
	DATEPART(MONTH, BIRTHDATE) AS 'MONTH', -- veri setindeki ay bilgisi
	DATEPART(DAY, BIRTHDATE) AS 'DAY' -- veri setindeki gün bilgisi
FROM LAB07
WHERE
	DATEPART(MONTH, BIRTHDATE) = DATEPART(MONTH, GETDATE()) -- sistem güncel tarihindeki ay ile veri setindeki ay bilgisi eşitliği
	AND
	DATEPART(DAY, BIRTHDATE) = DATEPART(DAY, GETDATE()) -- sistem güncel tarihindeki gün ile veri setindeki gün bilgisi eşitliği

-- Sorgunun son hali aşağıdaki gibidir:

SELECT *,
	DATEPART(MONTH, BIRTHDATE) AS 'MONTH', 
	DATEPART(DAY, BIRTHDATE) AS 'DAY'
FROM LAB07
WHERE
	DATEPART(MONTH, BIRTHDATE) = DATEPART(MONTH, GETDATE()) 
	AND
	DATEPART(DAY, BIRTHDATE) = DATEPART(DAY, GETDATE())
```

***SORU-8:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2028.png)

Sorunun çözümü şu şekildedir:

```sql
/*
	soruya göre biz bu ayın ve mağazaların toplam satış verisini listeleyeceğiz.
	Bunun için şu adımları izleyebiliriz.
*/

-- bugün yapılan satışlar

SELECT * FROM LAB08
	WHERE
YEAR(DATE_) = YEAR(GETDATE()) AND MONTH(DATE_) = MONTH(GETDATE())

-- hem şehre hem de toplam satış miktarına göre nasıl düzenleyebiliriz

SELECT 
	CITY, 
	SUM(TOTALPRICE) AS 'TOTALSALES'
FROM LAB08
WHERE
	YEAR(DATE_) = YEAR(GETDATE()) AND MONTH(DATE_) = MONTH(GETDATE())
GROUP BY CITY
ORDER BY 1

-- soruda bir önceki aydaki verilerden bahsediyorduk getdate()-1 her zaman bir öncekini verir.

SELECT SUM(TOTALPRICE) FROM LAB08 WHERE CITY = 'Adana'
AND YEAR(DATE_) = YEAR(GETDATE()) AND MONTH(DATE_) = MONTH(GETDATE()-1)

-- SORGUNUN SON HALİ AŞAĞIDAKİ GİBİDİR:

SELECT 
	CITY, 
	SUM(TOTALPRICE) AS 'TOTALSALES',
( -- SUBQUERY
	SELECT SUM(TOTALPRICE) FROM LAB08 WHERE CITY = L.CITY
	AND YEAR(DATE_) = YEAR(GETDATE()) AND MONTH(DATE_) = MONTH(GETDATE())-1
)
FROM LAB08 L -- ALLIANCE
WHERE
	YEAR(DATE_) = YEAR(GETDATE()) AND MONTH(DATE_) = MONTH(GETDATE())
GROUP BY CITY
ORDER BY 1
```

***SORU-9:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2029.png)

Sorunun çözümü şu şekildedir:

```sql
SELECT * FROM LAB09

-- yeni bir sütun ekleyelim

-- ALTER TABLE LAB09 ADD BIRTHDATE2 DATE

-- tarih dönüşümü için şu şekilde bir yapı kurmamız gerekebilir.

SELECT '26.09.1988', '1998-09-26' -- olarak dönüştürmemiz gerekecek. 

-- bunun için 

SELECT RIGHT('26.09.1988',4) -- yıl için
SELECT SUBSTRING('26.09.1988',4,2) -- ay için
SELECT LEFT('26.09.1988',2) -- gün için

-- hepsini yan yana yazalım:

SELECT RIGHT('26.09.1988',4)+'-'+SUBSTRING('26.09.1988',4,2)+'-'+LEFT('26.09.1988',2)

-- UPDATE ile kurgularsak

UPDATE LAB09 SET BIRTHDATE2 = RIGHT('26.09.1988',4)+'-'+SUBSTRING('26.09.1988',4,2)+'-'+LEFT('26.09.1988',2)
WHERE ID = 2

-- DATEFROMPARTS ile çözersek

SELECT DATEFROMPARTS(RIGHT('26.09.1988',4),SUBSTRING('26.09.1988',4,2),LEFT('26.09.1988',2))

-- update sorgusuna uygun yazarsak ise

UPDATE LAB09 SET BIRTHDATE2 = DATEFROMPARTS(RIGHT('26.09.1988',4),SUBSTRING('26.09.1988',4,2),LEFT('26.09.1988',2))
WHERE ID = 2

-- yine aynı yöntemi izleyerek o zaman üç numaralı kayıt için bu ifadeyi gerçekleştirelim:

UPDATE LAB09 SET BIRTHDATE2 = DATEFROMPARTS(RIGHT(BIRTHDATE,4), SUBSTRING(BIRTHDATE,4,2), LEFT(BIRTHDATE,2))
WHERE ID = 3

-- bütün kayıtları tekrardan güncelleyelim

UPDATE LAB09 SET BIRTHDATE2 = DATEFROMPARTS(RIGHT(BIRTHDATE,4), SUBSTRING(BIRTHDATE,4,2), LEFT(BIRTHDATE,2)) -- hata alınır. çünkü yanlış formatlanmış veriler var

-- farklı bir yöntem izleyerek tekrar yazalım

UPDATE LAB09 SET BIRTHDATE2 = RIGHT(BIRTHDATE,4)+'-'+SUBSTRING(BIRTHDATE,4,2)+'-'+LEFT(BIRTHDATE,2)
/*
	yine hata alındı
	Msg 241, Level 16, State 1, Line 46
	Karakter dizesinden tarihe ve/veya saate dönüştürülürken işlem başarısız oldu. (çünkü bozuk verilerim var)
*/

-- peki bozuk verilerden kaç tane olduğunu tespit edelim:

SELECT *, 
RIGHT(BIRTHDATE,4)+'-'+SUBSTRING(BIRTHDATE,4,2)+'-'+LEFT(BIRTHDATE,2)
FROM LAB09
WHERE ISDATE(RIGHT(BIRTHDATE,4)+'-'+SUBSTRING(BIRTHDATE,4,2)+'-'+LEFT(BIRTHDATE,2)) = 0

-- buna göre isdate() sonucunda 1 dönenleri çalıştırırsak ve bozuk verileri göz ardı edersek

UPDATE LAB09 SET BIRTHDATE2 = DATEFROMPARTS(RIGHT(BIRTHDATE,4),SUBSTRING(BIRTHDATE,4,2),LEFT(BIRTHDATE,2))
FROM LAB09
WHERE ISDATE(RIGHT(BIRTHDATE,4)+'-'+SUBSTRING(BIRTHDATE,4,2)+'-'+LEFT(BIRTHDATE,2)) = 1
```

### TİP DÖNÜŞTÜRME FONKSİYONLARI

Herhangi bir tipteki verileri başka bir tipteki verilere dönüştürmemize olanak sağlayan bu fonksiyonlarda genel olarak altı adet fonksiyon kullanılır:

- Convert
- Cast
- Parse
- Try_Cast
- Try_Convert
- Try_Parse

Bunların içerisinde en çok kullanılan fonksiyonlar Convert ve Cast fonksiyonlarıdır.

### CAST ve CONVERT

Tip dönüştürmede oldukça sıklıkla kullanılan fonksiyonların başında gelen bu fonksiyonlarda temel olarak farklı türdeki veri tipini başka bir veri tipine uygun olarak dönüştürmeyi olanak sağlamaktadır.

```sql
-- CAST ifadesi tip dönüştürme fonksiyonları arasında en çok kullanılan fonksiyonlardan bir tanesidir.
-- Bu fonksiyonda temel olarak dönüştürülmesi gereken veri tipine uygun olarak verilerin türünü dönüştürebiliriz.

-- Örneğin: 
SELECT CAST('2022-12-26' AS DATE) -- String bir ifadeyi date türüne döndürdü

-- peki date türüne uygun olmayan bir yapıyı dönüştürebilir miydi (gün-ay-yıl)

SELECT CAST('24-09-2002' AS DATE)

/*
	(hayır dönüştüremez.)
	Msg 241, Level 16, State 1, Line 9
	Conversion failed when converting date and/or time from character string.
*/

-- peki bu veriyi datetime tipine dönüştürebilir miyiz

SELECT CAST('2022-12-26' AS datetime) -- 2022-12-26 00:00:00.000 (dönüştürdü.)

-- veriyi integer'a dönüştürseydik.

SELECT CAST('2022-12-26' AS INT) -- hata alınır çünkü integer'a uygun değildir. ancak aradaki ayraçları kaldırırsak

SELECT CAST('20221226' AS INT) -- dönüştürür (20221226)

-- CONVERT FUNCTION

SELECT CONVERT(DATE, '2022-12-27') -- yine aynı şekilde dönüştürüldü.

-- yine aynı şekilde veriyi integera dönüştürsek

SELECT CONVERT(INT, '2022-12-27') -- hata alınır çünkü int'e uygun değildir.

SELECT CONVERT(INT, '20221227') -- integera dönüştürdü

-- aslında birçok veri tipleri birbirine dönüştürülebilir.

-- Örneğin bir stringi binary'e dönüştürebiliriz.

SELECT CONVERT(binary, 'Merhaba') -- kelimenin binary karşılığı (0x4D6572686162610000000000000000000000000000000000000000000000)

-- yine aynı şekilde binary ifadeyi string2e dönüştürelim

SELECT CONVERT(varchar(100), 0x4D6572686162610000000000000000000000000000000000000000000000) -- Merhaba

-- mesela float-int ilişkisine bakalım

SELECT CONVERT(float, 72) -- dönüştürdü (integerdan-floata dönüştürdü)

SELECT CONVERT(int, 74.12) -- dönüştürdü (floattan-integera dönüştürdü.) -74

-- diyelim ki bugünün tarihi text olarak yazdıralım

SELECT GETDATE() -- anlık saati ve tarihi verir

SELECT 'Bugünün Tarihi: '+ CONVERT(varchar, CONVERT(DATE, GETDATE()))
SELECT 'Şuan da saat: '+ CONVERT(varchar, CONVERT(TIME, GETDATE()))

-- bunun tabiki daha da kısayolu vardır o da şu şekildedir:

SELECT CONVERT(varchar, GETDATE()) -- uzun bir ifade verir (Jun 28 2024  2:39PM)

SELECT CONVERT(varchar, GETDATE(),103) -- üçüncü ifadeyle istediğim formatı belirledim (28/06/2024)

-- bu şekilde 100'den başlayarak farklı formatlarda gösterim sağlayabilirim

SELECT CONVERT(varchar, GETDATE(),100) -- Jun 28 2024  2:42PM
SELECT CONVERT(varchar, GETDATE(),101) -- 06/28/2024
SELECT CONVERT(varchar, GETDATE(),102) -- 2024.06.28
SELECT CONVERT(varchar, GETDATE(),103) -- 2024.06.28
SELECT CONVERT(varchar, GETDATE(),104) -- 2024.06.28
SELECT CONVERT(varchar, GETDATE(),105) -- 28-06-2024
SELECT CONVERT(varchar, GETDATE(),106) -- 28 Jun 2024
SELECT CONVERT(varchar, GETDATE(),107) -- Jun 28, 2024
SELECT CONVERT(varchar, GETDATE(),108) -- 14:53:23
```

Kısaca bu fonksiyonları bu şekilde tanımlayabiliriz.

### TRY_CAST ve TRY_CONVERT

Cast ve Convert fonksiyonlarıyla aynı işleme sahiptir. Tek farkı try ifadesiyle tip dönüşümlerinde hata yönetimi sağlaması konusunda bizlere yardımcı olmaktadır. Önceki örneklerde ele aldığımız gibi örneğin tip dönüşümünde hata alındığı zaman bizlere dönüştürme hatası olarak sonuç döndürülüyordu. Burada ise sistem bize hata döndürmez. Tip dönüşümüne uygun olmayan yapı için null değer döndürür. Bu şekilde büyük çaptaki verilerde daha düzgün çalışmasına olanak sağlamaktadır.

```sql
-- Öncelikle bir tarih formatını date formatına çevirmeyi deneyelim

SELECT CAST('2022-16-18' AS DATE) -- hata alınır çünkü 16. ay diye bir yapı yoktur.
/*
	Msg 241, Level 16, State 1, Line 3
	Conversion failed when converting date and/or time from character string.
*/
SELECT CONVERT(DATE, '2022-16-18') -- hata alınır çünkü 16. ay diye bir yapı yoktur.
/*
	Msg 241, Level 16, State 1, Line 3
	Conversion failed when converting date and/or time from character string.
*/

-- peki aynı sorunu try_cast ve try_convert olarak yapalım.

SELECT TRY_CAST('2022-16-18' AS DATE) -- format yanlıştır ama hata vermez cevap (NULL)

SELECT TRY_CONVERT(DATE, '2022-16-18') -- tarih formatına uygun değildir yanlıştır ama hata vermez cevap (NULL)

-- peki doğru formatta veriler girildiği zaman nasıl bir çıktı alırız.

SELECT TRY_CAST('2022-08-16' AS DATE) -- tarih formatı doğrudur ve cevap: (2022-08-16)

SELECT TRY_CONVERT(DATE, '2022-08-16') -- tarih formatı doğrudur dönüştürme tamamlandı ve cevap (2022-08-16)

/*
	try_cast ve try_convert fonksiyonları aynı cast ve convert gibi kullanılır.
	Sadece tek farkları cast ve convert dönüştüremediği zamanlarda hata verirken,
	try_cast ve try_convert hata vermez dönüştürülemeyen verileri null olarak girer.
	Bu şekilde sistem hatası almadan veri dönüştürme işlemlerini gerçekleştirmemize olanak sağlar.
*/ 
```

### DÖNÜŞTÜRME FONKSİYONLARI ALIŞTIRMALAR

***ALIŞTIRMA - 1:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2030.png)

Bunun çözümünü şu şekilde gerçekleştirebiliriz:

```sql
SELECT * FROM LAB01

/*
	tarih verisini çekmemiz için convert date kullanabiliriz.
	saat verisini çekmemiz için ise convert time kullanabiliriz.
*/

SELECT *,
CONVERT(DATE, DATE_) AS 'TARIHLER', -- tarih formatını verir
CONVERT(TIME, DATE_) AS 'SAAT' -- saat formatını verir
FROM LAB01

-- farklı bir yöntem olarak 

/*
	tarih verisini çekmemiz için cast date kullanabiliriz.
	saat verisini çekmemiz için ise cast time kullanabiliriz.
*/

SELECT *,
CAST(DATE_ AS DATE) AS 'TARIHLER', -- tarih formatını verir
CAST(DATE_ AS TIME) AS 'SAAT' -- saat formatını verir
FROM LAB01

-- peki bu date_ alanını string olarak yazdırmak isteseydik nasıl yapabilirdik.

SELECT *,
CONVERT(DATE, DATE_) AS 'TARIHLER', -- tarih formatını verir
CONVERT(TIME, DATE_) AS 'SAAT', -- saat formatını verir
CONVERT(VARCHAR, DATE_, 103) AS 'STRDATE', -- tarih formatını string yapısı olarak verir örn. (06/02/2019)
CONVERT(VARCHAR, DATE_, 108) AS 'TIMESTR' -- saat formatını string yapısı olarak verir örn. (10:54:58)
FROM LAB01
```

Bu şekilde sorunu çözmüş oluruz.

***ALIŞTIRMA - 2:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2031.png)

Bunun çözümünü adım adım gerçekleştirelim:

```sql
SELECT * FROM LAB02

/*
	soruda bizden istenilen yeni bir alan açmak buna göre alter table kullanarak yeni bir alan açalım
	sonrasında öncelikle convert date kullanarak işlemi gerçekleştirelim
	eğer hata alırsak buna göre try convert date kullanarak yine deneyelim
*/

-- yeni bir alan açmak için 

-- ALTER TABLE LAB02 ADD BIRTHDATE2 DATE --> alanı açtık (Commands completed successfully.)

-- alanı görüntüleyelim 

SELECT * FROM LAB02

-- convertle bir deneyelim ve alanı güncelleyelim
UPDATE LAB02 SET BIRTHDATE2 = CONVERT(DATE, BIRTHDATE) -- hata aldık. çünkü date türüne uygun olmayan veriler var
/*
	Msg 241, Level 16, State 1, Line 18
	Conversion failed when converting date and/or time from character string.
*/

-- hata kontrolünü yaparak güncelleyelim

UPDATE LAB02 SET BIRTHDATE2 = TRY_CONVERT(DATE, BIRTHDATE) -- tarih formatına uygun olanları dönüştürdü uygun olmayanlara null dedi
```

Bu şekilde sorunu çözmüş oluruz.

***ALIŞTIRMA - 3:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2032.png)

Bunun çözümünü adım adım gerçekleştirelim:

```sql
SELECT * FROM LAB03

/*
	akıllı barkod oluşturacağız.
	categorycode-itemcode-year-month-day-hour-minute-second şeklinde oluşacak.
*/

SELECT  
CATEGORY1CODE +'-'+REPLICATE('0', 6-LEN(ITEMCODE))+ITEMCODE+'-'+
REPLACE(CONVERT(VARCHAR, GETDATE(), 102), '.','-')+
REPLACE(CONVERT(VARCHAR, GETDATE(), 108), ':', ''),
* FROM LAB03 WHERE ITEMCODE = 1
```

Bu şekilde sorunu çözmüş oluruz.

### MATEMATİK FONKSİYONLARI

TSQL’de matematiksel olarak işlemleri gerçekleştirebilmek için çok fazla fonksiyonlar vardır. Bazı fonksiyonları bu bölümde ele alacağız:

- ABS Function: Bir sayının mutlak değerini almaktadır. Mutlak değer denilen ifadede bir sayı eğer negatifse pozitife dönüşür. Pozitif ise pozitif olarak kalmaya devam edecektir.
- SIGN Function: Bir sayının yönünü belirtmek için kullanılan fonksiyondur. Yönden kastımız tabii ki sayının negatif mi yoksa pozitif mi olduğu durumlardır. Örneğin (-21,8) fonksiyonu negatif değeri temsil ederken, (21,8) pozitif yönü temsil etmektedir.

Bu iki fonksiyonun kullanımı şu şekildedir:

```sql
SELECT ABS(28) -- (28)

SELECT ABS(-28) -- (28)

SELECT ABS(-28.78) -- (28.78)

SELECT ABS(28.78) -- (28.78) 

-- SIGN FUNCTION

/*
	Fonksiyon içerisinde belirtilen sayı eğer pozitifse (1) değeri döndürülür.
	Eğer sayı negatifse sonuç olarak (-1) değeri döndürülür.
	Eğer sayı sıfırsa cevap da 0 olarak gelecektir.
	Ayrıca
	Decimal karakterlerde virgülden sonra kaç karakter varsa sonuç değerinin yanına o kadar sıfır koyulur.
	Örneğin (28.78) değeri çıktı olarak (1.00) şeklinde dönecektir.
	Bu durum negatif sayılarda da geçerlidir.
	Örneğin (-78.9078) sayısının sonuç değeri (-1.0000) olarak çıkacaktır.
*/

SELECT SIGN(28) -- (1)

SELECT SIGN(-28) -- (-1)

SELECT SIGN(0) -- (0)

SELECT SIGN(28.98) -- (1.00)

SELECT SIGN(-28.98) -- (-1.00)

SELECT SIGN(1982.938493739) -- (1.000000000)

SELECT SIGN(-1982.938493739) -- (-1.000000000)
```

> ABS ve SIGN fonksiyonları genellikle farklı zamanlarda alınmış veriler arasındaki değişim frekansını bulmak için kullanılır. Örneğin aylık bazda satışlarda bazen düşüşler bazen yükselişler gibi farklı farklı dalgalanmalar olabilir. Bu dalgalanmaları yönlerinden bağımsız olarak analiz etmek için ABS fonksiyonu kullanılır.
> 

> SIGN fonksiyonu ise yine aynı mantıkla çalışmaktadır. Yine aynı şekilde satış verileri üzerindeki dalgalanmaların yönünü öğrenebilmemiz için sıklıkla kullanılabilen fonksiyonlardan bir tanesidir.
> 

Matematik fonksiyonlarına ROUND, FLOOR ve CEILING fonksiyonları kümesiyle devam edelim. Bu fonksiyon kümelerinde sayı yuvarlama işlemleri gerçekleştirilir. Bu fonksiyonları adım adım ele alalım:

- ROUND Function: İçerisinde iki adet parametre alan bu fonksiyonda virgülden sonra kaç adet karakter alınacağını biz belirleyebiliriz. Örneğin (48.8765) virgülden sonra 2 karakter alınacağı belirtirsek virgülden sonra 2 sayı alır. Burada yuvarlama işlemini de (0.50) sayısına göre belirler. Örneğin (48.8765) sayısında 2 digit olarak 87 sayısı alınır. Ancak bu digitlerden sonra 65 sayısı (0.50)’den büyük olduğu için sonuç (48.8800) olarak verecektir. Eğer alınan iki digit sayısı (0.50)’den küçük olsaydı bu sefer sayıyı bir aşağı yuvarlardı. Örneğin (48.8740) → (48.8700). Eğer sayı (0.50) ye eşit olsaydı yine aynı şekilde yukarı yuvarlayacaktı. Örneğin (48.8750) → (48.8800)
- FLOOR Function: Sayıyı her zaman aşağı yönlü olarak yuvarlayacaktır. Örneğin (156.48) → (156) veya (179.89) → (179) olarak işlemi gerçekleştirecektir.
- CEILING Function: Floor fonksiyonunun tam olarak tersidir. Burada ise sayıyı her zaman bir üst ondalık sayıya yuvarlayacaktır. Örneğin (156.89) → (157) veya (157.12) → (158) şeklinde sonuçlar vermektedir.

Bu fonksiyonlarla ilgili şu örneklere bakabiliriz:

```sql
/*
	ROUND, FLOOR, CEILING FUNCTIONS (YUVARLAMA FONKSIYONLARI)
*/

SELECT ROUND(179.9835, 2) -- (sonu 35 olduğu için bir aşağı yuvarladı ve o son iki sayıyı sildi sıfır yazdı) cevap (179.9800)

SELECT ROUND(179.9850, 2) -- (sonu 50 olduğu için bir yukarı yuvarladı ve o son iki sayıyı sildi sıfır yazdı) cevap (179.9900)

SELECT ROUND(179.9890, 2) -- (sonu 90 olduğu için bir yukarı yuvarladı ve o son iki sayıyı sildi sıfır yazdı) cevap (179.9900)

/* peki virgülden sonra neden sıfır yazdı bu sayıları silemez miyiz gibi bir soru aklınıza takılırsa
	burada değer decimal türünde olduğu için decimal değer verir eğer ki bu içerisindeki değeri floata dönüştürürsek 
	cevap da float olarak dönüş yapacaktır.
*/

SELECT CONVERT(FLOAT, ROUND(179.9890, 2)) -- (90) yukarı yönlü ondalık hesaplamasını yaptırdım sonra floata dönüştürdüm cevap (179,99)

SELECT CONVERT(FLOAT, ROUND(179.9850, 2)) -- (50) yukarı yönlü ondalık hesaplamasını yaptırdım sonra floata dönüştürdüm cevap (179,99)

SELECT CONVERT(FLOAT, ROUND(179.9830, 2)) -- (30) aşağı yönlü ondalık hesaplamasını yaptırdım sonra floata dönüştürdüm cevap (179,98)

-- FLOOR FUNCTION -- (her koşulda bir alt ondalığa yuvarlama)

SELECT FLOOR(179.9083) -- 179

SELECT FLOOR(178.65) -- 178

SELECT FLOOR(-178.65) -- negatif sayılarda aşağı yuvarladı ve sonuç (-179)

SELECT FLOOR(-178.45) -- negatif sayılarda aşağı yuvarladı ve sonuç (-179)

-- CEILING FUNTION -- (her koşulda bir üst ondalığa yuvarlama)

SELECT CEILING(179.9083) -- bir üst ondalık sayıya yuvarladı (180)

SELECT CEILING(178.1500) -- bir üst ondalık sayıya yuvarladı (179)

SELECT CEILING(-178.65) -- negatif sayılarda yukarı yuvarladı ve sonuç (-178) (sayı 0'a yaklaştıkça büyür.)

SELECT CEILING(-178.45) -- negatif sayılarda yukarı yuvarladı ve sonuç (-178) 
```

> Bu fonksiyonların neredeyse tamamı veri analizlerinde sıklıkla kullanılan fonksiyonların başında gelmektedir.
> 

Matematik fonksiyonlarına RAND fonksiyonuyla devam edelim. Bu fonksiyonda 0 ile 1 arasında rastgele bir adet sayı üretmek için kullanılır.

Şu örnekler üzerinden gidelim:

```sql
/*
	RAND() --> 0-1 arasında rastgele sayılar üretir.
*/

SELECT RAND() -- 0,750020993827269

SELECT RAND() -- 0,14228996696352

SELECT RAND() -- 0,26659128423981

-- peki belirli bir sayı arasında değerleri nasıl üretebiliriz ?

SELECT RAND()*100 -- (0-100 arasında değerler üretir.) 33,1685229863244

SELECT RAND()*100 -- (0-100 arasında değerler üretir.) 17,4923769309541

SELECT RAND()*50 -- (0-50 arasında değerler üretir.) 44,1225391265993

-- peki 50-100 arasında değer ürettirirsek

SELECT 50+RAND()*100 -- (50-100 arasında değerler üretir.) 55,0688982925827

SELECT 50+RAND()*100 -- (50-100 arasında değerler üretir.) 80,4596849637517

-- sayıyı decimal olarak değil integer olarak getirtmek istiyorsak ise convert kullanabiliriz.

SELECT CONVERT(INT,50+RAND()*100) -- (50-100 arasında integer değer üretti.) 56

SELECT CONVERT(INT,RAND()*100) -- (0-100 arasında integer değer üretti.) 32
```

> Genel anlamda matematiksel fonksiyonları bu şekilde ele alabiliriz.
> 

Birkaç örnekle bu konuyu pekiştirelim:

***SORU-1:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2033.png)

Bu sorunun çözümü şu şekildedir:

```sql
SELECT * FROM LAB01

SELECT CUSTOMERID, SUM(AMOUNT) AS 'bakiye' FROM LAB01
WHERE CUSTOMERID = 55
GROUP BY CUSTOMERID

SELECT -5109754 + 5342574 -- giden miktardan gelen miktarın çıkarılması sonucu bulunan bakiye

-- para hacmini bulabilmek için ise bu değerin pozitif olarak toplanması gereklidir. yani

SELECT ABS(-5109754) + ABS(5342574) -- yani toplam para hacmi --> 10452328

-- peki bunu sorguda yaparsak

SELECT CUSTOMERID, 
SUM(AMOUNT) AS 'BALANCE',
SUM(ABS(AMOUNT)) AS 'MONEY_VOLUME'
FROM LAB01
GROUP BY CUSTOMERID
```

Bu şekilde sorun çözülmüş olmaktadır.

***SORU-2:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2034.png)

Bu sorunun çözümü şu şekilde olmaktadır:

```sql
SELECT * FROM LAB02 -- 299 toplam kayıt sayısı

-- rastgele olarak 1-299 arasında iki sayı üretirsem bu eşleşmeyi sağlamış olurum

SELECT RAND()*299 -- ondalıklı üretir. 

SELECT CONVERT(INT, RAND()*299) -- 239

-- bunu sorgunun içerisinde where şartıyla getirtsek

SELECT * FROM LAB02
WHERE
ID = CONVERT(INT, RAND()*299) 

-- Angers VS Moreirense FC şeklinde kurgulayabiliriz.

-- bir başka yöntem ise NEWID() kullanmaktır. 
-- NEWID() ise yeni bir global identify üretir.

SELECT NEWID()

-- order by ile rastgelelik sıralamasında newid() kullanırsak ise

SELECT TOP 1 * FROM LAB02 
ORDER BY
NEWID() -- LIV - Liverpool -131

-- bu şekilde de çözmüş oluruz.
```

Bu şekilde istenilen sorgu kurgulanmış olur.

***SORU-3:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2035.png)

Bu sorunun çözümü şu şekilde yapılabilir:

```sql
SELECT * FROM LAB03

SELECT 
CATEGORY1+'>'+CATEGORY2+'>'+CATEGORY3+'>'+CATEGORY4 CATEGORY,
SUM(TOTALPRICE) AS 'TOTAL_SALES',
CONVERT(INT, SUM(TOTALPRICE)) AS 'TOTAL_SALES_INT',
FLOOR(SUM(TOTALPRICE)) AS 'TOTAL_SALES_FLOOR',
CEILING(SUM(TOTALPRICE)) AS 'TOTAL_SALES_CEILING',
ROUND(SUM(TOTALPRICE), 0) AS 'TOTAL_SALES_ROUND'
FROM LAB03
GROUP BY CATEGORY1,CATEGORY2,CATEGORY3,CATEGORY4
ORDER BY 1
```

Bu şekilde sorun çözülmüş olur.

## TSQL PROGRAMLAMAYA GİRİŞ

Bu bölümde şu konuları ele alacağız:

- Değişkenler
- Şart Blokları
- Döngüler
- Hata Yönetimi
- Cursor Kavramı

### Değişkenler

Bütün programlama dillerinde olan değişkenler, belirli sayısal veya karaktersel verileri içerisinde barındıran bir yapıdır. Bu bölümde TSQL ile değişkenler yapıları ele alınacaktır. Bu bölümde işlenecek konular şu şekildedir:

- Değişken kavramı
- Değişken tanımlama
- Değişkene değer atama
- Varsayılan değer tanımlama
- Değişkenden değer okuma
- SQL sorgusundan gelen değerden değişkene değer atama
- SQL sorgusu içinde değişkenleri kullanma

***DEĞİŞKEN KAVRAMI***

TSQL’de değişkenlerde farklı farklı özellikler mevcuttur. Bunları madde madde açıklayalım:

- TSQL’de bir değişken `DECLARE @SAYI1` şeklinde tanımlanır.
- AS ifadesinden sonra bu değişkenin hangi veri tipinde olduğu belirtilir. `DECLARE @SAYI1 AS INT` şeklinde kurgulanır.
- Değişkeni görüntülemek veya okumak için ise `SELECT @SAYI1` şeklinde yazılması gereklidir.
- Bir değişkene değer verme iki türlüdür: Birinci varsayılan olarak değer verilir. Örneğin, `DECLARE @SAYI1 AS INT = 15` şeklindedir. Diğerinde ise set edilerek değer girilebilir. Örneğin:  `DECLARE @SAYI1 AS INT SET @SAYI1 = 50`  gibi bir yapıda kurulabilir.
- İki değişken toplanılması istenirse ise bunu şu şekilde kurgulayabiliriz. `DECLARE @TOPLAM AS INT SET @TOPLAM = @SAYI1 + @SAYI2` bu şekilde iki sayı toplanmış olur.

<aside>
💡 Sayısal olarak değeri var olan bir değişkenle, içerisinde herhangi bir şekilde veri olmayan ***NULL*** bir değişken toplanırsa cevap ***NULL*** olur.

</aside>

Bu konuyla ilgili sorguları inceleyebilirsiniz:

```sql
/*
	 TSQL'de değişkenler DECLARE (@) işareti ile tanımlanır.
	 AS ifadesinden sonra değişkenin hangi veri tipinde olduğu belirtilir.
	 SET ile değişkenin değeri girilir.
	 SELECT @degisken ile ise değişken gösterilir.
*/

-- bir değişken tanımlayalım:

DECLARE @SAYI AS INT

-- bir değişkenin değerini girelim

DECLARE @SAYI1 AS INT
SET @SAYI1 = 15

-- bir değişken daha tanımlayalım:

DECLARE @SAYI2 AS INT
SET @SAYI2 = 20

-- bu iki değişkeni toplayalım:

DECLARE @TOPLAM AS INT
SET @TOPLAM = @SAYI1 + @SAYI2

-- bu değişkenleri ekranda gösterelim

SELECT @SAYI1, @SAYI2, @TOPLAM

-- bazı püf noktalar...

/*	değişkeni varsayılan olarak tanımlayabilirsin. */

DECLARE @SAYI5 AS INT=25

-- eğer bu ifade set edilerek yeni bir değer girilirse

DECLARE @SAYI6 AS INT=25
SET @SAYI6 = 30 -- EN SON GİRİLEN CEVAP 30 OLDUĞU İÇİN CEVAP 30'DUR.

-- tanımlı bir değişkenle tanımlı olmayan yani null olan değerler toplanırsa sonuç nedir

DECLARE @SAYI7 AS INT= 40 -- ilk sayı tanımlı

DECLARE @SAYI8 AS INT -- ikinci sayı boş değer yani null

DECLARE @TOPLA AS INT
SET @TOPLA = @SAYI7 + @SAYI8

SELECT @SAYI7,@SAYI8,@TOPLA -- cevap null

-- yani boş değerle dolu bir değer toplanırsa cevap NULL'dır.
```

TSQL’de değişkenler sadece sayısal olarak tanımlanmazlar. Aynı zamanda karakter verileri yani VARCHAR olarak da tanımlanabilirler. Sayısal kısımda olan özelliklerin ve kuralların tamamı karakter verileri yani varchar() türündeki değişkenlerde de geçerlidir.

Örnek sorgu parçasını inceleyiniz:

```sql
/*
	TSQL'de değişkenler sadece sayısal olarak tanımlanmaz.
	Karakter değişkenleri de tanımlanabilir.
*/

-- bir tane isim değişkeni oluşturalım:
DECLARE @AD AS VARCHAR(100)
	SET @AD = 'AHMET'

-- bir tane daha isim değişkeni oluşturalım:
DECLARE @SOYAD AS VARCHAR(100)
	SET @SOYAD = 'KILINÇ'

-- iki tane isim değişkenini toplayalım:
DECLARE @AD_SOYAD AS VARCHAR(200)
	SET @AD_SOYAD = @AD +' '+ @SOYAD

-- birleştirilmiş ifadenin toplam karakter sayısı yani uzunluğunu alalım:
DECLARE @UZUNLUK AS INT 
	SET @UZUNLUK = LEN(@AD_SOYAD)

-- sonuçları görüntüleyelim:
SELECT @AD, @SOYAD, @AD_SOYAD, @UZUNLUK

-- sayısal değişkenlerde olduğu gibi tanımlı bir değerle tanımsız olan bir değer toplanırsa sonuç NULL'dır.

DECLARE @isim as VARCHAR(100)
	-- SET @isim

DECLARE @soy_isim as VARCHAR(100)
	SET @soy_isim = 'BAŞAR'

DECLARE @isim_soyad as VARCHAR(200)
	SET @isim_soyad = @isim + ' '+ @soy_isim -- NULL

DECLARE @isim_uzunluk INT
	SET @isim_uzunluk = LEN(@isim_soyad) -- NULL

SELECT @isim, @soy_isim, @isim_soyad, @isim_uzunluk

-- default değer ise şu şekilde tanımlanır:

DECLARE @default_values AS VARCHAR(100) = 'BAŞARI' 
```

Bu şekilde string türündeki değişkenler oluşturulur.

Bir sonraki değişken türümüz ise en çok kullanılan veri tiplerinden biri olan DateTime veri tiplerinde olacaktır.

Date verileri üzerinden istediğimiz gibi değişkenler oluşturarak bunları efektif bir şekilde kullanabiliriz.

Örneğin:

```sql
/*
	Bir yaş hesaplamasını yapalım
*/

DECLARE @DOGUMTARIHI AS DATE -- date türünde değişken
DECLARE @YAS AS INT -- int türünde yaş değişkeni
DECLARE @TARIH AS DATE -- date türünde tarih değişkeni

SET @DOGUMTARIHI = '1986-08-25'
SET @TARIH = GETDATE() -- bugünün tarihiyle hesap yapabiliriz.
SET @TARIH = DATEADD(YEAR,-10,GETDATE()) -- 10 yıl önceki yaşını ekleyebiliriz.

SET @YAS = DATEDIFF(YEAR, @DOGUMTARIHI, @TARIH) -- yaşını hesaplayan değişken

SELECT @YAS, @TARIH

-- 10 yıl önceki tarih
SET @TARIH = DATEADD(YEAR,-10,GETDATE())

-- 28 ay önceki tarih
SET @TARIH = DATEADD(MONTH,-28,GETDATE())
```

Bir başka örnekte ise sistemin anlık datetime verisini istediğimiz şekilde parçalayarak değişkenlere atayalım:

Örneğin:

```sql
DECLARE @TARIH AS DATETIME -- tarih değişkenini oluşturduk

SET @TARIH = GETDATE() -- sistemin anlık datetime verisini alalım

SELECT @TARIH
-- tarih türündeki verilerin her birini parçalayalım ve değişkenlere atalım
DECLARE @YIL AS INT -- yıl değişkeni
DECLARE @AY AS INT
DECLARE @GUN AS INT
DECLARE @SAAT AS INT
DECLARE @DAKIKA AS INT
DECLARE @SANIYE AS INT

SET @YIL = YEAR(@TARIH) -- yıl değişkeni oluşturma
SET @AY = MONTH(@TARIH)
SET @GUN = DAY(@TARIH)
SET @SAAT = DATEPART(HOUR, @TARIH)
SET @DAKIKA = DATEPART(MINUTE, @TARIH)
SET @SANIYE = DATEPART(SECOND, @TARIH)

SELECT @TARIH, @YIL, @AY, @GUN, @SAAT, @DAKIKA, @SANIYE
```

Datetime verileri üzerinden değişkenler bu şekilde tanımlanarak kullanılabilir.

TSQL’de genellikle statik olarak değişken tanımlanması çok sıklıkla karşılaşılan bir durum değildir. Genellikle değişkenler daha çok SQL sorgusundan gelen dinamik verilere tanımlanarak işlemler gerçekleştirilir. Bu bölümde onu ele almaya çalışacağız:

SQL sorgusundan gelen ifadeleri değişkenlere atamak için iki farklı yöntem vardır:

- Direkt olarak SELECT sorgusu içerisinde değişken tanımlanabilir. Örneğin: `SELECT @TOTALSALE = SUM(TOTALPRICE) FROM SALES WHERE CITY = 'İSTANBUL'`
- Diğer bir yapı olarak ise SET ile bu değişkenler tanımlanabilir. Örneğin: `SET @TOTALSALE = (SELECT SUM(TOTALPRICE) FROM SALES WHERE CITY = 'İSTANBUL')`

Bu şekilde kurgulanabilir. 

Örnek sorguları inceleyelim:

```sql
SELECT * FROM SALES

-- bu tablo içerisindeki toplam satışı gösterelim

SELECT SUM(TOTALPRICE) AS TOTALSALE
FROM SALES
WHERE CITY = 'İSTANBUL' -- istanbul'daki toplam satış 

-- peki bunu bir değişkene atayalım bunun iki adet yöntemi vardır:
-- birinci yöntem
--DECLARE @TOTALSALE AS FLOAT
/*
SELECT @TOTALSALE = SUM(TOTALPRICE)
FROM SALES
WHERE CITY = 'İSTANBUL' 

SELECT @TOTALSALE
*/
-- ikinci yöntem ise şudur: (SET ile)
 --SET @TOTALSALE = (SELECT SUM(TOTALPRICE) FROM SALES WHERE CITY = 'İSTANBUL')
 -- SET @TOTALAMOUNT = (SELECT SUM(AMOUNT) FROM SALES WHERE CITY = 'İSTANBUL')

 -- burada önemli nokta şudur. Bir değişken sadece bir veri tutar.
 -- yani sorgu sonucunda iki adet kolon dönseydi hata alırdık. 
 -- o zaman bu bilgilere göre aynı sorgu içerisinde iki adet değişken tanımlanabilir mi
 -- cevap evet tanımlanabilir.

 DECLARE @TOTALSALE AS FLOAT
 DECLARE @TOTALAMOUNT AS INT
 DECLARE @ROWCOUNT AS INT

SELECT 
	@TOTALSALE = SUM(TOTALPRICE), 
	@TOTALAMOUNT = SUM(AMOUNT),
	@ROWCOUNT = COUNT(*)
FROM SALES
WHERE CITY = 'İSTANBUL' 

SELECT @TOTALSALE AS 'TOPLAM_CİRO', @TOTALAMOUNT AS 'TOPLAM_SATIŞ', @ROWCOUNT AS 'SATIR_SAYISI' -- alliance
```

Bu şekilde yapılar kurulabilir.

Bu şekilde bir SQL sorgusunu bir değişkene nasıl atayabileceğimizi göstermiş olduk. Bu sefer tam tersini gerçekleştirerek bir SQL sorgusunu, bir değişkene nasıl parametre olarak atayabileceğimizi ele alalım:

Şu sorguları inceleyelim:

```sql
DECLARE @CITY AS VARCHAR(100)
SET @CITY = 'A%' -- SET @CITY = 'ANKARA'

SELECT * FROM SALES
WHERE
CITY LIKE @CITY -- CITY = @CITY

-- son üç yılın verilerini alalım 
-- bunun için başlangıç ve bitiş tarihlerini alabiliriz.

DECLARE @BEGDATE AS DATE = DATEADD(YEAR, -5, GETDATE())
DECLARE @ENDDATE AS DATE = GETDATE()

SELECT * FROM SALES
WHERE
CITY LIKE @CITY -- CITY = @CITY
AND DATE_ BETWEEN @BEGDATE AND @ENDDATE

-- bide marka değişkenini girebiliriz.

DECLARE @BEGDATE AS DATE = DATEADD(YEAR, -5, GETDATE())
DECLARE @ENDDATE AS DATE = GETDATE()
DECLARE @BRAND AS VARCHAR(100) = 'ULKER' -- ismi ülker olan markalar veya (U%)

SELECT * FROM SALES
WHERE
CITY LIKE @CITY -- CITY = @CITY
AND DATE_ BETWEEN @BEGDATE AND @ENDDATE
AND BRAND LIKE @BRAND
```

Bu şekilde sorgular oluşturabiliriz.

Genel anlamda değineceklerimiz bu kadardı. Birkaç alıştırma ile bu konuları pekiştirelim:

***ALIŞTIRMA-1:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2036.png)

Sorunun çözümünü şu şekilde gerçekleştirebiliriz:

```sql
/*
	tsql'de iki sayının toplamını çıkarımını çarpımını ve bölümünü yapınız.
*/

-- İki değişkeni tanımlayalım ve değerlerini verelim:

-- birinci sayı:
DECLARE @SAYI1 AS INT
SET @SAYI1 = 100

-- ikinci sayı
DECLARE @SAYI2 AS INT
SET @SAYI2 = 500

-- MATEMATIKSEL İŞLEMLER
DECLARE @TOPLAMA AS INT
SET @TOPLAMA = @SAYI1 + @SAYI2

DECLARE @CİKARMA AS INT
SET @CİKARMA = @SAYI1 - @SAYI2

DECLARE @CARPMA AS INT
SET @CARPMA = @SAYI1 * @SAYI2

DECLARE @BOLME AS FLOAT -- küsüratlı için gereklidir ancak tek başına yeterli değildir.
-- sayılardan biri float olmak zorundadır aksi halde en yakın tam sayıya yuvarlama işlemi gerçekleştirilir
SET @BOLME = CONVERT(FLOAT,@SAYI1) / @SAYI2 

-- İşlemleri gösterme
SELECT 
	@SAYI1 AS 'BİRİNCİ_SAYI', -- alliance değerleri çıktının kolon isimlerini verir.
	@SAYI2 AS 'İKİNCİ_SAYI',
	@TOPLAMA AS 'TOPLAM_İŞLEMİ',
	@CİKARMA AS 'ÇIKARMA_İŞLEMİ',
	@CARPMA AS 'ÇARPMA_İŞLEMİ',
	@BOLME AS 'BOLME_İŞLEMİ'
```

Bu şekilde sorunu çözmüş oluruz.

***ALIŞTIRMA-2:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2037.png)

Bu soruyu şu şekilde çözebiliriz:

```sql
SELECT * FROM LAB02

-- date değişkeni verilerini teker teker alalım:

-- gün değişkeni
DECLARE @GUN AS INT
SET @GUN = 18

-- ay değişkeni
DECLARE @AY AS INT
SET @AY = 10

-- yıl değişkeni
DECLARE @YIL AS INT
SET @YIL = 1958

-- DATE TÜRÜNDEKİ DEĞİŞKENE BUNLARI ATAYALIM
DECLARE @TARIH AS DATE
SET @TARIH = DATEFROMPARTS(@YIL,@AY,@GUN) -- tarihleri bu şekilde bir araya getirebilirsin

-- tablo içerisinde sorgumuzu yapabiliriz.

SELECT * FROM LAB02 WHERE BIRTHDATE = @TARIH
```

Bu şekilde sorun çözülmüş olur.

***ALIŞTIRMA-3:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2038.png)

Bu sorunun çözümü şu şekildedir:

```sql
SELECT * FROM LAB03_CUSTOMERS

SELECT * FROM LAB03_ITEMS

DECLARE @CUSTOMERID AS INT
DECLARE @ITEMID AS INT
DECLARE @UNITPRICE AS FLOAT
SELECT TOP 1 @CUSTOMERID = ID FROM LAB03_CUSTOMERS ORDER BY NEWID()
SELECT TOP 1 @ITEMID = ID, @UNITPRICE = UNITPRICE FROM LAB03_ITEMS ORDER BY NEWID()
--SELECT @CUSTOMERID,@ITEMID, @UNITPRICE

-- RASTGELE TARİH SAAT OLUŞTURMA
DECLARE @DATE AS DATETIME
DECLARE @RAND AS INT
DECLARE @AMOUNT AS INT
DECLARE @LINETOTAL AS FLOAT
SET @RAND = RAND()*365 -- gün belirleme
SET @DATE = DATEADD(DAY, @RAND, '2021-01-01')
SET @DATE = DATEADD(HOUR,8, @DATE) -- mağazanın açılışı 8'de
SET @RAND = RAND()*12*60*60 -- saate dakika ekleme işlemi
SET @DATE = DATEADD(SECOND, @RAND, @DATE)
SET @AMOUNT = 1+(RAND()*19)
SET @LINETOTAL = @AMOUNT*@UNITPRICE

INSERT INTO LAB03_SALES (CUSTOMERID, DATE_, AMOUNT, UNITPRICE, LINETOTAL)
VALUES (@CUSTOMERID, @DATE, @AMOUNT, @UNITPRICE, @LINETOTAL)

SELECT * FROM LAB03_SALES
```

Bu şekilde sorun çözülmüş olur.

***ALIŞTIRMA-4:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2039.png)

Bu sorunun çözümü şu şekildedir:

```sql
DECLARE @CUSTOMERID AS INT
SELECT TOP 1 @CUSTOMERID = ID FROM LAB04_CUSTOMERS
WHERE ID NOT IN (SELECT CUSTOMERID FROM RAFFLE) -- aynı değerler gelirse alma
ORDER BY NEWID() -- tablo içerisinde tanımlı olan idlerden seç

DECLARE @CUSTOMERNAME AS VARCHAR(100)
DECLARE @TOTALSALE AS FLOAT
DECLARE @GIFTPERCENT AS FLOAT = 50
DECLARE @GIFTTOTAL AS FLOAT

SELECT 
@CUSTOMERNAME = C.CUSTOMERNAME, @TOTALSALE = SUM(TOTALPRICE), @GIFTTOTAL = SUM(TOTALPRICE)*@GIFTPERCENT/100 -- indirim
FROM LAB04_SALES S
JOIN LAB04_CUSTOMERS C ON C.ID = S.CUSTOMERID
WHERE CUSTOMERID= @CUSTOMERID 
GROUP BY C.ID, C.CUSTOMERNAME

-- yeni tablo içerisine değerleri atayalım:
--CREATE TABLE RAFFLE(ID INT IDENTITY(1,1), CUSTOMERID INT, CUSTOMERNAME VARCHAR(100), TOTALSALE FLOAT, GIFTPERCENT FLOAT, GIFTTOTAL FLOAT)

SELECT * FROM RAFFLE

INSERT INTO RAFFLE (CUSTOMERID, CUSTOMERNAME, TOTALSALE, GIFTPERCENT, GIFTTOTAL)

VALUES(@CUSTOMERID, @CUSTOMERNAME, @TOTALSALE, @GIFTPERCENT, @GIFTTOTAL)
```

Bu şekilde sorun çözülmüş olur.

***ALIŞTIRMA-5:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2040.png)

Bu sorunun çözümü şu şekildedir:

```sql
DECLARE @CITY AS VARCHAR(100)
SET @CITY = 'İSTANBUL,KONYA,ANKARA,İZMİR,BURSA,BİLECİK,TOKAT,GİRESUN'

-- STRING ifadeleri birbirinden ayırmak için string split fonksiyonu kullanabiliriz.

SELECT 
CITY, SUM(AMOUNT) AS 'TOTALAMOUNT', SUM(TOTALPRICE) AS 'TOTALSALE'
FROM LAB05
WHERE 
CITY  IN (SELECT value from string_split(@CITY, ','))
GROUP BY CITY
```

Bu şekilde sorun çözülmüş olur.

Genel itibariyle değişkenler konusu bu kadardı. Bir sonraki konumuz şart blokları olacaktır.

### Şart Blokları

Neredeyse bütün programlama dillerine özgü olan bu bloklar belirli şartlar doğrultusunda yapılacak programa yön vermeyi amaçlamaktadır. SQL’de genel anlamda şart blokları üç kategoride incelenir:

- `if` bu şart blokları sadece TSQL’e özgüdür. Diğer sade bir SQL sorgusunda bu yapı çalışmamaktadır.
- `CASE WHEN` şart blokları sadece TSQL’e özgü değildir. Normal SQL cümle içerisinde de çalışabilmektedir. Birden fazla şartı içerisinde barındırabilir.
- `lif` şart blokları `CASE WHEN` ile aynıdır. Tek farkı sadece iki adet şartı içerisinde barındırır.

Sırasıyla bu şart yapıları ele alalım:

**`*if` ŞART BLOKLARI***

Bütün programlama dillerinin içerisinde var olan şart blokları, belirli şartlara göre bazı sorguları veya sorgu bloklarını çalıştırmak için kullanılan bir TSQL niteliğidir.

Örnek sorguları inceleyelim:

```sql
/*
	 IF - ŞART BLOKLARI 
*/

DECLARE @SAYI AS INT
SET @SAYI = 20

IF @SAYI >= 0
	SELECT 'SEÇİLEN SAYI POZİTİF' -- şart sağlandığı için kod çalıştı

-- peki sağlanmasaydı ?
DECLARE @SAYI1 AS INT
SET @SAYI1 = -20

IF @SAYI1 >= 0
	SELECT 'SEÇİLEN SAYI POZİTİF' -- Commands completed successfully. (şart sağlanmadı)

-- if blokları sadece kendisinden sonra gelen şart bloğunu çalıştırır. örnek:

DECLARE @SAYI2 AS INT
SET @SAYI2 = -20

IF @SAYI2 >= 0
	SELECT 'SEÇİLEN SAYI POZİTİF' 
	SELECT 'BU KOD SATIRI DA IFDEN HEMEN SONRA GELMEDİĞİ İÇİN ŞART SAĞLANSA DA SAĞLANMASA DA ÇALIŞIR!!'

-- yani if şart bloklarında sadece tek bir satır içerisinde çalışmaktadır.
-- bu durumu egale etmek için yani şart bloklarından sonra gelecek tüm ifadeleri if şart bloğuna bağlamak için
-- begin end komutları kullanılır. Örneğin:

DECLARE @SAYI3 AS INT
SET @SAYI3 = -20

IF @SAYI3 >= 0
BEGIN
	SELECT 'SEÇİLEN SAYI POZİTİF' 
	SELECT 'BU KOD SATIRI DA IF ŞARTINA BAĞLI KALDIĞI İÇİN ÇALIŞMAZ'
END -- Commands completed successfully.

-- yani begin-end ifadesi programlama dillerine özgü süslü parantez ifadesidir.

-- peki if şartına uymayan yapıyı başka bir şart ifadesinde çalıştırabilir miyim 
-- evet iki yöntemi vardır biri if-if diye yapılar kurmaktır. Diğeri ise if-else yapısı kurmaktır.
-- if else yapısını inceleyelim:

DECLARE @SAYI4 AS INT
SET @SAYI4 = -20

IF @SAYI4 >= 0
	SELECT 'SEÇİLEN SAYI POZİTİF'
ELSE
	SELECT 'SEÇİLEN SAYI NEGATİF' -- bu sorgu çalışır eğer sayı pozitif olsaydı ıf şartı çalışırdı.

-- else içerisinde de begin-end yapısı kurulabilir:
DECLARE @SAYI5 AS INT
SET @SAYI5 = -20

IF @SAYI5 >= 0
BEGIN
	SELECT 'SEÇİLEN SAYI POZİTİF'
	SELECT 'SEÇİLEN SAYI SIFIRDAN BÜYÜK' 
END
ELSE
BEGIN
	SELECT 'SEÇİLEN SAYI NEGATİF'
	SELECT 'SEÇİLEN SAYI SIFIRDAN KÜÇÜK' -- iki sorguda çalışır.
END

-- peki sayı sıfır olarak verilirse ve sıfırı yakalamamız gerekirse nasıl bir yapı kurarız 
-- else içerisinde if yapısıyla kurabiliriz.

DECLARE @SAYI6 AS INT
SET @SAYI6 = 0

IF @SAYI6 > 0
BEGIN
	SELECT 'SEÇİLEN SAYI POZİTİF'
	SELECT 'SEÇİLEN SAYI SIFIRDAN BÜYÜK' 
END
ELSE
BEGIN
	IF @SAYI6 = 0
		SELECT 'SEÇİLEN SAYI SIFIRDIR' -- sayı 0 olduğu için burası çalışacaktır.
	ELSE
		SELECT 'SEÇİLEN SAYI NEGATİFTİR.'
END

-- if şart bloklarıyla belirli bir değişkenleri istediğimiz gibi değiştirebiliriz:
-- örneğin
DECLARE @SAYI7 AS INT
SET @SAYI7 = 0
DECLARE @RESULT AS VARCHAR(100) -- dinamik olarak sonucu gösterebilen değişken

IF @SAYI7 > 0
BEGIN
	SET @RESULT = 'SEÇİLEN SAYI POZİTİF'
	SET @RESULT =  'SEÇİLEN SAYI SIFIRDAN BÜYÜK' 
END
ELSE
BEGIN
	IF @SAYI7 = 0
		SET @RESULT =  'SEÇİLEN SAYI SIFIRDIR' -- sayı 0 olduğu için burası çalışacaktır.
	ELSE
		SET @RESULT =  'SEÇİLEN SAYI NEGATİFTİR.'
END

SELECT 'ŞART BLOKLARI SONUCU CEVAP:' + @RESULT
```

Bu şekilde `if` şart bloklarını incelemiş olduk.

**`*CASE WHEN` ŞART BLOKLARI***

Birden fazla şarta göre çalıştırılabilen default olarak SQL içerisinde de bulunan sadece TSQL’e özgü olmayan bir şart ifadesidir.

- `CASE WHEN` şart blokları genel anlamda `*WHEN “ŞART” THEN “DEĞER”`* şeklinde kurgulanır.
- Bu case yapılarının en sonunda yeni bir tablo ismi vereceği için bir sütun ismi olan *alliance* tanımlı olmak zorundadır

Bu bilgiler ışığında aşağıdaki iki adet sorgu yapısını inceleyelim:

```sql
SELECT * FROM CUSTOMERS

/* CASE WHEN ŞART İFADELERİ */
-- Birden fazla şarta uygun olarak seçimler yapmaya olanak sağlayan bir şart ifadesi döngüsüdür.
-- Genel anlamda yapı: WHEN "ŞART" THEN "DEĞER" şeklinde kurgulanır.

-- cinsiyetlere göre şart ifadelerini yazalım
SELECT 
CASE
	WHEN GENDER = 'E' THEN 'ERKEK' -- GENDER E olanlara yeni sütun açıp 'ERKEK' yazacak
	WHEN GENDER = 'K' THEN 'KADIN'-- GENDER K olanlara yeni sütun açıp 'KADIN' yazacak
END AS GENDEREXP, -- alliance tanımlanması gereklidir.
* FROM CUSTOMERS

-- bir farklı örnek olarak müşteri tablosundaki kişilerin yaşlarını hesap edelim ve onları genç, orta yaşlı ve yaşlı olarak kategorize edelim:

SELECT 
CASE 
	WHEN DATEDIFF(YEAR, BIRTHDATE, GETDATE()) <= 35 THEN 'GENÇ' -- yaş 35'ten küçükse 'GENÇ'
	WHEN DATEDIFF(YEAR, BIRTHDATE, GETDATE()) BETWEEN 36 AND 55  THEN 'ORTA YAŞLI' -- yaş 36 ve 55 arasında (ikisi de dahildir.) "ORTA YAŞLI"
	WHEN DATEDIFF(YEAR, BIRTHDATE, GETDATE()) > 55 THEN 'YAŞLI' -- yaş 55'ten büyükse 'YAŞLI' olarak nitelendir.
END AS YASKATEGORI,
DATEDIFF(YEAR, BIRTHDATE, GETDATE()) AS 'AGE', -- yaşı hesaplattıran fonksiyon
* FROM CUSTOMERS
```

Bu şekilde yapılar kurgulanabilir.

**`*IIF` ŞART BLOKLARI***

Bu şart blokları `case when` ifadesine çok benzerdir. Ancak sadece iki adet şarta uygun olarak yapılabilir.

- Genel kurgusu: `*IIF(”ŞART”, “ŞART UYGUNSA BURASI ÇALIŞIR.”, “UYGUN DEĞİLSE BURASI ÇALIŞIR.”)*` şeklindedir.

Genel sorguları inceleyelim:

```sql
SELECT * FROM CUSTOMERS

/* IIF ŞART İFADESİ */
-- case when'e benzerdir. Ancak sadece iki adet sorgu neticesini içerisinde barındırır.
-- yapı şu şekilde kurgulanır:
-- IIF("ŞART", "ŞART SAĞLANIRSA BURASI ÇALIŞIR", "ŞART SAĞLANMAZSA BURASI ÇALIŞIR"). şeklindedir:

-- Bir öncekinde yapmış olduğumuz kadın erkek işaretlemesini burada da gerçekleştirelim

SELECT 
IIF(GENDER= 'E', 'ERKEK', 'KADIN') -- eğer şart uyarsa 'ERKEK', uymazsa 'KADIN' yazacak.
,* FROM CUSTOMERS
```

Bu şekilde sorgularımızı bitirdik. 

Şimdi üç adet alıştırma yaparak bu konuları pekiştirelim:

***ALIŞTIRMA-1:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2041.png)

Bu sorunun çözümü şu şekildedir:

```sql
-- DEĞİŞKENLERİN TANIMLANMASI
DECLARE @PLATE AS VARCHAR(20) = ''
DECLARE @COLOR AS VARCHAR(20) = ''
DECLARE @TITLE AS VARCHAR(100) = ''
DECLARE @BRAND AS VARCHAR(20) = ''
DECLARE @LICENCEDATE1 AS DATE = ''
DECLARE @LICENCEDATE2 AS DATE = '20201231'

-- BOŞ VERİ KONTROLÜ
IF @PLATE = ''
	SET @PLATE = '%'
IF @COLOR = ''
	SET @COLOR = '%'
IF @TITLE = ''
	SET @TITLE = '%'
IF @BRAND = ''
	SET @BRAND = '%'

-- License date boş olarak kalırsa null değer döndürür date türünde olduğu için 
-- null veri için şöyle bir yol izlemek gerekir: (birinci yol)
/*
IF @LICENCEDATE1 IS NULL
	SET @LICENCEDATE1 = '20180101'
IF @LICENCEDATE2 IS NULL
	SET @LICENCEDATE2 = GETDATE()
*/ -- ikinci yol ise sorgunun içerisinde 

-- Sorgunun çalıştırılması

SELECT * FROM LAB01
WHERE PLATE LIKE @PLATE
AND COLOR LIKE @COLOR
AND TITLE LIKE @TITLE
AND BRAND LIKE @BRAND
AND LICENCEDATE BETWEEN ISNULL(@LICENCEDATE1,'20180101') AND ISNULL(@LICENCEDATE2, GETDATE()) -- ikinci yol null veei kontrolü
```

Bu şekilde sorun çözülmüş olur.

***ALIŞTIRMA-2:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2042.png)

Bu sorunun çözümü şu şekildedir:

```sql
SELECT * FROM LAB02

-- licence date ile year kolonundaki verileri kıyasla veya farkını al ona göre işlem yap

SELECT 
BRAND, -- ARAÇ MARKASI
CASE -- YILLARA GÖRE CASE SORGUSU
	WHEN YEAR(LICENCEDATE) - YEAR_ = 0 THEN 'ARAÇ AYNI YIL TRAFİĞE ÇIKMIŞTIR!'
	WHEN YEAR(LICENCEDATE) - YEAR_ = 1 THEN 'ARAÇ BİR SENE SONRA TRAFİĞE ÇIKMIŞTIR!'
	WHEN YEAR(LICENCEDATE) - YEAR_ = 2 THEN 'ARAÇ İKİ SENE SONRA TRAFİĞE ÇIKMIŞTIR!'
	WHEN YEAR(LICENCEDATE) - YEAR_ = 3 THEN 'ARAÇ ÜÇ SENE SONRA TRAFİĞE ÇIKMIŞTIR!'
END AS STATUS_,
COUNT(*) AS COUNT_ -- TOPLAM
FROM LAB02
GROUP BY -- COUNT için gerekli gruplama işlemi
BRAND, -- birinci gruplama parametresi araç markası
YEAR(LICENCEDATE) - YEAR_ -- trafiğe çıkış yılı farkı
ORDER BY 1,2
```

Bu şekilde sorun çözülmüş olur.

### Döngüler

Programlama dillerine özgü olan döngüler TSQL içerisinde de yer almaktadır. Genel anlamda iki adet döngü kullanılmaktadır.

- **`*GO:*`** Bir sorguyu birden fazla çalıştırılması için kullanılan bir sorgudur. Programlama dillerine özgün olan for döngüsüne benzerdir. Ancak for döngüsü gibi bir döngü TSQL içerisinde yer almaz.
- **`*WHILE:`*** Belirli bir şart sağlanasıya kadar veya belirli bir işlemi tekrar tekrar gerçekleştirmek için TSQL’de sıklıkla kullanılan bir döngü yapısıdır.

**`*GO` DÖNGÜSÜ***

Bir sorguyu birden fazla çalıştırmak için kullanılan bir yapıya sahiptir.

***Örneğin:***

```sql
/*
	GO DÖNGÜSÜ: Bir sorguyu birden fazla kez çalıştırmak için kullanılır.
*/

SELECT * FROM DATES

INSERT INTO DATES (DATE_) VALUES (GETDATE())
GO 5 -- beş kere insert ekleme işlemini gerçekleştirir.

INSERT INTO DATES (DATE_) VALUES (GETDATE())
GO 100 -- 100 kere insert yani ekleme işlemini gerçekleştirir.
```

Bu şekilde çalıştırılmaktadır.

**`*WHILE` DÖNGÜSÜ***

TSQL’de en fazla kullanılan bu döngü yapısında, belirli bir şart sağlanasıya kadar bir sorgu yapısını veya sorgu bloklarını tekrar tekrar çalıştırmak için kullanılır.

- TSQL’de en fazla kullanılan döngüdür.
- Kullanımı basittir. Ama kullanırken oldukça dikkatli olmak gerekir. Sayısal olarak bir işlem gerçekleştirilecekse en ufak değişken arttırımı ifadesi eksik kalırsa sorgu sonsuz döngüye girer.
- TSQL’de bekleme komutlarından bir tanesi de `WAITFOR DELAY ‘00:00:01’` ifadesidir. Bu ifadede sırasıyla (saat, dakika, saniye) şeklinde bekletmeler söz konusu olabilmektedir.

Bu döngüyle ilgili sorgu yapısı şu şekildedir:

```sql
/*
	WHILE KOMUTU: Belirli bir şart sağlandığı sürece tekrar tekrar çalıştırılan bir döngü yapısıdır.
*/

SELECT * FROM DATES

DECLARE @I INT = 0

WHILE @I < 10
BEGIN
	INSERT INTO DATES (DATE_) VALUES (GETDATE())
	SET @I = @I+1 -- eğer ki bu yapı yazılmazsa sorgu sonsuz döngüye girer.
END

DECLARE @I2 INT = 0

WHILE @I2 < 10
BEGIN
	INSERT INTO DATES (DATE_) VALUES (GETDATE())
	WAITFOR DELAY '00:00:01' -- sorguda bekleme süresini verir (saat-dk-sn) şeklinde çalışmaktadır.
	SET @I2 = @I2 + 1 -- eğer ki bu yapı yazılmazsa sorgu sonsuz döngüye girer.
END
```

Bu şekilde `WHILE` döngüsü kullanılabilmektedir.

Şimdi birkaç alıştırma yaparak döngüler konusunu pekiştirelim.

***ALIŞTIRMA-1:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2043.png)

Bu sorunun çözümü şu şekildedir

```sql
SELECT * FROM LAB01

INSERT INTO LAB01 (DEVICENAME, CURRENTVALUE) VALUES ('TERMOMETER-0001', 18.6) -- istenilen yapı bu şekilde

DECLARE @I INT = 2 -- bir sayısal değişkene göre döngüyü çalıştıralım
WHILE @I <= 100 -- @I değişkeni 100 olasıya kadar çalış
BEGIN
	DECLARE @DEVICENAME VARCHAR(100) -- termometre ismi değişkeni
	SET @DEVICENAME = 'TERMOMETER-'+REPLICATE(0,4-LEN(@I))+CONVERT(VARCHAR, @I) -- TERMOMETER-0001
	DECLARE @CURRENTVALUE FLOAT -- derecenin değişkeni
	SET @CURRENTVALUE = ROUND(18+RAND()*5,2) -- 18 ile 23 derece arasında değişkenlik gösterir

	--SELECT @DEVICENAME, @CURRENTVALUE
	INSERT INTO LAB01 (DEVICENAME, CURRENTVALUE) VALUES (@DEVICENAME, @CURRENTVALUE) -- insert sorgusu
	SET @I = @I + 1 -- değişkeni bir arttırarak sorguyu çalıştır.
END
```

Bu şekilde sorun çözülmüş olur.

***ALIŞTIRMA-2:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2044.png)

Bu sorunun çözümü şu şekildedir:

```sql

DECLARE @I AS INT = 1
WHILE @I <=100
BEGIN
DECLARE @DEVICEID AS INT = 1
DECLARE @DATE AS DATETIME = '2022-08-27 7:30:00'
	WHILE @DATE <= '2022-08-27 17:30:00'
	BEGIN
		DECLARE @CURRENTVALUE AS FLOAT
		SELECT @CURRENTVALUE = CURRENTVALUE FROM LAB02_DEVICES WHERE ID = @DEVICEID
		IF @CURRENTVALUE = 0
		BEGIN
			SET @CURRENTVALUE = 18
		END
		DECLARE @NEWVALUE AS FLOAT
		SET @NEWVALUE = ROUND(@CURRENTVALUE-0.5+RAND(),2)
		UPDATE LAB02_DEVICES SET CURRENTVALUE = @NEWVALUE WHERE ID = @DEVICEID
		INSERT INTO LAB02_LOG (DEVICEID, DATE_, VALUE_) VALUES (@DEVICEID,@DATE,@NEWVALUE)
		SET @DATE = DATEADD(SECOND,30,@DATE)
	END
SET @I = @I+1
END

SELECT * FROM LAB02_DEVICES WHERE ID = 1
SELECT * FROM LAB02_LOG
```

Bu şekilde sorun çözülmüş olur.

***ALIŞTIRMA-3:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2045.png)

Bu sorunun çözümü şu şekildedir:

```sql
DECLARE @I AS INT = 0

WHILE @I < 1000
BEGIN
	DECLARE @PLATE AS VARCHAR(20)
	DECLARE @CARID AS INT = 1
	DECLARE @CITYID AS INT = 34
	DECLARE @LETTER1 AS VARCHAR(1) = 'A'
	DECLARE @LETTER2 AS VARCHAR(1) = 'B'
	DECLARE @NUMBER AS INT = 149
	DECLARE @RANDID AS INT

	-- DEĞERLERİ RASTGELE VERELİM
	SET @CARID = 1 + (RAND()*6537) -- +1 dememizin sebebi 0'ı yakalamaktan kurtulmak
	SET @CITYID = 1 + (RAND()*80)
	SET @RANDID = 1 + (RAND()*21)
	SELECT @LETTER1 = LETTER FROM LAB03_LETTERS WHERE ID = @RANDID
	SET @RANDID = 1 + (RAND()*21)
	SELECT @LETTER2 = LETTER FROM LAB03_LETTERS WHERE ID = @RANDID
	SET @NUMBER = 1 + (RAND()*9999)

	SET @PLATE = REPLICATE('0',2-LEN(@CITYID)) + CONVERT(VARCHAR, @CITYID) -- plaka düzenlenmesi örn: 1 değil 01 yazması
	SET @PLATE = @PLATE+@LETTER1+@LETTER2
	SET @PLATE = @PLATE + REPLICATE('0', 4-LEN(@NUMBER)) + CONVERT(VARCHAR,@NUMBER)
	INSERT INTO LAB03_PLATES(PLATE, CARID) VALUES (@PLATE, @CARID)
SET @I = @I+1
END
SELECT P.PLATE, C.* FROM LAB03_PLATES P
JOIN LAB03_CARMODELS C ON C.ID = P.CARID
```

Sorun bu şekilde çözülmüş olur.

***ALIŞTIRMA-4:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2046.png)

Bu sorunun çözümü şu şekildedir:

```sql
DECLARE @I AS INT = 0

WHILE @I < 100000
BEGIN
	DECLARE @PLATE AS VARCHAR(20)
	DECLARE @PTSPOINTID AS INT = 1
	DECLARE @DATE AS DATETIME ='2022-08-27 00:00:00'
	DECLARE @RANDID AS INT
	DECLARE @RANDTIME AS INT
	SET @RANDID = 1 + RAND()*999999
	SELECT @PLATE = PLATE FROM LAB04_PLATES WHERE ID = @RANDID

	SET @RANDTIME = RAND()*24*60*60 -- 24 saat 60 dakika 60 saniye (rastgele saniye üretme)
	SET @DATE = DATEADD(SECOND, @RANDTIME, @DATE) -- date türüne saniye ekleme işlemi
	SET @RANDTIME = RAND()*1000
	SET @DATE = DATEADD(MS, @RANDTIME, @DATE) -- milisaniye türünü de rastgele ekledim

	-- insert etme işlemi
	INSERT INTO LAB04_PTSLOG (PTSPOINTID, PLATE, DATE_)
	VALUES (@PTSPOINTID, @PLATE, @DATE)

SET @I = @I + 1
END

-- veriyi listeleyelim
SELECT 
P.PTSNAME, L.DATE_, L.PLATE, CM.TITLE
FROM LAB04_PTSLOG L
JOIN LAB04_PTSPOINT P ON P.ID = L.PTSPOINTID
JOIN LAB04_PLATES PL ON PL.PLATE = L.PLATE
JOIN LAB04_CARMODELS CM ON CM.ID = PL.CARID
ORDER BY L.DATE_
```

Bu şekilde sorun çözülmüş olur.

## TSQL VERİ TABANI NESNELERİ

Bir veya birden fazla işlemleri otomatik olarak gerçekleştirmeye çalışan veya veri tabanının performansını arttırmaya yönelik tüm fonksiyonlara veri tabanı nesneleri adı verilir.

Bu nesneler sırasıyla

- View: Karmaşık SQL sorgularının tek bir sanal tablo haline getiren bir yapıdır. Bu yapı sayesinde veri tabanında farklı tablolar içerisinde bulunan verileri tek bir tablo halinde göstermemize olanak sağlanmaktadır. Bu fonksiyonda sadece tek bir `SELECT` sorgusu çalışmaktadır.
- User Defined Function: SQL içerisinde gömülü fonksiyonlar (`DATEDIFF()`) gibi fonksiyonlar varken aynı zamanda kullanıcı tarafından oluşturulabilecek fonksiyonlarda vardır. Bu tanımlanabilecek fonksiyonların her birine User Defined Function adı verilir.
- Stored Procedure: Karmaşık SQL sorgularını tek bir sanal tablo halinde yazmaya okumaya, manipüle etmeye olanak sağlayan View’ın bir nevi CRUD işlemlerini gerçekleştiren bir fonksiyon olarak ele alınabilmektedir.
- Trigger: Eventlere benzer yapıda olan triggerlar, belirli bir şarta göre düzenli olarak çalışan bir takım veri tabanı fonksiyonlarıdır.
- Index: Veri tabanı performanslarına yönelik olarak çalışan indexler veri tabanının şişmesi gibi bazı problemlerin yaşanmasının önüne geçmesi amacıyla kullanılan bir takım fonksiyonlardır.

Şimdi sırasıyla hepsini ele alalım

### View

T-SQL'de (Transact-SQL) view, bir veya daha fazla tablodan veri çekmek için kullanılan sanal bir tablo olarak tanımlanabilir. View, aslında bir SQL sorgusudur ve bir tablo gibi davranır. View'lar, karmaşık sorguları daha basit hale getirmek, veri güvenliğini artırmak ve tekrarlanan sorguları yeniden kullanmak amacıyla kullanılır. 

Ya da bir ya da birden fazla tablodan select sorgusu çekerek oluşan verisetinin bir tablo gibi kullanılmasıdır.

SQL sorgusunda dönen alanlar filtreleme, sıralama, gruplama, aggregation gibi işlemler için aynı bir tablo alanı gibi kullanılabilir.

View’lar diskte yer kaplamazlar. Yani verinin kopyası oluşturulmaz.

Tüm veriyi çekmek yerine ilgili veriyi çekerek performansı arttırır.

Birden fazla join ile birleşen tabloların oluşturduğu karmaşık sorguları bir tablo gibi basitleştirir.

Veri tabanlarında genelde İngilizce olarak tutulan alanların raporlama tarafında rahat kullanılması için Türkçe gibi daha anlaşılabilir halde kullanılmasını sağlar.

View’lar raporlama amaçlı ya da bir uygulama içinde kullanıldıklarında herhangi bir değişiklikte view üzerinde bu değişikliği yapmak çok daha pratiktir.

Genel olarak joinler kullanarak farklı farklı tablolardaki verileri şu şekilde bir araya getirebiliriz.

```sql

/*
SELECT * FROM USERS
SELECT * FROM ADDRESS
SELECT * FROM ORDERS
SELECT * FROM ORDERDETAILS

SELECT * FROM INVOICES
SELECT * FROM INVOICEDETAILS

*/

SELECT 
O.ID ORDERID, O.DATE_, U.ID USERID, U.USERNAME_, U.NAMESURNAME, U.GENDER, U.EMAIL, U.TELNR1,
A.ADDRESSTEXT, A.POSTALCODE, C.CITY, T.TOWN,
I.ITEMCODE, I.ITEMNAME, I.BRAND, I.CATEGORY1,
OD.AMOUNT, OD.UNITPRICE, OD.LINETOTAL, OD.ITEMID
FROM ORDERS O
JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID
JOIN ITEMS I ON I.ID = OD.ITEMID 
JOIN USERS U ON U.ID = O.USERID
JOIN ADDRESS A ON A.ID = O.ADDRESSID
JOIN CITIES C ON C.ID = A.CITYID
JOIN TOWNS T ON T.ID = A.TOWNID

WHERE T.TOWN = 'MERAM'
```

Bu şekilde joinler kullanarak farklı veri tabloları arasında gösterimler sağlayabiliriz.

View kullanarak ise bunları bir gerçekte var olmayan tablo şeklinde de tutabiliriz.

Veri tabanı tabloları içerisinde yapmış olduğumuz `CREATE, ALTER, DROP` gibi sırasıyla tablo oluşturma, tablo güncelleme veya tablo silme gibi işlemlerin her birini view aracılığı ile gerçekleştirebiliriz.

- Bir view oluşturulmak istenildiğinde create kullanılarak oluşturulur.

Örnek kodlara bakalım:

```sql
CREATE VIEW VWORDER -- VİEW NESNESİ OLUŞTUR
AS -- BU SORGUDAN SONRASI VİEW NESNESİ OLUR.
SELECT 
O.ID ORDERID, O.DATE_, 
DATENAME(MONTH, O.DATE_) 'MONTH_',
U.ID USERID, U.USERNAME_, U.NAMESURNAME, U.GENDER, U.EMAIL, U.TELNR1,
A.ADDRESSTEXT, A.POSTALCODE, C.CITY, T.TOWN,
I.ITEMCODE, I.ITEMNAME, I.BRAND, I.CATEGORY1,
OD.AMOUNT, OD.UNITPRICE, OD.LINETOTAL, OD.ITEMID
FROM ORDERS O
JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID
JOIN ITEMS I ON I.ID = OD.ITEMID 
JOIN USERS U ON U.ID = O.USERID
JOIN ADDRESS A ON A.ID = O.ADDRESSID
JOIN CITIES C ON C.ID = A.CITYID
JOIN TOWNS T ON T.ID = A.TOWNID
```

Bu şekilde bir sorguyu view nesnesine dönüştürebiliriz.

Viewların gerçekte var olmadığını sanalda bir bellek tutmadığını söylemiştik ve bunların üzerinde güncellemeler yapılarak bir tablo üzerinde yapılabilecek değişiklikleri yapabileceğimizden bahsetmiştik. Buna göre tablo üzerinde bir güncelleme yapılmasından bahsedebiliriz.

Örnek kodlar:

```sql
-- TABLOYU GÜNCELLEMEK İÇİN ALTER KULLANIRSIN

ALTER VIEW VWORDER -- view güncelleme
AS
SELECT 
O.ID ORDERID, O.DATE_, 
DATENAME(MONTH, O.DATE_) 'MONTH_',
DATENAME(DW,O.DATE_)AS 'DAYOFWEEK', -- haftanın günleri
U.ID USERID, U.USERNAME_, U.NAMESURNAME, U.GENDER, U.EMAIL, U.TELNR1,
A.ADDRESSTEXT, A.POSTALCODE, C.CITY, T.TOWN,
I.ITEMCODE, I.ITEMNAME, I.BRAND, I.CATEGORY1,
OD.AMOUNT, OD.UNITPRICE, OD.LINETOTAL, OD.ITEMID
FROM ORDERS O
JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID
JOIN ITEMS I ON I.ID = OD.ITEMID 
JOIN USERS U ON U.ID = O.USERID
JOIN ADDRESS A ON A.ID = O.ADDRESSID
JOIN CITIES C ON C.ID = A.CITYID
JOIN TOWNS T ON T.ID = A.TOWNID

```

- Burada view üzerinde bir güncelleme yapacağımız için `ALTER VIEW` komutunu kullandık.
- Bu tablo üzerinde önceki sorguya nazaran haftanın da günlerinin gelmesini istediğimiz için `DATENAME(DW,O.DATE_)AS 'DAYOFWEEK'` yapısını kullanarak haftanın günlerini de bir sütun halinde bu tablonun içerisine entegre ettik.

Bir başka örneğe bakalım:

```sql
ALTER VIEW VWORDER
AS
SELECT 
O.ID SIPARIS_NO,O.DATE_,
YEAR(O.DATE_) YIL,
DATENAME(MONTH, O.DATE_) 'AY',
DATENAME(DW,O.DATE_)AS 'HAFTANIN_GÜNÜ',
U.ID KULLANICI_ID, U.USERNAME_ KULLANICI_ADI, U.NAMESURNAME KULLANICI_ADSOYAD, U.GENDER KULLANICI_CİNSİYET, U.EMAIL KULLANICIEMAIL, U.TELNR1 KULLANICI_TELEFON_NO,
A.ADDRESSTEXT KULLANICI_ADRES, A.POSTALCODE KULLANICI_POSTAKODU, C.CITY KULLANICI_SEHİR, T.TOWN KULLANICI_İLCE,
I.ITEMCODE URUN_KODU, I.ITEMNAME URUN_ISMI, I.BRAND URUN_TURU, I.CATEGORY1 URUN_KATEGORİ,
OD.AMOUNT URUN_SATISI, OD.UNITPRICE URUN_BIRIM_FIYAT, OD.LINETOTAL KALEM_SATIS_SAYISI, OD.ITEMID URUN_ID
FROM ORDERS O
JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID
JOIN ITEMS I ON I.ID = OD.ITEMID 
JOIN USERS U ON U.ID = O.USERID
JOIN ADDRESS A ON A.ID = O.ADDRESSID
JOIN CITIES C ON C.ID = A.CITYID
JOIN TOWNS T ON T.ID = A.TOWNID 
```

Burada ise sütun isimleri veri tabanının default dili olan İngilizce’den çevirerek Türkçe haline getirdik. Bu şekilde sütun isimleri daha anlamlı hale gelmiş oldu.

Ayrıca bu tip view’ların her birini excel üzerinden veri tabanı bağlantısı kullanarak verileri oraya çekerek istediğimiz gibi kullanıma sunabiliriz.

<aside>
💡 view’lar her ne kadar veri tabanlarında bellek tutmasalar da belirli bir süre sonra sürekli view oluşturmak iyi bir adım değildir. Bunun için farklı yöntemler izlenerek viewlar egale edilebilmektedir. Bunun için ise dinamik viewlar oluşturulabilmektedir.

</aside>

***Dinamik View:*** Bir SQL sorgusunun view gibi kullanıldığı ancak gerçek bir view oluşturulmadığı yapılara denilmektedir.

Dinamik viewlar ise aslında bir subquery mantığıyla çalışmaktadır.

Örnek kodlar:

```sql
-- dinamik view oluşturma

SELECT DV.AY, SUM(DV.KALEM_SATIS_SAYISI) AS 'KALEM SATIŞ SAYISI TOPLAM' FROM ( -- dinamik view başlangıçı
	SELECT 
	O.ID SIPARIS_NO,O.DATE_,
	YEAR(O.DATE_) YIL,
	DATENAME(MONTH, O.DATE_) 'AY',
	DATENAME(DW,O.DATE_)AS 'HAFTANIN_GÜNÜ',
	U.ID KULLANICI_ID, U.USERNAME_ KULLANICI_ADI, U.NAMESURNAME KULLANICI_ADSOYAD, U.GENDER KULLANICI_CİNSİYET, U.EMAIL KULLANICIEMAIL, U.TELNR1 KULLANICI_TELEFON_NO,
	A.ADDRESSTEXT KULLANICI_ADRES, A.POSTALCODE KULLANICI_POSTAKODU, C.CITY KULLANICI_SEHİR, T.TOWN KULLANICI_İLCE,
	I.ITEMCODE URUN_KODU, I.ITEMNAME URUN_ISMI, I.BRAND URUN_TURU, I.CATEGORY1 URUN_KATEGORİ,
	OD.AMOUNT URUN_SATISI, OD.UNITPRICE URUN_BIRIM_FIYAT, OD.LINETOTAL KALEM_SATIS_SAYISI, OD.ITEMID URUN_ID
	FROM ORDERS O
	JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID
	JOIN ITEMS I ON I.ID = OD.ITEMID 
	JOIN USERS U ON U.ID = O.USERID
	JOIN ADDRESS A ON A.ID = O.ADDRESSID
	JOIN CITIES C ON C.ID = A.CITYID
	JOIN TOWNS T ON T.ID = A.TOWNID 
) DV -- dinamik view bitişi

GROUP BY AY 
```

Bu şekilde bir dinamik view’da oluşturulabilir.

Genel anlamda viewlar bu kadardı. Birkaç örnekle öğrendiklerimizi pekiştirelim:

***ALIŞTIRMA-1:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2047.png)

Bu sorunun çözümü şu şekildedir.

```sql
-- veri tabanı içerisindeki tabloları görüntüleyelim:
SELECT * FROM ADDRESS
SELECT * FROM CITIES
SELECT * FROM COUNTRIES
SELECT * FROM DISTRICTS
SELECT * FROM INVOICES
SELECT * FROM INVOICEDETAILS
SELECT * FROM ITEMS
SELECT * FROM ORDERDETAILS
SELECT * FROM ORDERS
SELECT * FROM PAYMENTS
SELECT * FROM TOWNS
SELECT * FROM USERS

-- öncelikle sql sorgusunu bir yazalım:

SELECT 
DATEPART(MONTH, DATE_) MONTHNR_,
DATENAME(MONTH, DATE_) MONTHNAME_,
SUM(TOTALPRICE) AS TOTALSALE
FROM ORDERS 
GROUP BY DATENAME(MONTH, DATE_), DATEPART(MONTH, DATE_)
ORDER BY 1

-- bu sorguyu view haline getirelim

CREATE VIEW MONTH_SALES -- view'ı oluşturduk
AS
	SELECT 
	DATEPART(MONTH, DATE_) MONTHNR_,
	DATENAME(MONTH, DATE_) MONTHNAME_,
	SUM(TOTALPRICE) AS TOTALSALE
	FROM ORDERS 
	GROUP BY DATENAME(MONTH, DATE_), DATEPART(MONTH, DATE_)

-- artık istenilen formatta türkçe ve toplam ay bazlı satışları getirelim
SET LANGUAGE turkish -- dili türkçe yaptık
SELECT MONTHNAME_, TOTALSALE FROM MONTH_SALES
ORDER BY MONTHNR_
```

Bu şekilde sorun çözülmüş olur.

***ALIŞTIRMA-2:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2048.png)

Bu sorunun çözümü şu şekilde gerçekleştirilebilir.

```sql
-- veri tabanı içerisindeki tabloları görüntüleyelim:
SELECT * FROM ADDRESS
SELECT * FROM CITIES
SELECT * FROM COUNTRIES
SELECT * FROM DISTRICTS
SELECT * FROM INVOICES
SELECT * FROM INVOICEDETAILS
SELECT * FROM ITEMS
SELECT * FROM ORDERDETAILS
SELECT * FROM ORDERS
SELECT * FROM PAYMENTS
SELECT * FROM TOWNS
SELECT * FROM USERS

-- öncelikle sql sorgusunu bir yazalım:
SELECT C.CITY AS 'ŞEHİR',
AVG(DATEDIFF(HOUR, O.DATE_, I.DATE_)) AS 'ORTALAMA HAZIRLIK'
FROM ORDERS O
JOIN INVOICES I ON I.ORDERID = O.ID
JOIN ADDRESS A ON A.ID = I.ADDRESSID
JOIN CITIES C ON C.ID = A.CITYID
GROUP BY C.CITY

-- view oluşturma
CREATE VIEW VWINVOICEDURATION
AS
	SELECT C.CITY AS 'ŞEHİR',
	AVG(DATEDIFF(HOUR, O.DATE_, I.DATE_)) AS 'ORTALAMA_HAZIRLIK'
	FROM ORDERS O
	JOIN INVOICES I ON I.ORDERID = O.ID
	JOIN ADDRESS A ON A.ID = I.ADDRESSID
	JOIN CITIES C ON C.ID = A.CITYID
	GROUP BY C.CITY
	
	-- view görüntüleme
SELECT * FROM VWINVOICEDURATION

SELECT TOP 10 * FROM VWINVOICEDURATION 
ORDER BY ORTALAMA_HAZIRLIK -- siparişin en hızlı hazırlandığı 10 şehir.

SELECT TOP 10 * FROM VWINVOICEDURATION 
ORDER BY ORTALAMA_HAZIRLIK DESC -- siparişin en yavaş hazırlandığı 10 şehir.

```

Bu şekilde sorun çözülmüş olur.

***ALIŞTIRMA-3:***

![Untitled](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Untitled%2049.png)

Bu sorunun çözümü bu şekildedir:

```sql
-- veri tabanı içerisindeki tabloları görüntüleyelim:
SELECT * FROM ADDRESS
SELECT * FROM CITIES
SELECT * FROM COUNTRIES
SELECT * FROM DISTRICTS
SELECT * FROM INVOICES
SELECT * FROM INVOICEDETAILS
SELECT * FROM ITEMS
SELECT * FROM ORDERDETAILS
SELECT * FROM ORDERS
SELECT * FROM PAYMENTS
SELECT * FROM TOWNS
SELECT * FROM USERS

-- öncelikle sql sorgusunu bir yazalım:

SELECT 
NAMESURNAME AS 'ADSOYAD', -- ad soyad bilgisi
GENDER AS 'CİNSİYET', -- cinsiyet
DATEDIFF(YEAR, BIRTHDATE, GETDATE()) AS 'YAŞ', -- yaş değişkeni
BIRTHDATE, -- doğum tarihi
CASE -- cinsiyete uygun olarak bey veya hanım şeklinde mesajlar
WHEN GENDER = 'K' THEN 'SN. '+NAMESURNAME+' Hanım '+ CONVERT(VARCHAR, DATEDIFF(YEAR, BIRTHDATE, GETDATE()))+'. yaşınızı kutlar. Ailenizle ve sevdiklerinizle mutlu bir yıl dileriz...'
WHEN GENDER = 'E' THEN 'SN. '+NAMESURNAME+' Bey '+ CONVERT(VARCHAR, DATEDIFF(YEAR, BIRTHDATE, GETDATE()))+'. yaşınızı kutlar. Ailenizle ve sevdiklerinizle mutlu bir yıl dileriz...'
END AS MESAJ
FROM USERS

-- view oluşturma
CREATE VIEW VWBUGUNDOGANLAR
AS
	SELECT 
	NAMESURNAME AS 'ADSOYAD', -- ad soyad bilgisi
	GENDER AS 'CİNSİYET', -- cinsiyet
	DATEDIFF(YEAR, BIRTHDATE, GETDATE()) AS 'YAŞ', -- yaş değişkeni
	BIRTHDATE, -- doğum tarihi
	CASE -- cinsiyete uygun olarak bey veya hanım şeklinde mesajlar
	WHEN GENDER = 'K' THEN 'SN. '+NAMESURNAME+' Hanım '+ CONVERT(VARCHAR, DATEDIFF(YEAR, BIRTHDATE, GETDATE()))+'. yaşınızı kutlar. Ailenizle ve sevdiklerinizle mutlu bir yıl dileriz...'
	WHEN GENDER = 'E' THEN 'SN. '+NAMESURNAME+' Bey '+ CONVERT(VARCHAR, DATEDIFF(YEAR, BIRTHDATE, GETDATE()))+'. yaşınızı kutlar. Ailenizle ve sevdiklerinizle mutlu bir yıl dileriz...'
	END AS MESAJ
	FROM USERS
	
	SELECT * FROM VWBUGUNDOGANLAR -- view'ın görüntülenmesi
```

Bu şekilde sorun çözülmüş olur.

View’la ilgili anlatılacaklar bu kadardı. Bir sonraki konumuz:

### User Defined Function

Kullanıcının kendisinin tanımladığı fonksiyonlara user defined function adı verilir. Bu fonksiyonlar içine hiç parametre almayabilir veya birden fazla parametre alarak sonuç döndüren fonksiyonlardır.

- Scalar valued ve table valued olarak ikiye ayrılmaktadır.
- Scalar valued: İçerisine sadece bir adet parametre alan fonksiyonlardır. Örneğin `DATEDIFF()` fonksiyonları birer scalar valued fonksiyonudur.
- Table valued: Farklı şekillerde kullanılan table valued fonksiyonları genellikle birden fazla parametre alabilir. Örneğin `string_split()` fonksiyonu bir table valued fonksiyonudur.
- Sorgu içerisinde kullanılabilir ve her satır için çalıştırılabilir.
- Fonksiyonların içinde insert, update, delete cümleleri kullanılmaz, select cümleleri kullanılır.
- View’dan farklı olaraka içinde değişken tanımlanabilir, bu değişkenlere değer atanabilir.
- Kodu sadeleştirir.
- Sürekli yapılan işlemler için aynı kodu sürekli yazmak yerine tek seferde yazmamızı sağlar. Böylece değişiklik yapılacağı zaman sadece fonksiyonda değişiklik yapılması yeterlidir.

***SCALAR VALUED FUNCTIONS***

Bütün veri tabanı nesnelerinde olduğu gibi user defined function’da create ile oluşturulur, alter ile değiştirilir, drop ile silinir.

Genel anlamda bir scalar valued function şu şekilde oluşturulur.

```sql
CREATE FUNCTION DBO.TOPLA(@SAYI1 AS INT, @SAYI2 AS INT)
RETURNS INT -- ne tür sonuç döndürüleceği belirtilir
AS 
BEGIN  -- fonksiyonların yapacağı işlemler bu kısımda belirtilir.

RETURN @SAYI1 + @SAYI2 -- en son sonucun döndüğü kısım burasıdır.
END
```

Bu şekilde ilgili veri tabanında sorgu çalıştırılırsa şu şekilde fonksiyon oluşturulmuş olur.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image.png)

Görüldüğü gibi fonksiyon oluşturuldu.

Fonksiyonu kullanmak istediğimiz zaman şu tip bir sorguyla fonksiyonu çağırabiliriz.

`SELECT dbo.TOPLA(30,15) -- 45`

Bu şekilde fonksiyon çalıştırılmış olur.

Fonksiyonlarda güncelleme yapmak için ise `ALTER` fonksiyonu kullanılır.

```sql
-- fonksiyonda güncelleme yapmak için ise
ALTER FUNCTION DBO.TOPLA(@SAYI1 AS INT, @SAYI2 AS INT)
RETURNS INT -- ne tür sonuç döndürüleceği belirtilir
AS 
BEGIN  -- fonksiyonların yapacağı işlemler bu kısımda belirtilir.

RETURN @SAYI1 + @SAYI2
END
```

Bu şekilde fonksiyonu güncellemiş oluruz.

Genellikle yapılacak işlemler yukarıda belirtildiği gibi sadece `RETURN` kısmında belirtilmez. Yapılacak işlemlerin tamamı `BEGIN - END` blokları içerisinde ele alınır. 

```sql
ALTER FUNCTION DBO.TOPLA(@SAYI1 AS INT, @SAYI2 AS INT)
RETURNS INT -- ne tür sonuç döndürüleceği belirtilir
AS 
BEGIN  -- fonksiyonların yapacağı işlemler bu kısımda belirtilir.
DECLARE @SONUC AS INT
SET @SONUC = @SAYI1 + @SAYI2
RETURN @SONUC
END
```

Bu kısımda ise bir sonuc değişkeni belirtilir. Bu sonuc değişkeni set edilerek return kısmında bu çağırılarak fonksiyon işlemi yapılır.

Yukarıda yazılan sorguların tamamı şu şekildedir:

```sql
/*
	Bütün veri tabanı nesnelerinde olduğu gibi user defined functionlarda
	create ile oluşturulur.
	alter ile değiştirilir
	drop ile silinir.
*/
/*
CREATE FUNCTION DBO.TOPLA(@SAYI1 AS INT, @SAYI2 AS INT)
RETURNS INT -- ne tür sonuç döndürüleceği belirtilir
AS 
BEGIN  -- fonksiyonların yapacağı işlemler bu kısımda belirtilir.

RETURN @SAYI1 + @SAYI2
END
*/
SELECT dbo.TOPLA(30,15) -- 45

-- fonksiyonda güncelleme yapmak için ise
ALTER FUNCTION DBO.TOPLA(@SAYI1 AS INT, @SAYI2 AS INT)
RETURNS INT -- ne tür sonuç döndürüleceği belirtilir
AS 
BEGIN  -- fonksiyonların yapacağı işlemler bu kısımda belirtilir.

RETURN @SAYI1 + @SAYI2
END

-- begin end blokları içerisinde ise şu şekilde bir yapı da kurgulayabiliriz.

ALTER FUNCTION DBO.TOPLA(@SAYI1 AS INT, @SAYI2 AS INT)
RETURNS INT -- ne tür sonuç döndürüleceği belirtilir
AS 
BEGIN  -- fonksiyonların yapacağı işlemler bu kısımda belirtilir.
DECLARE @SONUC AS INT
SET @SONUC = @SAYI1 + @SAYI2
RETURN @SONUC
END
```

Başka bir örnekte ise date verilerine göre ay bilgilerini getiren bir fonksiyon yazalım.

```sql
/*
	Ay bilgilerini getiren bir fonksiyon oluşturalım.
*/

CREATE FUNCTION DBO.GETMONTHNAME(@DATE AS DATETIME) -- fonksiyonu oluşturduk
RETURNS VARCHAR(20) 
AS
BEGIN

DECLARE @RESULT AS VARCHAR(20)
IF MONTH(@DATE) = 1 SET @RESULT = '01.OCAK' -- aylara göre durum değerlendirmesi
IF MONTH(@DATE) = 2 SET @RESULT = '02.ŞUBAT'
IF MONTH(@DATE) = 3 SET @RESULT = '03.MART'
IF MONTH(@DATE) = 4 SET @RESULT = '04.NİSAN'
IF MONTH(@DATE) = 5 SET @RESULT = '05.MAYIS'
IF MONTH(@DATE) = 6 SET @RESULT = '06.HAZİRAN'
IF MONTH(@DATE) = 7 SET @RESULT = '07.TEMMUZ'
IF MONTH(@DATE) = 8 SET @RESULT = '08.AĞUSTOS'
IF MONTH(@DATE) = 9 SET @RESULT = '09.EYLÜL'
IF MONTH(@DATE) = 10 SET @RESULT = '10.EKİM'
IF MONTH(@DATE) = 11 SET @RESULT = '11.KASIM'
IF MONTH(@DATE) = 12 SET @RESULT = '12.ARALIK'

RETURN @RESULT

END

SELECT dbo.GETMONTHNAME('2022-02-06') -- veri girişi

-- bir talep doğrultusunda raporda değişiklik yapılması istenildi.

ALTER FUNCTION DBO.GETMONTHNAME(@DATE AS DATETIME) -- fonksiyonu güncelledik.
RETURNS VARCHAR(20)
AS
BEGIN

DECLARE @RESULT AS VARCHAR(20)
IF MONTH(@DATE) = 1 SET @RESULT = '01.OCK'
IF MONTH(@DATE) = 2 SET @RESULT = '02.ŞBT'
IF MONTH(@DATE) = 3 SET @RESULT = '03.MRT'
IF MONTH(@DATE) = 4 SET @RESULT = '04.NSN'
IF MONTH(@DATE) = 5 SET @RESULT = '05.MYS'
IF MONTH(@DATE) = 6 SET @RESULT = '06.HZRN'
IF MONTH(@DATE) = 7 SET @RESULT = '07.TMMZ'
IF MONTH(@DATE) = 8 SET @RESULT = '08.AĞSTS'
IF MONTH(@DATE) = 9 SET @RESULT = '09.EYLL'
IF MONTH(@DATE) = 10 SET @RESULT = '10.EKM'
IF MONTH(@DATE) = 11 SET @RESULT = '11.KSIM'
IF MONTH(@DATE) = 12 SET @RESULT = '12.ARLK'

RETURN @RESULT

END

SELECT dbo.GETMONTHNAME('2022-02-06')
```

Bu şekilde bir fonksiyon yapılmış oldu.

User defined functionlar kullanarak karmaşık yapılarda olan subquery sorgularını ya da hesaplama gibi işlem gerektiren durumları kolaylıkla halledebilirsin.

Örnek sorgular:

```sql
SELECT I.ID, I.ITEMCODE, I.ITEMNAME, I.CATEGORY1, I.BRAND, 
(SELECT SUM(AMOUNT) FROM ORDERDETAILS WHERE ITEMID = I.ID) TOTALAMOUNT
FROM ITEMS I

-- bir üründen toplamda ne kadar satıldı bilgisini getirtelim
--SELECT SUM(AMOUNT) FROM ORDERDETAILS WHERE ITEMID = 1

-- fonksiyonu kullanarak verileri alalım

SELECT DBO.GETTOTALAMOUNT(2)

-- bu fonksiyonu ise bir subquery olarak kullanabiliriz.
SELECT I.ID, I.ITEMCODE, I.ITEMNAME, I.CATEGORY1, I.BRAND, 
(SELECT SUM(AMOUNT) FROM ORDERDETAILS WHERE ITEMID = I.ID) TOTALAMOUNT,
DBO.GETTOTALAMOUNT(I.ID) TOTALAMOUNT2 -- subquery olarak yazılmış fonksiyon
FROM ITEMS I

-- peki parasal olarak ne kadar satıldığına bir bakalım
SELECT I.ID, I.ITEMCODE, I.ITEMNAME, I.CATEGORY1, I.BRAND, 
(SELECT SUM(AMOUNT) FROM ORDERDETAILS WHERE ITEMID = I.ID) TOTALAMOUNT,
DBO.GETTOTALAMOUNT(I.ID) TOTALAMOUNT2, -- subquery olarak yazılmış toplam satış adeti fonksiyon
(SELECT SUM(LINETOTAL) FROM ORDERDETAILS WHERE ITEMID = I.ID) TOTALSALE -- parasal olarak ne kadar satıldı ?
FROM ITEMS I

-- parasal olarak ne kadar satıldığına dair yapıyı bir de fonksiyon kullanarak yazalım
SELECT I.ID, I.ITEMCODE, I.ITEMNAME, I.CATEGORY1, I.BRAND, 
(SELECT SUM(AMOUNT) FROM ORDERDETAILS WHERE ITEMID = I.ID) TOTALAMOUNT,
DBO.GETTOTALAMOUNT(I.ID) TOTALAMOUNT2, -- subquery olarak yazılmış toplam satış adeti fonksiyon
(SELECT SUM(LINETOTAL) FROM ORDERDETAILS WHERE ITEMID = I.ID) TOTALSALE, -- parasal olarak ne kadar satıldı ?
DBO.GETTOTALSALE(I.ID) TOTALSALE2 -- subquery olarak yazılmış parasal olarak ne kadar satıldı bilgisini gösteren fonksiyon
FROM ITEMS I
```

Bu şekilde karmaşık sorguları daha da sade hale getirebilmek ve daha esnek halde çalışmasını sağlayabilmek için kullandığımız iki adet fonksiyon bulunmaktadır. Bu fonksiyonlardan bir tanesi olan `DBO.GETTOTALAMOUNT(I.ID) TOTALAMOUNT2, -- subquery olarak yazılmış toplam satış adeti fonksiyonu` sorgusunun içeriğini ve `DBO.GETTOTALSALE(I.ID) TOTALSALE2 -- subquery olarak yazılmış parasal olarak ne kadar satıldı bilgisini gösteren fonksiyonunu` içeriğini beraber inceleyelim.

*Birinci fonksiyon:*

```sql
-- toplam satışıyla ilgili bir fonksiyon oluşturalım.

CREATE FUNCTION DBO.GETTOTALAMOUNT(@ITEMID INT)
RETURNS INT
AS 
BEGIN
	DECLARE @RESULT AS INT

	SELECT @RESULT = SUM(AMOUNT) FROM ORDERDETAILS WHERE ITEMID = @ITEMID

	RETURN @RESULT
END
```

Bu şekilde birinci fonksiyon tanımlanmaktadır.

*İkinci fonksiyon:*

```sql
-- parasal anlamda ne kadar satış yapıldığını gösteren fonksiyon

CREATE FUNCTION DBO.GETTOTALSALE(@ITEMID INT)
RETURNS FLOAT
AS
BEGIN

	DECLARE @RESULT AS FLOAT

	SELECT @RESULT = SUM(LINETOTAL) FROM ORDERDETAILS WHERE ITEMID = @ITEMID

	RETURN @RESULT

END
```

Bu şekilde de ikinci fonksiyon tanımlanmaktadır.

Başka bir örnek yapmak gerekirse bir veri seti içerisindeki bir ürünün maksimum fiyatı, minimum fiyatı, ortalama fiyatı gibi diğer parametreleri nasıl yapabiliriz.

Fonksiyon sorgularımızı yazalım:

```sql
--  en düşük fiyatlı ürünü getiren fonksiyon
CREATE FUNCTION DBO.GETMINPRICE(@ITEMID INT)
RETURNS FLOAT
AS
BEGIN
	DECLARE @RESULT AS FLOAT
	SELECT @RESULT = MIN(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID = @ITEMID
	RETURN @RESULT
END

-- en yüksek fiyatlı
CREATE FUNCTION DBO.GETMAXPRICE(@ITEMID INT)
RETURNS FLOAT
AS
BEGIN
	DECLARE @RESULT AS FLOAT
	SELECT @RESULT = MAX(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID = @ITEMID
	RETURN @RESULT
END

-- fiyatların ortalaması
CREATE FUNCTION DBO.AVERAGEPRICE(@ITEMID INT)
RETURNS FLOAT
AS
BEGIN
	DECLARE @RESULT AS FLOAT
	SELECT @RESULT = AVG(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID = @ITEMID
	RETURN @RESULT
END
```

Bu şekilde fonksiyonları yazmış olduk. Bunu bu sefer sorgu içerisinde tekrardan yazarak çalıştıralım:

```sql
SELECT I.ID, I.ITEMCODE, I.CATEGORY1, I.BRAND,
DBO.GETTOTALAMOUNT(I.ID) TOTALAMOUNT,
DBO.GETTOTALSALE(I.ID) TOTALSALE,
DBO.GETMINPRICE(I.ID) MINPRICE, -- ürünlerin minimum fiyata sahip hali fonksiyonu
DBO.GETMAXPRICE(I.ID) MAXPRICE, -- ürünlerin maksimum fiyata sahip hali fonksiyonu
DBO.AVERAGEPRICE(I.ID) AVERAGEPRICE -- ürünlerin ortalama fiyatları
FROM ITEMS I
```

Bu şekilde sorgu içerisinde fonksiyonları çalıştırmış olduk.

Ancak bu tip bir çalıştırmalar bize olumsuz olarak dönüş sağlar. Çünkü bu fonksiyonların her biri veri setindeki toplam veri adeti kadar RAM’e yüklenir. İşte bu tip bir problemi aşmak için ise inline table valued kullanılır.

***Inline Table Valued***

Scalar valued fonksiyonlar genellikle bir adet veri tipinde dönüşüm sağlayabileceği için tek bir fonksiyonu bir araya getirtebilir. Birden fazla fonksiyonu bir araya getirebilmek için Inline Table Valued Functionlar kullanılır. Bu fonksiyonlarda genellikle yapılar bir tablo değeriyle dönüş yaparlar. Örnek sorgu yapısını inceleyelim:

```sql

CREATE FUNCTION DBO.ITEMINFO
(	
	@ITEMID INT -- alabileceği parametreler buraya eklenir
)
RETURNS TABLE -- temel farklılık buradadır. Diğer fonksiyonlarda değişkenin veri tipini döndürürken burada table türünde döndürebiliriz.
AS
RETURN -- döndürülmesi istenilen işlemler bu parantez içerisine yazılır
(
	SELECT I.ID, I.ITEMCODE, I.ITEMNAME, SUM(OD.AMOUNT) TOTALAMOUNT, SUM(OD.LINETOTAL) TOTALSALE,
	MIN(OD.UNITPRICE) MINPRICE, MAX(OD.UNITPRICE) MAXPRICE, AVG(OD.UNITPRICE) AVGPRICE
	FROM ITEMS I
	JOIN ORDERDETAILS OD ON OD.ITEMID = I.ID
	WHERE I.ID = @ITEMID
	GROUP BY I.ID, I.ITEMCODE, I.ITEMNAME

)
GO
```

Görüldüğü gibi `RETURNS` ifadesinden sonra dönüş table türündedir. Bu table türünde olduğu için table valued functionların kullanımı da çağrılması da scalar value functiona göre farklılık göstermektedir.

Bu fonksiyon içerisinde `RETURN` ifadesinden sonra istenilen sorgu çalıştırılarak bir tablo yapısı kurgulanır.

Bu fonksiyonu çağırmak için ise:

```sql
-- scalar value ifadeleri tek başına select ifadesiyle çağırabiliriz ancak
-- table valued fonksiyonlarında return ifadesi bir scalar value olmadığı için bir table value olarak değer
-- döndürdüğü için aşağıdaki gibi bir kullanım hatalıdır.

--SELECT DBO.ITEMINFO(1)
/*
	Msg 4121, Level 16, State 1, Line 5
	Cannot find either column "DBO" or the user-defined function or aggregate "DBO.ITEMINFO", or the name is ambiguous.
*/

-- önceden de dediğimiz gibi table valued işlemlerde SELECT * FROM sözcüğü kullanılarak çağırılabilmektedir.
-- Örnek kullanım aşağıdaki gibidir.

SELECT * FROM DBO.ITEMINFO(1)
```

Bu şekilde çağırılmış olur.

Daha önceden de söylenildiği gibi aslında dönüşümler bir tablo olarak sağlanır. Tablo olarak dönüşüm sağlanması neticesinde ise diğer yapılan tabloları birleştirme işlemi *(joinlemeler)* burada da gerçekleştirilebilir.

```sql
-- bir tablo olarak dönüşüm sağladığı için farklı tablolarla joinlemeler yaparak farklı tabloları bir araya getirebiliriz
-- ANCAK burada bir istisna vardır:
/*
	buradaki istisna ise şudur ki klasik olarak yapılan joinleme işlemi table valued fonksiyonlarında kullanılamaz
	bunun yerine kullanılacak fonksiyon ise cross apply ifadesidir. Bu ifade sayesinde joinlemeler gerçekleştirilebilir.

*/
SELECT I.ID, I.ITEMCODE, I.ITEMNAME,
INF.TOTALAMOUNT, INF.TOTALSALE, INF.MINPRICE, INF.MAXPRICE, INF.AVGPRICE
FROM ITEMS I
CROSS APPLY DBO.ITEMINFO(I.ID) INF -- table-valued fonksiyonu için cross apply ifadesidir
```

Burada `CROSS APPLY` kullanılarak ise joinleme yani farklı tabloları bir araya getirme işlemi yapılmış olur.

***Multi Statement Function***

Inline table valued functionlarda sadece tek bir işlem gerçekleştirilebilir. Bu bağımlılıklardan kurtulmak ve tek bir fonksiyonda daha fazla işlemi gerçekleştirmek için *(insert, update, delete)* gibi işlemlerin tamamını tek bir fonksiyonda gerçekleştirmek için Multi Statement Function kullanılır.

```sql

ALTER FUNCTION DBO.ITEMINFO3 
(
	@ITEMID INT
)
RETURNS 
@RESULT TABLE 
(
	ID INT, ITEMCODE VARCHAR(50), ITEMNAME VARCHAR(100),
	TOTALAMOUNT INT, TOTALSALE FLOAT, MINPRICE FLOAT,
	MAXPRICE FLOAT, AVGPRICE FLOAT
)
AS
BEGIN -- birden fazla işlemi (insert, update, delete) işlemlerinin tamamı gerçekleştirilebilir. inline table valued'da sadece tek bir işlem gerçekleştirilir.
	INSERT INTO @RESULT (ID,ITEMCODE, ITEMNAME, TOTALAMOUNT, TOTALSALE, MINPRICE, MAXPRICE, AVGPRICE)
	SELECT I.ID, I.ITEMCODE, I.ITEMNAME, SUM(OD.AMOUNT) TOTALAMOUNT, SUM(OD.LINETOTAL) TOTALSALE,
	MIN(OD.UNITPRICE) MINPRICE, MAX(OD.UNITPRICE) MAXPRICE, AVG(OD.UNITPRICE) AVGPRICE
	FROM ITEMS I
	JOIN ORDERDETAILS OD ON OD.ITEMID = I.ID
	WHERE I.ID = @ITEMID
	GROUP BY I.ID, I.ITEMCODE, I.ITEMNAME
	
	RETURN 
END
GO
```

Yukarıda görüldüğü gibi birden fazla işlemi *(insert, update, delete)* gibi işlemlerin her biri tek bir fonksiyon içerisinde yazılmış oldu. Bu şekilde yapılar kurgulanabilir.

Bu fonksiyonun çağırılarak kullanılması ise şu şekildedir:

```sql
-- belirtilen fonksiyonu kullanmak için ise şu şekilde bir yöntem izleyebiliriz
SELECT * FROM DBO.ITEMINFO3(54545454) -- elle girdiğimiz değerleri getirdi
```

Bu şekilde sorgu çalıştırılarak istenilen düzeyde kullanılabilmektedir.

Genel anlamda fonksiyonlar bu kadardı. 

Biraz alıştırmalarla bu konuyu daha da pekiştirelim:

***ALIŞTIRMA-1:***

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%201.png)

Öncelikle fonksiyonu yazalım:

```sql
-- futbolcuların yaşlarını getirecek fonksiyonu yazacağız.

CREATE FUNCTION DBO.AGE(@BIRTHDATE AS DATE)
RETURNS INT
AS
BEGIN
DECLARE @AGE AS INT
SET @AGE = YEAR(GETDATE()) - YEAR(@BIRTHDATE)

RETURN @AGE
END
```

Bu şekilde tarih verileri içerisinden yıl verilerini alarak bir fonksiyon oluşturmuş olduk. Artık görselde de istenilen formatta verilerimizi çekelim:

```sql
SELECT 
	P.ID, P.PLAYER_NAME, P.BIRTHDATE, 
	DBO.AGE(P.BIRTHDATE) AGE
FROM LAB_PLAYER P
```

Bu şekilde de sorunumuz çözülmüş olur.

***ALIŞTIRMA-2:***

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%202.png)

Öncelikle yaş gruplarını getirecek fonksiyonu yazalım:

```sql
-- oyuncuların yaş gruplarını yazdıran fonksiyonu yazalım

ALTER FUNCTION DBO.AGEGROUP(@BIRTHDATE AS DATE)
RETURNS VARCHAR(20)
AS
BEGIN
DECLARE @AGE AS INT
SET @AGE = DATEDIFF(YEAR, @BIRTHDATE, GETDATE())

DECLARE @RESULT AS VARCHAR(20)
IF @AGE > 20 
	SET @RESULT = '20 DEN KÜÇÜK'
IF @AGE BETWEEN 20 AND 30
	SET @RESULT = '20 ile 30 ARASI'
IF @AGE BETWEEN 30 AND 40
	SET @RESULT = '30 ile 40 ARASI'
IF @AGE > 40
	SET @RESULT = '40 DAN BÜYÜK'

RETURN @RESULT
END
```

Şimdi eskiden yazmış olduğumuz age fonksiyonunu da kullanarak bu fonksiyonu kullanalım:

```sql
SELECT L.ID, L.PLAYER_NAME, L.BIRTHDATE,
DBO.AGE(L.BIRTHDATE) AGE,
DBO.AGEGROUP(L.BIRTHDATE) AGE_EXP
FROM LAB_PLAYER L
```

Bu şekilde fonksiyonumuzu kullanmış olduk.

***ALIŞTIRMA-3:***

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%203.png)

Sırasıyla fonksiyonları oluşturalım:

*Mevcut oynadığı takımı getiren fonksiyon:*

```sql
-- futbolcunun mevcut oynadığı takımı getiren fonksiyon

CREATE FUNCTION DBO.GETTEAMNAME(@PLAYERID INT)
RETURNS VARCHAR(200)
AS
BEGIN
	DECLARE @RESULT AS VARCHAR(200)
	SELECT @RESULT = LM.TEAM FROM LAB_MATCH_PLAYER LM WHERE PLAYERID = @PLAYERID

	RETURN @RESULT
END
```

Oyuncunun PLAYERID’sini fonksiyona parametre olarak göndererek şuanda mevcut olarak oynadığı takımı bize gösterdi.

*Oyuncunun kaç farklı takımda oynadığını getiren fonksiyon:*

```sql
-- kaç farklı takımda oynadığını gösteren fonksiyon
/*
SELECT COUNT(DISTINCT LBP.TEAMID) FROM LAB_MATCH_PLAYER LBP
WHERE PLAYERID = 39562
*/

CREATE FUNCTION DBO.GETTEAMCOUNT(@PLAYERID INT)
RETURNS INT
AS
BEGIN
	DECLARE @RESULT AS INT
	SELECT @RESULT = COUNT(DISTINCT LBP.TEAMID) FROM LAB_MATCH_PLAYER LBP
	WHERE PLAYERID = @PLAYERID

RETURN @RESULT
END
```

Oyuncunun PLAYERID’sini fonksiyona parametre olarak göndererek oyuncunun toplamda kaç farklı takımda oynadığını `COUNT(DISTINCT LBP.TEAM)` fonksiyonuyla bulduk.

*Oyuncunun kaç maç yaptığını getiren fonksiyon:*

```sql
-- toplam kaç maç yaptığını
SELECT * FROM LAB_MATCH_PLAYER

SELECT COUNT(*) TOPLAM_MAC_SAYISI, PLAYER_NAME  FROM LAB_MATCH_PLAYER
GROUP BY  PLAYER_NAME

CREATE FUNCTION DBO.GETMATCHCOUNT(@PLAYERID AS INT)
RETURNS INT
AS
BEGIN
	DECLARE @RESULT AS INT
	SELECT @RESULT = COUNT(*) FROM LAB_MATCH_PLAYER 
	WHERE PLAYERID = @PLAYERID

RETURN @RESULT
END
```

Oyuncunun PLAYERID’sini fonksiyona parametre olarak göndererek oyuncunun toplamda kaç farklı takımda oynadığını `COUNT(*)` fonksiyonuyla bulduk.

*Oyuncunun kaç yıldır futbol oynadığını gösteren fonksiyon:*

```sql
-- kaç yıldır futbol oynadığını

SELECT * FROM LAB_PLAYER
SELECT 
PLAYERID, 
DATEDIFF(YEAR, MIN(DATE_), MAX(DATE_)) AS TOPCU_SURESI
FROM LAB_MATCH_PLAYER 
GROUP BY PLAYERID

CREATE FUNCTION DBO.YEARSACTIVE(@PLAYERID INT)
RETURNS INT
AS 
BEGIN
	DECLARE @RESULT AS INT
	SELECT @RESULT = DATEDIFF(YEAR, MIN(DATE_), MAX(DATE_)) FROM LAB_MATCH_PLAYER
	WHERE PLAYERID = @PLAYERID

	RETURN @RESULT
END
```

Oyuncunun PLAYER_ID’sini fonksiyona parametre olarak göndererek oyuncunun kaç yıldır futbol oynadığını `DATEDIFF()` fonksiyonuyla bulduk.

*Son olarak fonksiyonların hepsini bir araya getiren sonuç sorgusunu yazalım:*

```sql
-- SORGUNUN SON HALİ

SELECT LMP.PLAYERID, LMP.PLAYER_NAME, 
DBO.GETTEAMNAME(LMP.PLAYERID) AS TEAMNAME,
DBO.GETTEAMCOUNT(LMP.PLAYERID) AS TEAMCOUNT,
DBO.YEARSACTIVE(LMP.PLAYERID) AS YEARSACTIVE,
DBO.GETMATCHCOUNT(LMP.PLAYERID) AS MATCHCOUNT
FROM LAB_MATCH_PLAYER LMP
GROUP BY PLAYERID, PLAYER_NAME
```

Bu şekilde problemi çözüme kavuşturmuş olduk.

***ALIŞTIRMA-4:***

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%204.png)

Öncelikle istenilen soruya uygun olarak verileri çekelim:

```sql
/*
	Her bir futbolcunun yaşını ve yaş grubunu,
	futbolcunun puanını,
	kaç kez yedek kadroda çıktığını
	kaç kez asıl kadroda çıktığını
	kaç farklı takımda oynadığını
	toplam kaç maç yaptığını
	kaç yıldır futbol oynadığını
table valued kullanarak gösteriniz.
*/

SELECT * FROM LAB_PLAYER

SELECT PLAYER_NAME,
DATEDIFF(YEAR, BIRTHDATE, GETDATE()) AS AGE,
CASE 
	WHEN DATEDIFF(YEAR, BIRTHDATE, GETDATE()) < 20 THEN '20 DEN KÜÇÜK'
	WHEN DATEDIFF(YEAR, BIRTHDATE, GETDATE()) BETWEEN 20 AND 30 THEN '20 ile 30 ARASINDA'
	WHEN DATEDIFF(YEAR, BIRTHDATE, GETDATE()) BETWEEN 30 AND 40 THEN '30 ile 40 ARASINDA'
	WHEN DATEDIFF(YEAR, BIRTHDATE, GETDATE()) > 40 THEN '40 DAN BÜYÜK'
END AS AGEGROUP,
RATING,
(SELECT COUNT(*) FROM LAB_MATCH_PLAYER WHERE PLAYERID = P.PLAYER_API_ID AND PLAYERTYPE = 'REAL') REALCOUNT,
(SELECT COUNT(*) FROM LAB_MATCH_PLAYER WHERE PLAYERID = P.PLAYER_API_ID AND PLAYERTYPE = 'BACKUP') BACKUPCOUNT,
(SELECT COUNT(DISTINCT LM.TEAMID) FROM LAB_MATCH_PLAYER LM WHERE PLAYERID = P.PLAYER_API_ID) TOTALTEAMCOUNT,
(SELECT COUNT(*) FROM LAB_MATCH_PLAYER WHERE PLAYERID = P.PLAYER_API_ID) TOTALMATCHCOUNT,
(SELECT DATEDIFF(YEAR, MIN(DATE_), MAX(DATE_)) FROM LAB_MATCH_PLAYER WHERE PLAYERID = P.PLAYER_API_ID) TOTALSINCE
FROM LAB_PLAYER P
```

Bu şekilde sorgumuzu oluşturduk.

Şimdi bunu istenilen durum olan inline table valued fonksiyonu haline getirelim:

```sql

CREATE FUNCTION DBO.INFO 
(	
	@PLAYERID INT
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT PLAYER_NAME,
	DATEDIFF(YEAR, BIRTHDATE, GETDATE()) AS AGE,
	CASE 
		WHEN DATEDIFF(YEAR, BIRTHDATE, GETDATE()) < 20 THEN '20 DEN KÜÇÜK'
		WHEN DATEDIFF(YEAR, BIRTHDATE, GETDATE()) BETWEEN 20 AND 30 THEN '20 ile 30 ARASINDA'
		WHEN DATEDIFF(YEAR, BIRTHDATE, GETDATE()) BETWEEN 30 AND 40 THEN '30 ile 40 ARASINDA'
		WHEN DATEDIFF(YEAR, BIRTHDATE, GETDATE()) > 40 THEN '40 DAN BÜYÜK'
	END AS AGEGROUP,
	RATING,
	(SELECT COUNT(*) FROM LAB_MATCH_PLAYER WHERE PLAYERID = P.PLAYER_API_ID AND PLAYERTYPE = 'REAL') REALCOUNT,
	(SELECT COUNT(*) FROM LAB_MATCH_PLAYER WHERE PLAYERID = P.PLAYER_API_ID AND PLAYERTYPE = 'BACKUP') BACKUPCOUNT,
	(SELECT COUNT(DISTINCT LM.TEAMID) FROM LAB_MATCH_PLAYER LM WHERE PLAYERID = P.PLAYER_API_ID) TOTALTEAMCOUNT,
	(SELECT COUNT(*) FROM LAB_MATCH_PLAYER WHERE PLAYERID = P.PLAYER_API_ID) TOTALMATCHCOUNT,
	(SELECT DATEDIFF(YEAR, MIN(DATE_), MAX(DATE_)) FROM LAB_MATCH_PLAYER WHERE PLAYERID = P.PLAYER_API_ID) TOTALSINCE
	FROM LAB_PLAYER P
)
GO

```

Bu şekilde de fonksiyonumuzu oluşturduk.

Şimdi ise kullanılabilir halde mi kontrol edelim:

```sql
SELECT * FROM DBO.INFO(206592)
```

Bu şekilde de fonksiyonu çağırabiliyoruz. Böylelikle sorunu çözmüş olduk.

### Stored Procedure

- Birden fazla TSQL kodunun birlikte yazılıp, sunucu üzerine derlenerek kaydedildiği yapılardır.
- Stored procedure’lar içinde TSQL kodlarının tamamı yazılabilir.

Procedureler içerisinde şunlar yapılabilir:

- Select, insert, update delete işlemlerini kullanma
- Değişken tanımlama
- Döngü oluşturma
- if şartlarını kullanma
- Dosya okuma, veya yazma
- Başka bir procedure’ü fonksiyonu ya da view’i içinden çağırma
- Web servislerine bağlanma
- Temp table kullanma
- Cursor kullanma
- Mail servislerini kullanarak mail gönderme

gibi işlemlerin her birinde yapılabilir. Genelde operasyonel işlemlerin tamamında bu kullanılabilmektedir. Yine aynı şekilde raporlama ekranlarında da kullanılabilmektedir. 

***AD HOC QUERY***

Bir SQL sorgusunu doğrudan SQL Server içerisine döndürülüp kullanılmasına ad hoc query denilir. Genel anlamda INSERT, UPDATE, DELETE gibi klasikleşmiş olan sorgular bu şekilde kullanılmaktadır.

***STORED PROCEDURE OLUŞTURMA***

Bir store procedure oluşturmak, view’larla benzerlik gösterir. Ancak aralarında temel olarak farklar vardır.

```sql
/*
	Bir store procedure oluşturmak view'la benzerlik gösterir.
	bir procedure oluşturmak için --> CREATE
	bir procedure güncellemek için --> ALTER
	bir procedure silmek için --> DROP
	kullanılmaktadır.
*/

SELECT * FROM SALES

-- bu sorguyu bir procedure olarak oluşturalım

CREATE PROCEDURE SP_GETSALES
AS
SELECT * FROM SALES 

-- bu şekilde bir procedure oluşturulur.
----------

-- bir store procedure'ın iki türlü çağrılması mümkündür.
-- birincisi
SP_GETSALES

-- ikincisi ise 
EXEC SP_GETSALES
```

Bu şekilde oluşturulabilir.

Ancak önceden de bahsettiğimiz gibi SP’ler View’larla benzerlik gösterir demiştik. Aralarındaki farklar ise şu şekilde açıklanabilir.

```sql
/*
Temel olarak bir store precedure'ın view'la benzerlik gösterdiğini belirtmiştik. Ancak
aralarındaki temel fark ise şudur:
bir store procedure'a parametre gönderemezsin ancak view'a gönderebilirsin.
*/

-- örnek bir view oluşturalım:

CREATE VIEW VW_GETSALES
AS
SELECT * FROM SALES 

-- bu view'ı şu şekilde kullanabiliriz.

SELECT * FROM VW_GETSALES
WHERE BRANCH = 'İSTANBUL' -- görüldüğü gibi parametre atabiliyorum 

-- ancak bir store procedure'a parametre gönderemem

-- EXEC SP_GETSALES WHERE BRANCH = 'İSTANBUL' (hatalı bir ifade olduğundan dolayı çalışmayacaktır.)

-- bir sp'ye parametreyi ancak güncelleyerek atabiliriz.
```

Bu şekilde yapı kurulmuş olur. 

Parametre gönderme işlemi ise şu şekildedir:

```sql
-- bir store procedure'a güncellemeyle parametre gönderme işlemi

ALTER PROCEDURE SP_GETSALES
@CITY AS VARCHAR(50) -- procedure'a göndereceğim parametre
AS
SELECT * FROM SALES
WHERE
CITY = @CITY

-- bu parametreli SP'yi şimdi çağıralım

-- eğer parametresiz çağırırsak
-- EXEC SP_GETSALES -- (Procedure or function 'SP_GETSALES' expects parameter '@CITY', which was not supplied.)

-- parametreli olarak çağıralım
EXEC SP_GETSALES 'BURSA' -- bursa kayıtları gelir.
EXEC SP_GETSALES 'İZMİR' -- İZMİR KAYITLARI GELİR
```

Bu şekilde SP’lere parametre gönderilebilir.

SP’ler sadece bir adet parametreyle çalışmayabilir. Birden fazla parametreyle de çalışabilir. 

Bu durumu ise şu şekilde açıklayabiliriz:

```sql
-- ST'lere birden fazla da parametre atılabilir.
-- örneğin begdate ve enddate parametreleri atalım

ALTER PROCEDURE SP_GETSALES
@CITY AS VARCHAR(50), -- procedure'a göndereceğim parametre
@BEGDATE AS DATE, -- ikinci parametre
@ENDDATE AS DATE -- üçüncü parametre
AS
SELECT * FROM SALES
WHERE
CITY = @CITY
AND
DATE_ BETWEEN @BEGDATE AND @ENDDATE -- ikinci şart  

-- güncellenmiş çok parametreli SP'yi çağırma
EXEC SP_GETSALES 'İSTANBUL', '20190802','20190906'
```

Bu şekilde de parametreleri göndermiş olduk.

Burada önemli olan noktalardan bir tanesi ise parametrelerin ya doğru sırada ya da değişkenlerin isimleri önceden belirtilerek gönderilmesidir. Diğer türlü yapılacak her işlemde veri tipi dönüştürme hataları alınabilmektedir.

```sql
-- SP'lerde parametreler doğru sırada gönderilmelidir.
-- ya da parametre isimleriyle gönderilmelidir.
EXEC SP_GETSALES @BEGDATE = '20190802', @ENDDATE = '20190906', @CITY = 'İSTANBUL' -- bu şekilde de çalışabilmektedir.
```

Bu şekilde de gönderilerek daha düzgün procedure’lar yazılabilmektedir.

***DEFAULT DEĞERE SAHİP STORED PROCEDURE OLUŞTURMA***

SP’lere parametreler gönderilmediğinde hatalar alınabildiğinden bahsetmiştik. Eğer ki parametreler default olarak tanımlanırsa hatalar alınmadan da işlemlere devam edilebilir.

```sql
-- bazen procedure'lara parametre göndermeyebiliriz. İşte bu gönderilme durumunu ise default parametrelerle gönderebiliriz.

ALTER PROCEDURE SP_GETSALES
@CITY AS VARCHAR(50) = 'İZMİR',
@BEGDATE DATE,
@ENDDATE DATE
AS
SELECT * FROM SALES
WHERE CITY = @CITY AND 
DATE_ BETWEEN @BEGDATE AND @ENDDATE 

-- örneğin şehir yerine herhangi bir değer girilmediğinde tüm şehirleri getirmesini isteyelim:

ALTER PROCEDURE SP_GETSALES
@CITY AS VARCHAR(50) = '%',
@BEGDATE DATE,
@ENDDATE DATE
AS
SELECT * FROM SALES
WHERE CITY LIKE @CITY AND 
DATE_ BETWEEN @BEGDATE AND @ENDDATE 
```

Bu şekilde parametre gönderilmeden şehir değişkenini manipüle ettik. Eğer ki şehir değişkeni içerisinde değer girilmezse bütün şehirleri bize listeleyecektir.

```sql
-- default parametreli sorgu
EXEC SP_GETSALES @BEGDATE = '20190618', @ENDDATE = '20190718' --, @CITY = 'İSTANBUL' (parametre default olarak gönderildiği için hata alınmaz)

-- default parametreli % sorgusu
-- default değerinde % olduğu için eğer şehir parametresi girilmezse tüm şehirleri getirir.
EXEC SP_GETSALES @BEGDATE = '20190618', @ENDDATE = '20190718'
```

Bu şekilde tüm şehirleri bize listeleyecektir.

Bir de tarih değişkenlerine default değerler tanımlayalım:

```sql
-- tarih değişkenleriyle oynayalım
-- tarih değişkenleri eğer girilmezse hata almayalım null girelim
ALTER PROCEDURE SP_GETSALES
@CITY AS VARCHAR(50) = '%',
@BEGDATE DATE = NULL,
@ENDDATE DATE = NULL
AS
SELECT * FROM SALES
WHERE CITY LIKE @CITY AND 
DATE_ BETWEEN @BEGDATE AND @ENDDATE 
```

Bu şekilde eğer tarih değerleri SP çağırılırken getirtilmezse hata alınmadan çalışmaya devam edecektir.

```sql
-- default değeri null olan date verilerine bi bakalım
EXEC SP_GETSALES -- hata alınmadı ama veri de alınmadı
```

Bu şekilde sorgu çalışmaya devam edecektir.

Önceden de bahsettiğimiz gibi SP’ler içerisinde TSQL sorguları yazabiliriz. İşte bu sorguların yazılmış hali aşağıdadır:

```sql
-- önceden de bahsettiğimiz gibi store procedure'larda TSQL kodları yazabilirdik.
-- Buna göre tarih girilmediği zaman ilk üç aylık verileri aldıralım
ALTER PROCEDURE SP_GETSALES
@CITY AS VARCHAR(50) = '%',
@BEGDATE DATE = NULL,
@ENDDATE DATE = NULL
AS
-- tarih değeri boş girilmişse ilk üç aylık yapıyı getirir.
SET @ENDDATE = ISNULL(@ENDDATE, '20190401') -- bu da ikinci bir yöntem if kullanmadan yapılabilir.
IF @BEGDATE IS NULL
	SET @BEGDATE = '20190101'

SELECT * FROM SALES
WHERE CITY LIKE @CITY AND 
DATE_ BETWEEN @BEGDATE AND @ENDDATE 
ORDER BY DATE_
```

Eğer ki tarih verisi girilmemişse null olduğundan ötürü bize ilk üç aylık verileri listeleyecektir.

```sql
-- default tarih değeri girildiği için aşağıdaki sorgu çalışacaktır.
EXEC SP_GETSALES

-- default değer girdik diye parametre göndermeye de devam edebiliriz.
EXEC SP_GETSALES @CITY = 'A%'
```

Bu şekilde sorgu çalışmaya devam edecektir.

Yukarıda denildiği gibi default değer girildi diye herhangi bir parametre girişi olmayacak anlamına gelmemektedir. Eğer ki parametre girilirse yine aynı şekilde sorgu istenilen parametreye uygun olarak çalışacaktır. Burada en önemli nokta hata vermeden hata yönetimini sağlamaya çalışmaktır.

***RAISERROR KULLANIMI***

RAISERROR, SQL Server'da hata mesajları oluşturmak ve kullanıcıya özel hata mesajları iletmek için kullanılan bir komuttur. Bu komut, belirli bir hata durumu tespit edildiğinde kullanıcıya anlamlı bir geri bildirim sağlamak amacıyla kullanılır. RAISERROR, hata mesajının metnini, önem derecesini (severity), ve hata durumunu (state) belirlemenize olanak tanır.

Şimdi bir store procedure oluşturalım ve raiseerror kullanalım:

```sql
-- ilişkisel bir sorguyu stored procedure yapalım

CREATE PROC SP_GETORDERS
@USERNAME VARCHAR(100),
@BEGDATE AS DATETIME,
@ENDDATE AS DATETIME,
@CITY AS VARCHAR(100)
AS
SELECT 
	O.ID, O.DATE_, U.USERNAME_ ,U.NAMESURNAME,
	C.CITY, T.TOWN, D.DISTRICT, A.POSTALCODE, A.ADDRESSTEXT,
	I.ITEMCODE, I.ITEMNAME, I.BRAND, I.CATEGORY1, I.CATEGORY2, I.CATEGORY3, I.CATEGORY4,
	I.UNITPRICE ITEMPRICE, OD.UNITPRICE, OD.AMOUNT, OD.LINETOTAL
FROM ORDERS O
JOIN USERS U ON U.ID = O.USERID
JOIN ADDRESS A ON A.ID = O.ADDRESSID
JOIN CITIES C ON C.ID = A.CITYID
JOIN TOWNS T ON T.ID = A.TOWNID
JOIN DISTRICTS D ON D.ID = A.DISTRICTID
JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID
JOIN ITEMS I ON I.ID = OD.ITEMID
WHERE U.USERNAME_ LIKE @USERNAME AND
O.DATE_ BETWEEN @BEGDATE AND @ENDDATE
AND C.CITY LIKE @CITY
```

Bu şekilde bir ilişkisel tablolar arasında bir store procedure oluşturduk.

```sql
-- ilişkisel sorguyla oluşturulmuş procedure'u çağırma
EXEC SP_GETORDERS
@USERNAME = '%',
@BEGDATE = '20190501',
@ENDDATE = '20190531',
@CITY = 'BURSA'
```

Bu şekilde de sp’mizi çalıştırdık.

Şimdi ise kullanıcıyı uyaracak bir raiserror’lu bir yapı haline getirelim

```sql
-- örneğin kullanıcıyı en fazla 3 aylık bir aralıkta değer girmesine zorlayalım fazlası olursa hata versin

ALTER PROC SP_GETORDERS
@USERNAME VARCHAR(100),
@BEGDATE AS DATETIME,
@ENDDATE AS DATETIME,
@CITY AS VARCHAR(100)
AS
IF DATEDIFF(MONTH, @BEGDATE, @ENDDATE) > 3 -- üç aylık uyarı kısmı
BEGIN
	RAISERROR('Lütfen 3 aydan daha kısa bir aralık giriniz!',16,1) -- hatayı verir ama programı durdurmaz verileri getirmeye devam eder
	RETURN -- bu eğer girilirse hata programı kırarak durdurur
END
SELECT 
	O.ID, O.DATE_, U.USERNAME_ ,U.NAMESURNAME,
	C.CITY, T.TOWN, D.DISTRICT, A.POSTALCODE, A.ADDRESSTEXT,
	I.ITEMCODE, I.ITEMNAME, I.BRAND, I.CATEGORY1, I.CATEGORY2, I.CATEGORY3, I.CATEGORY4,
	I.UNITPRICE ITEMPRICE, OD.UNITPRICE, OD.AMOUNT, OD.LINETOTAL
FROM ORDERS O
JOIN USERS U ON U.ID = O.USERID
JOIN ADDRESS A ON A.ID = O.ADDRESSID
JOIN CITIES C ON C.ID = A.CITYID
JOIN TOWNS T ON T.ID = A.TOWNID
JOIN DISTRICTS D ON D.ID = A.DISTRICTID
JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID
JOIN ITEMS I ON I.ID = OD.ITEMID
WHERE U.USERNAME_ LIKE @USERNAME AND
O.DATE_ BETWEEN @BEGDATE AND @ENDDATE
AND C.CITY LIKE @CITY
```

Eğer ki girilen date türündeki değerler 3 aydan daha fazla bir süreye sahipse program hata alacaktır. 

Burada önemli noktalar şudur:

```sql
IF DATEDIFF(MONTH, @BEGDATE, @ENDDATE) > 3 -- üç aylık uyarı kısmı
BEGIN
	RAISERROR('Lütfen 3 aydan daha kısa bir aralık giriniz!',16,1) -- hatayı verir ama programı durdurmaz verileri getirmeye devam eder
	RETURN -- bu eğer girilirse hata programı kırarak durdurur
END
```

şart bloklarının içerisinde yazılan raise error ifadesi bize durumuna göre program hata kodunu ve mesajını iletir. Burada eğer `RETURN` ifadesi girilmezse program çalışır, verileri getirir sonra hata mesajını verir. Ancak `RETURN` ifadesi girilirse program çalışmadan hata olarak kendini durdurur.

Şimdi bu sorguyu çalıştıralım:

```sql
-- raiserror'lu sorguyu deneyelim
EXEC SP_GETORDERS
@USERNAME = '%',
@BEGDATE = '20190501',
@ENDDATE = '20190930',
@CITY = 'BURSA'
```

Yukarıda girilen tarih türündeki veriler 3 aydan daha uzun süreyi ifade ettiği için program `return` girildiği için durur ve hata mesajı aşağıdaki gibidir.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%205.png)

Bu şekilde client tarafında bir `try/catch` hata yönetim bloklarıyla programın çalışıp çalışılmadığını kontrol etmeye olanak sağlamaktadır.

***INSERT INTO EXEC***

Stored procedure’larda değişiklik yapmak bazen yetkinlik isteyen veya bu procedure’ı kullanan bazı yapılarda değişiklik yapmasını gerektirdiği için problemli olabilir. Bundan dolayı da ise stored procedure’ların her birini ayrı bir tablo haline getirip ayrı ayrı işlemler gerçekleştirmek görece daha kolay olabilir. İşte bu durumu çözebilmemiz için insert into exec yapısını kullanırız.

Öncelikle SP’ye göre özelleştirilmiş tablo yapısını CREATE TABLE diyerek oluşturalım:

```sql
-- bazen SP'lerde değişiklik yapmaya yetkimiz olmayabilir
-- ancak belirli bir koşulda verileri örneğin markası 'falım' olan ürünleri getirmemiz gerekebilir
-- sp'lerde where koşulu kullanamadığımız için bunları ayrı bir tablo içerisinde kurgulamak daha kolaydır.

-- tabloyu oluşturalım
CREATE TABLE RESULT (
ID INT, DATE_ DATETIME, USERNAME_ VARCHAR(100),
NAMESURNAME VARCHAR(100), CITY VARCHAR(100),
TOWN VARCHAR(100), DISTRICT VARCHAR(100),
POSTALCODE VARCHAR(100), ADDRESSTEXT VARCHAR(100),
ITEMCODE VARCHAR(100), ITEMNAME VARCHAR(100),
BRAND VARCHAR(100), CATEGORY1 VARCHAR(100),
CATEGORY2 VARCHAR(100), CATEGORY3 VARCHAR(100),
CATEGORY4 VARCHAR(100), ITEMPRICE FLOAT, 
UNITPRICE FLOAT, AMOUNT INT, LINETOTAL FLOAT
)
```

Bu şekilde tablomuzu oluşturduk.

Şimdi bu tablomuzun içerisine sp’nin özelleştirdiği verileri ekleyelim.

Bu durum için `INSERT INTO ‘tablo_ismi’ EXEC ‘SP_ismi’` şeklinde kurgulayabiliriz.

```sql
-- burada sırası ve veri tiplerinin aynı olması gerekir.
INSERT INTO RESULT

EXEC SP_GETORDERS
@USERNAME = '%',
@BEGDATE = '20190501',
@ENDDATE = '20190531',
@CITY = 'İSTANBUL'
```

Bu şekilde tablo içerisine SP’nin verilerini eklemiş olduk.

Bu tabloyu klasikleşmiş SQL tablo sorguları gibi kullanabiliriz.

```sql
-- tabloyu getirtelim

SELECT * FROM RESULT 

-- özelleştirerek getirtelim

SELECT * FROM RESULT WHERE BRAND = 'ULKER'
```

Bu şekilde kullanım söz konusudur.

İşlem bittikten sonra tabloyu silebiliriz.

```sql
-- tabloyu tekrardan silelim
DROP TABLE RESULT
```

Bu şekilde de tabloyu silebiliriz.

Bu tip işlemlerde sürekli olarak tablolar oluşturmak silmek hafızaya yük olmakla beraber yine aynı bir veri tabanı uzmanıyla aynı anda işlemler gerçekleştiriyorsanız çakışmalara neden olacaktır. İşte bu çakışmaları önlemek için ise temp table kullanılır.

Şimdi temp table olarak tabloyu tekrardan oluşturalım

```sql
-- sürekli olarak tablolar oluşturmak hafızada yük olmakla beraber
-- aynı zamanda başka zamanda aynı tablo isminde çıktılar oluşturmak çakışmalara sebep olacaktır.
-- bundan ötürü de bu durumu aşabilmek için temp table kullanılır.

-- temp table (#) ifadesi geçici olarak oluşturulur ve oturum kapandığı zaman yapılan işlemlerin tamamını silmeye olanak sağlayan bir yapıdır.
-- şimdi aynı işlemi temp table kullanarak yapalım

-- tabloyu oluşturalım
CREATE TABLE #RESULT ( -- # temp table yani geçici tablo oluşturma
ID INT, DATE_ DATETIME, USERNAME_ VARCHAR(100),
NAMESURNAME VARCHAR(100), CITY VARCHAR(100),
TOWN VARCHAR(100), DISTRICT VARCHAR(100),
POSTALCODE VARCHAR(100), ADDRESSTEXT VARCHAR(100),
ITEMCODE VARCHAR(100), ITEMNAME VARCHAR(100),
BRAND VARCHAR(100), CATEGORY1 VARCHAR(100),
CATEGORY2 VARCHAR(100), CATEGORY3 VARCHAR(100),
CATEGORY4 VARCHAR(100), ITEMPRICE FLOAT, 
UNITPRICE FLOAT, AMOUNT INT, LINETOTAL FLOAT
)
```

Görüldüğü gibi tabloyu oluşturduk.

Yine aynı şekilde temp table içerisine verilerimizi ekleyelim:

```sql
-- SP ile temp table'a ekleme

INSERT INTO #RESULT

EXEC SP_GETORDERS
@USERNAME = '%',
@BEGDATE = '20190501',
@ENDDATE = '20190531',
@CITY = 'İSTANBUL'
```

Verilerimizi temp table’a ekledik.

Verilerimizi getirtelim

```sql
-- temp table getirtme
SELECT * FROM #RESULT
```

Bu şekilde de verilerimizi listeledik.

<aside>
💡 ***Temp table’ın en büyük özelliği, hafızada geçici yere sahip olması ve oturum sonlandırıldığında ise tablonun da silinip gitmesidir. Bu oturuma bağlılık çakışmaları önlemektedir.***

</aside>

```sql
-- temp table'ı başka bir sayfada kullanırsam hata alırım
SELECT * FROM #RESULT
```

Bunu başka bir sayfa açıp tekrardan orada çalıştırırsam hata alırım.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%206.png)

Temp table’ları da istediğimiz gibi özelleştirebiliriz.

```sql
-- temp table'ı istediğimiz gibi özelleştirebiliriz.

-- Birinci örnek:
SELECT * FROM #RESULT WHERE BRAND = 'ULKER'

-- ikinci örnek
SELECT BRAND, SUM(UNITPRICE) FROM #RESULT
GROUP BY BRAND
```

Bu şekilde hem temp table kullanımını hem de stored procedure’ların istediğimiz where koşulunu kullanarak verilerimizi özelleştirilmiş şekilde kullanmayı öğrendik.

Sırada alıştırmalarımız var.

***ALIŞTIRMA - 1:***

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%207.png)

Bu sorunun çözümü şu şekildedir:

```sql
-- şu şekilde yapımızı kurgulayalım

CREATE PROC SP_GETPLATES
@BRAND AS VARCHAR(100),
@BEGDATE AS DATE,
@ENDDATE AS DATE
AS
SELECT * FROM LAB_PLATES
WHERE
BRAND = @BRAND AND
LICENCEDATE BETWEEN @BEGDATE AND @ENDDATE

--iki farklı şekilde verileri getirtebiliriz
-- 1.yöntem
EXEC SP_GETPLATES 'AUDİ', '20150101', '20191231'

-- 2. yöntem
EXEC SP_GETPLATES 
@BRAND = 'AUDİ', 
@BEGDATE = '20150101',
@ENDDATE = '20191231'

```

Bu şekilde alıştırmamızı çözmüş olduk.

***ALIŞTIRMA-2:***

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%208.png)

Bu sorunun çözümü şu şekildedir:

```sql
-- öncelikle sorgumuzu oluşturalım

SELECT 
	C.ID, C.CITYNAME SEHIR, C.POPULATION NUFUS, C.REGION BOLGE,
	COUNT(P.PLATE) ARACSAYISI,
	ROUND(COUNT(P.PLATE) / CONVERT(FLOAT, C.POPULATION),3) KISIBASI_ARACSAYISI
FROM LAB_CITIES C
JOIN LAB_PLATES P ON P.CITYNR = C.ID

GROUP BY C.ID, C.CITYNAME, C.POPULATION, C.REGION

-- şimdi ise process'i oluşturalım

CREATE PROC SP_GETVEHICLES
@BRAND AS VARCHAR(100) = '%',
@BEGDATE AS DATE,
@ENDDATE AS DATE,
@REGION AS VARCHAR(200)
AS
SELECT 
	C.ID, C.CITYNAME SEHIR, C.POPULATION NUFUS, C.REGION BOLGE,
	COUNT(P.PLATE) ARACSAYISI,
	ROUND(COUNT(P.PLATE) / CONVERT(FLOAT, C.POPULATION),3) KISIBASI_ARACSAYISI
FROM LAB_CITIES C
JOIN LAB_PLATES P ON P.CITYNR = C.ID
WHERE P.BRAND LIKE @BRAND
AND P.LICENCEDATE BETWEEN @BEGDATE AND @ENDDATE
AND C.REGION IN (SELECT VALUE FROM string_split(@REGION, ','))
GROUP BY C.ID, C.CITYNAME, C.POPULATION, C.REGION

-- iki tane dataset istenilmişti
ALTER PROC SP_GETVEHICLES
@BRAND AS VARCHAR(100) = '%',
@BEGDATE AS DATE,
@ENDDATE AS DATE,
@REGION AS VARCHAR(200)
AS
SELECT 
	C.ID, C.CITYNAME SEHIR, C.POPULATION NUFUS, C.REGION BOLGE,
	COUNT(P.PLATE) ARACSAYISI,
	ROUND(COUNT(P.PLATE) / CONVERT(FLOAT, C.POPULATION),3) KISIBASI_ARACSAYISI
FROM LAB_CITIES C
JOIN LAB_PLATES P ON P.CITYNR = C.ID
WHERE P.BRAND LIKE @BRAND
AND P.LICENCEDATE BETWEEN @BEGDATE AND @ENDDATE
AND C.REGION IN (SELECT VALUE FROM string_split(@REGION, ','))
GROUP BY C.ID, C.CITYNAME, C.POPULATION, C.REGION

SELECT 
	C.ID, C.CITYNAME SEHIR, C.POPULATION NUFUS, C.REGION BOLGE,
	P.BRAND MARKA,
	COUNT(P.PLATE) ARACSAYISI,
	ROUND(COUNT(P.PLATE) / CONVERT(FLOAT, C.POPULATION),3) KISIBASI_ARACSAYISI
FROM LAB_CITIES C
JOIN LAB_PLATES P ON P.CITYNR = C.ID
WHERE P.BRAND LIKE @BRAND
AND P.LICENCEDATE BETWEEN @BEGDATE AND @ENDDATE
AND C.REGION IN (SELECT VALUE FROM string_split(@REGION, ','))
GROUP BY C.ID, C.CITYNAME, C.POPULATION, C.REGION, P.BRAND
ORDER BY C.ID, P.BRAND
```

Şimdi bu prosedürü çağıralım:

```sql
-- stored procedure çağırma

EXEC SP_GETVEHICLES 
@BRAND = '%',
@BEGDATE = '20000101',
@ENDDATE = '20221231',
@REGION = 'KARADENİZ, AKDENİZ, MARMARA'
```

Bu şekilde sorun çözülmüş olur.

***ALIŞTIRMA-3:***

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%209.png)

Bu sorunun çözümü şu şekildedir:

```sql
-- öncelikle sorgumuzu hazırlayalım

ALTER PROC SP_LOGIN
@USERNAME AS VARCHAR(100) = NULL,
@EMAIL AS VARCHAR(100) = NULL,
@PASSWORD AS VARCHAR(50),
@IPADDRESS AS VARCHAR(50)

AS
DECLARE @USERID AS INT
DECLARE @LOGINTYPE AS VARCHAR(100)

IF @USERNAME IS NOT NULL
BEGIN 
	SELECT @USERID = ID FROM LAB_USER WHERE USERNAME_ = @USERNAME AND PASSWORD_ = @PASSWORD
	IF @USERID > 0
	BEGIN
		SET @LOGINTYPE = 'GİRİŞ BAŞARILI'
		INSERT INTO LAB_USERLOGIN_LOG (USERID, USERNAME, LOGINTYPE, IPADDRESS, DATE_)
		VALUES (@USERID, @USERNAME, @LOGINTYPE, @IPADDRESS, GETDATE())
	END
	ELSE
	BEGIN
		SET @LOGINTYPE = 'GİRİŞ BAŞARISIZ'
		INSERT INTO LAB_USERLOGIN_LOG (USERID, USERNAME, LOGINTYPE, IPADDRESS, DATE_)
		VALUES (@USERID, @EMAIL, @LOGINTYPE, @IPADDRESS, GETDATE())
	END

	SELECT * FROM LAB_USER WHERE USERNAME_ = @USERNAME AND PASSWORD_ = @PASSWORD
END

IF @EMAIL IS NOT NULL
BEGIN
	SELECT @USERID = ID FROM LAB_USER WHERE EMAIL = @EMAIL AND PASSWORD_ = @PASSWORD
	IF @USERID > 0
	BEGIN
		SET @LOGINTYPE = 'GİRİŞ BAŞARILI'
		INSERT INTO LAB_USERLOGIN_LOG (USERID, USERNAME, LOGINTYPE, IPADDRESS, DATE_)
		VALUES (@USERID, @USERNAME, @LOGINTYPE, @IPADDRESS, GETDATE())
	END
	ELSE
	BEGIN
		SET @LOGINTYPE = 'GİRİŞ BAŞARISIZ'
		INSERT INTO LAB_USERLOGIN_LOG (USERID, USERNAME, LOGINTYPE, IPADDRESS, DATE_)
		VALUES (@USERID, @USERNAME, @LOGINTYPE, @IPADDRESS, GETDATE())
	END

	SELECT * FROM LAB_USER WHERE EMAIL = @EMAIL AND PASSWORD_ = @PASSWORD
END
```

Şimdi bu prosedürümüzü farklı farklı şekillerde çağıralım:

```sql
EXEC SP_LOGIN 
@USERNAME = 'S_VLGEN',
@PASSWORD = 4042521,
@IPADDRESS = '136.58.97.214'

-- email parametresiyle gönderim sağlama
EXEC SP_LOGIN 
@EMAIL = 'S_VLGEN@sqlegitimbtk.com',
@PASSWORD = 4042521,
@IPADDRESS = '136.58.97.214'

SELECT * FROM LAB_USERLOGIN_LOG
```

Bu şekilde problemimiz çözülmüş olur.

***ALIŞTIRMA-4:***

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2010.png)

Bu sorunun çözümü şu şekildedir:

```sql
CREATE PROC SP_SALES
@BEGDATE AS DATE,
@ENDDATE AS DATE,
@CITIES AS VARCHAR(200)
AS

SELECT * FROM LAB_SALES
WHERE DATE_ BETWEEN @BEGDATE AND @ENDDATE
AND CITY IN (SELECT VALUE FROM string_split(@CITIES, ','))

ALTER PROC SP_SALES
@BEGDATE AS DATE,
@ENDDATE AS DATE,
@CITIES AS VARCHAR(200)
AS

DECLARE @RESULT AS VARCHAR(1000)
SET @RESULT = 'BEGDATE: '+CONVERT(VARCHAR, @BEGDATE, 104)
SET @RESULT = @RESULT + CHAR(13) -- bir alt satıra gelsin
SET @RESULT = @RESULT+ 'ENDDATE: '+ CONVERT(VARCHAR, @BEGDATE, 104)
SET @RESULT = @RESULT + CHAR(13) -- bir alt satıra gelsin
SET @RESULT = @RESULT + 'CITIES: '+ @CITIES

PRINT @RESULT
SELECT @RESULT AS PARAMETER

SELECT 
CATEGORY1 CATEGORY, SUM(TOTALPRICE) TOTALSALE
FROM LAB_SALES
WHERE DATE_ BETWEEN @BEGDATE AND @ENDDATE
AND CITY IN (SELECT VALUE FROM string_split(@CITIES, ','))
GROUP BY CATEGORY1
ORDER BY 2 DESC
```

Şimdi bu prosedürümüzü çağıralım:

```sql
EXEC SP_SALES 
@BEGDATE = '20190501',
@ENDDATE = '20190601',
@CITIES = 'İSTANBUL, ANKARA, KONYA'
```

Bu şekilde sorunumuz çözülmüş olur.

### Trigger Nesneleri

Programlama dillerinde aşina olduğumuz ‘eventler’ kavramının veri tabanı programlama kısmındaki karşılığı trigger’dır. Triggerlar türkçe karşılık olarak tetikleyici anlamına gelmektedir. Triggerlar veritabanı tablosunda bir işlem gerçekleştiğinde başka bir işlemin otomatik olarak gerçekleşmesi anlamına gelmektedir.

Burada işlem olarak kast edilen veri manipülasyonlarıdır. Veri manipülasyonları ise `INSERT, UPDATE, DELETE` işlemleridir. Yazılan triggerlar, insert, update ve delete işlemlerinden sonra otomatik olarak çalışan yapılardır.

Triggerların içinde sanal olarak çalışan inserted ve deleted tabloları vardır.

Inserted tablosu yeni eklenen kaydın ya da update edildiğinde kaydın yeni değerini tutmaktadır.

Deleted tablosu ise silinen kaydı ya da değiştirilen kaydın eski değerini tutmaktadır.

Triggerlar genelde toplam hesaplama, son değeri alma ya da loglama amacı ile kullanılır. Örneğin: Elimizde bulunan stok hareketleri tablosunda her bir ürünün stoğun eksi ve hareketlerini alarak toplam stok adetini bulmak gibi kavramlar elde edilebilmektedir.

***INSERTED TRIGGER***

Triggerlara önceden de bahsettiğimiz gibi bazı sorgular için otomatik olarak çalıştırılabilen yapılar olduğundan bahsetmiştik. Bir örnek üzerinden bir tabloya kayıt geldiği zaman çalışabilen bir trigger nesnesi oluşturabiliriz.

Klasik olarak bir veri tabanı tablosuna veri eklediğimizde *(1 row affected)* mesajını alırız. Bu mesaj tek başına gönderilerek başka bir sonuç gösterilmez. Ancak bir trigger yazıldığında insert işlemini takip eden ve içerisinde bir selected ifadesi çalışan bir trigger’la birlikte ekleme yapılır yapılmaz sonuçları da gösterebilmemiz mümkündür.

Şimdi bir trigger işlemi gerçekleştirelim:

```sql
-- triggerlarda bir database nesnesidir ve bütün database nesnelerinde olduğu gibi 
-- create ile oluşturulur, alter ile değiştirilir ve drop ile silinir.

-- bir trigger oluşturma

CREATE TRIGGER TRGCUSTOMERINSERT
ON CUSTOMERS -- hangi tabloda çalışacağını belirtiyoruz.
AFTER INSERT -- insert komutundan sonra çalışacağını belirtiyoruz.
AS
BEGIN
-- tablonun içerisindeki kolon isimlerini bir değişkene atayalım:
DECLARE @ID AS INT
DECLARE @CUSTOMERNAME AS VARCHAR(100)
DECLARE @BIRTHDATE AS DATE
DECLARE @TELNR AS VARCHAR(20)

SELECT @ID = ID, @CUSTOMERNAME = CUSTOMERNAME,
@BIRTHDATE = BIRTHDATE, @TELNR = TELNR FROM inserted -- inserted tablosu var olmayan bir trigger tablosudur girilen verileri otomatik olarak gösterim sağlayacaktır.

SELECT @ID AS ID, @CUSTOMERNAME AS CUSTOMERNAME, @BIRTHDATE AS BIRTHDATE, @TELNR AS TELNR
PRINT 'INSERT İŞLEMİ BAŞARIYLA GERÇEKLEŞTİ' -- log mesajına ise yazı göndererek çalışıp çalışmadığını kontrol ediyoruz.
END
```

Bir trigger nesnesi oluşturduk. Şimdi aynı tablo içerisinde bir insert komutu göndererek sonuçlarına bakalım:

```sql
INSERT INTO CUSTOMERS(CUSTOMERNAME, BIRTHDATE, TELNR)
VALUES ('ÖMER SAĞLAM', '1976-09-24', '05441678463')
```

Bu şekilde bir sorguyu çalıştırdık ve çıktıyı inceleyelim:

Burada iki adet çıktı olacaktır. İlk olarak trigger içerisinde bir select ifadesi yazdığımız için tablo gözükürken diğer kısımda ise messages yani log kısmında ise print’le yazmış olduğumuz *“INSERT İŞLEMİ BAŞARIYLA GERÇEKLEŞTİ”* mesajını görüntüleyeceğiz.

Birinci çıktı:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2011.png)

İkinci çıktı:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2012.png)

Bu şekilde yapılar kurgulanabilmektedir.

Kısaca triggerlar peşin sıra bazı sorguları takip etmektedir. Eğer ki gerekli sorguları yakaladıkları anda farklı işlemleri gerçekleştirebilecek fonksiyonel bir event de diyebiliriz.

***DELETED TRIGGER***

Deleted triggerında ise bir tablodan değer silindiği zaman çalışmaya tetiklenen trigger yapısıdır.

Örnek bir deleted triggerı şu şekilde oluşturulur:

```sql
-- trigger'ı oluşturalım
CREATE TRIGGER TRGCUSTOMERDELETE
ON CUSTOMERS -- hangi tablonun triggerı
AFTER DELETE -- bu triggerın tetikleyicisi delete sorgusu
AS
BEGIN
DECLARE @ID AS INT
DECLARE @CUSTOMERNAME AS VARCHAR(100)
DECLARE @BIRTHDATE AS DATE
DECLARE @TELNR AS VARCHAR(20)

SELECT @ID = ID, @CUSTOMERNAME = CUSTOMERNAME,
@BIRTHDATE = BIRTHDATE, @TELNR = TELNR FROM deleted -- silme işlemi gerçekleştirdiğimiz için deleted tablosuna yazacaktır 

SELECT @ID AS ID, @CUSTOMERNAME AS CUSTOMERNAME, @BIRTHDATE AS BIRTHDATE, @TELNR AS TELNR
PRINT 'DELETE İŞLEMİ BAŞARIYLA GERÇEKLEŞTİ!'
END
```

Bu sorguyu çalıştırdığımız zaman yine aynı şekilde bir deleted sorgusu kullanıldığında bir log ekranına yazı yazacak ve yine aynı şekilde tabloyu bize getirtecektir.

***UPDATED TRIGGER***

Updated triggerı biraz daha farklıdır. Burada önce update sorgusundan önceki tabloyu ve update sorgusundan sonraki tabloyu da getirtilmesi istenildiği için burada iki yöntem uygulanmaktadır.

<aside>
💡 İlk olarak update sorgusundan önceki değerleri tutabilmesi için bir OLD_değişken isimleri tutulur.

</aside>

<aside>
💡 Son olarak update sorgusundan sonraki değerleri tutabilmesi için bir NEW_değişken isimleri tutulur.

</aside>

<aside>
💡 ***Update sorgusundan önceki değerler için deleted tablosu kullanılır.***

</aside>

<aside>
💡 ***Update sorgusundan sonraki değerler için inserted tablosu kullanılır.***

</aside>

Bu bilgiler ışığında sorguyu oluşturmak istersek:

```sql
-- update trigger'ı oluşturalım
-- update trigger'ında hem eski tablo hem de update sorgusundan sonra güncel tablo
-- olduğundan dolayı değişkenleri hem eski hem de yeni olarak tanımlamak gereklidir.
CREATE TRIGGER TRGCUSTOMERUPDATE
ON CUSTOMERS -- hangi tablonun triggerı
AFTER UPDATE -- bu triggerın tetikleyicisi update sorgusu
AS
BEGIN
DECLARE @ID AS INT -- id sabit olduğu için buna eski yeni diye değişken tanımlamaya gerek yoktur
-- update sorgusundan önceki tabloyu getirtmek için eski değişkenler
DECLARE @OLD_CUSTOMERNAME AS VARCHAR(100)
DECLARE @OLD_BIRTHDATE AS DATE
DECLARE @OLD_TELNR AS VARCHAR(20)

-- update sorgusundan sonraki güncel tabloyu getirtmek için güncel değişkenler
DECLARE @NEW_CUSTOMERNAME AS VARCHAR(100)
DECLARE @NEW_BIRTHDATE AS DATE
DECLARE @NEW_TELNR AS VARCHAR(20)

-- update triggerının eski değerleri deleted tablosunda tutulur.
SELECT @ID = ID, @OLD_CUSTOMERNAME = CUSTOMERNAME,
@OLD_BIRTHDATE = BIRTHDATE, @OLD_TELNR = TELNR FROM deleted -- update sorgusunun eski değerleriyle çalışma gerçekleştirdiğimiz için deleted tablosuna yazacaktır 

-- update triggerının yeni değerleri inserted tablosunda tutulur.
-- id'yi yukarıda tanımlandığı için burada id'ye gerek yoktur.
SELECT  @NEW_CUSTOMERNAME = CUSTOMERNAME,
@NEW_BIRTHDATE = BIRTHDATE, @NEW_TELNR = TELNR FROM inserted -- update sorgusunun eski değerleriyle çalışma gerçekleştirdiğimiz için inserted tablosuna yazacaktır 

SELECT @ID AS ID, @OLD_CUSTOMERNAME AS CUSTOMERNAME, @OLD_BIRTHDATE AS BIRTHDATE, @OLD_TELNR AS TELNR, -- update sorgusundan önceki değerleri
@NEW_CUSTOMERNAME AS NEW_CUSTOMERNAME, @NEW_BIRTHDATE AS NEW_BIRTHDATE, @NEW_TELNR AS NEW_TELNR -- update sorgusundan sonraki değerleri

END
```

Bu şekilde sorgumuz oluşmuş olur.

Bu triggerı çalıştırmak için şöyle bir update sorgusu yazabiliriz:

```sql
INSERT INTO CUSTOMERS(CUSTOMERNAME, BIRTHDATE,TELNR)
VALUES ('ZEYNEP KARAKAYA', '1998-08-19', '05515674893')

UPDATE CUSTOMERS SET 
CUSTOMERNAME = 'ZEYNEP KURUKAYA',
BIRTHDATE = '2018-09-20',
TELNR = '05674836273'
WHERE ID = 1
```

Bu sorguyu çalıştırdığımız zaman çıktımız şu şekilde olacaktır.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2013.png)

Bu şekilde update triggerının da çalışma prensibini öğrenmiş olduk.

***TRIGGER LOGLAMA - INSERT***

Triggerlarla genellikle loglama işlemleri gerçekleştirilir. Loglama dediğimiz kısım veri tabanı üzerinde verilerde değişiklikleri kayıt altına alınması anlamına gelmektedir. Loglar genellikle aynı veritabanı içerisinde tutulmaz farklı veritabanları açılarak onların içerisine kayıt işlemi gerçekleştirilir.

LOG işleminin takip edileceği tablo ile log atılacak tablo aynı olmak zorundadır. Bunun için ilgili log tutulmak istenilen veri tabanının tablosunun bir scriptini alarak işlemler gerçekleştirilmektedir.

```sql
/*
triggerlar ile genellikle log tutma işlemleri gerçekleştirilir.

bu logların genel olarak içerikleri:
bir kayıt silindiğinde ya da değiştirildiğinde
-> kim tarafından?
-> ne zaman?
-> hangi bilgisayardan?
-> hangi kullanıcı ile?
-> hangi program ile?
-> hangi sql cümlesi ile yapıldı?
-> silinmeden/değiştirilmeden önceki değerleri neydi?

gibi birçok sorular kayıt altında tutulur.
*/

-- logları tutacağım bir database oluşturduk.
-- bu database içerisinde ise logunu tutmak istediğim veri tabanının da verileri olması gereklidir.
-- bu yüzden dolayı ise buna benzer bir yapıyı çıkartmak gereklidir.
-- bundan dolayı items tablosunun scriptini çıkartmak gereklidir.
SELECT * FROM ITEMS
```

Burada ***ITEMS*** tablosunun bir loglama işlemlerini takip edeceğim için bu tablonun bir adet scriptini alacağız. Bu scripti ilgili tabloya sol tık yaparak açılan ekrandan seçimi yapabilirsiniz:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2014.png)

Bu şekilde scripti aldıktan sonra log için gerekli alanları da ekleyip yeni log database içerisine kaydetmemiz gerekmektedir.

```sql
CREATE TABLE [dbo].[ITEMS](
	[ID] [int] , -- log tutacağı için otomatik artan olmamalı
	[ITEMCODE] [varchar](50) ,
	[ITEMNAME] [varchar](100) ,
	[UNITPRICE] [float] ,
	[CATEGORY1] [varchar](50) ,
	[CATEGORY2] [varchar](50) ,
	[CATEGORY3] [varchar](50) ,
	[CATEGORY4] [varchar](50) ,
	[BRAND] [varchar](50) ,
	-- logların tutulacağı kısımlar
	LOG_ACTIONTYPE  VARCHAR(10), -- triggerı hangi fonksiyon tetikledi
	LOG_DATE  DATETIME, -- ne zaman yapıldı
	LOG_HOSTNAME VARCHAR(100), -- hangi hosttan gerçekleşti
	LOG_PROGRAMNAME VARCHAR(100), -- hangi programdan gerçekleşti
	LOG_USERNAME VARCHAR(100) -- kim tarafından gerçekleşti
)
```

Burada *ITEMS* tablosunun içeriğini almakla birlikte log için tutacağımız sütun isimlerini girerek tabloyu oluşturduk.

***TRIGGER LOGLAMA - UPDATE***

Update loguyla ise veri tabanı içerisindeki kayıtların eski halini ve ne zaman değiştirildiği, kim tarafından, hangi programlama değiştiği gibi kavramları log altında tutabiliriz. 

Bunu bir update triggerıyla oluşturalım:

```sql
-- şimdi update triggerını yazmaya başlayalım
CREATE TRIGGER TRG_UPDATEITEMS
ON ITEMS
AFTER UPDATE
AS
BEGIN
	-- loglar için bazı özellikleri trigger içerisinde eklememiz gerekir
	-- bunları değişken içerisinde triggerda tanımlayalım
	DECLARE @LOG_ACTIONTYPE AS VARCHAR(10) = 'UPDATE' -- update için çalışacağı için bunu otomatik olarak update ayarlamamız gerekir.
	DECLARE @LOG_DATE AS  DATETIME 
	DECLARE @LOG_HOSTNAME AS VARCHAR(100) 
	DECLARE @LOG_PROGRAMNAME AS VARCHAR(100) 
	DECLARE @LOG_USERNAME AS VARCHAR(100) 

	-- şimdi bu değişkenleri dolduralım
	SET @LOG_DATE = GETDATE() -- triggerın çalıştığı zamanı alır
	SET @LOG_HOSTNAME = HOST_NAME() -- sqlservera bağlanan makinenin ismini verir.
	SET @LOG_PROGRAMNAME = PROGRAM_NAME() -- SQL servera hangi programa bağlanıldığını verir.
	SET @LOG_USERNAME = SUSER_NAME() -- sql servera bağlanan kişinin ismini verir.

	-- loglama işlemini yapma (eski kayıtları loglama)
	INSERT INTO LOGDB.dbo.ITEMS
	(ID, ITEMCODE, ITEMNAME, UNITPRICE, CATEGORY1, CATEGORY2, CATEGORY3, CATEGORY4,
	BRAND, LOG_ACTIONTYPE, LOG_DATE, LOG_HOSTNAME, LOG_PROGRAMNAME, LOG_USERNAME)

	-- eski kayıtları da getireceksin.
	SELECT 
	ID, ITEMCODE, ITEMNAME, UNITPRICE, CATEGORY1, CATEGORY2, CATEGORY3, CATEGORY4, BRAND, 
	@LOG_ACTIONTYPE, @LOG_DATE, @LOG_HOSTNAME, @LOG_PROGRAMNAME, @LOG_USERNAME -- tabloda tanımlı olmadığı için buraya ekledik.
	FROM deleted

END
```

Bu şekilde logu tutacak triggerı yazmış olduk.

Şimdi bu değeri bi kontrol edelim:

```sql
-- şimdi triggerı çalıştırmak için bir adet veri çekip bunun üzerinde değişiklik yapalım

SELECT * FROM ITEMS WHERE ID = 1

-- fiyat güncelleyelim
UPDATE ITEMS SET UNITPRICE = 12 WHERE ID = 1

-- fiyatı tekrar güncelleyelim
UPDATE ITEMS SET UNITPRICE = 15 WHERE ID = 1
```

Bu şekilde veriler üzerinde değişiklik yaptık. 

Şimdi logu tekrar kontrol edelim:

```sql
-- LOGUNA BAKALIM
SELECT * FROM ITEMS
```

Logların tutulduğu tabloyu listeleyelim.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2015.png)

Bu şekilde loglarımız ürünlerin eski fiyatlarını tuttuğunu göstermiş oldu.

***TRIGGER LOGLAMA - DELETE***

İlgili tablodan veri silme işlemi gerçekleştirileceği zaman çalıştırılacak bir trigger yazalım ve bunu log tablosu içerisinde tutalım:

```sql
-- şimdi delete triggerını yazmaya başlayalım
CREATE TRIGGER TRG_DELETEITEMS
ON ITEMS
AFTER DELETE
AS
BEGIN
	-- loglar için bazı özellikleri trigger içerisinde eklememiz gerekir
	-- bunları değişken içerisinde triggerda tanımlayalım
	DECLARE @LOG_ACTIONTYPE AS VARCHAR(10) = 'DELETE' -- DELETE için çalışacağı için bunu otomatik olarak delete ayarlamamız gerekir.
	DECLARE @LOG_DATE AS  DATETIME 
	DECLARE @LOG_HOSTNAME AS VARCHAR(100) 
	DECLARE @LOG_PROGRAMNAME AS VARCHAR(100) 
	DECLARE @LOG_USERNAME AS VARCHAR(100) 

	-- şimdi bu değişkenleri dolduralım
	SET @LOG_DATE = GETDATE() -- triggerın çalıştığı zamanı alır
	SET @LOG_HOSTNAME = HOST_NAME() -- sqlservera bağlanan makinenin ismini verir.
	SET @LOG_PROGRAMNAME = PROGRAM_NAME() -- SQL servera hangi programa bağlanıldığını verir.
	SET @LOG_USERNAME = SUSER_NAME() -- sql servera bağlanan kişinin ismini verir.

	-- loglama işlemini yapma (eski kayıtları loglama)
	INSERT INTO LOGDB.dbo.ITEMS
	(ID, ITEMCODE, ITEMNAME, UNITPRICE, CATEGORY1, CATEGORY2, CATEGORY3, CATEGORY4,
	BRAND, LOG_ACTIONTYPE, LOG_DATE, LOG_HOSTNAME, LOG_PROGRAMNAME, LOG_USERNAME)

	SELECT 
	ID, ITEMCODE, ITEMNAME, UNITPRICE, CATEGORY1, CATEGORY2, CATEGORY3, CATEGORY4, BRAND, 
	@LOG_ACTIONTYPE, @LOG_DATE, @LOG_HOSTNAME, @LOG_PROGRAMNAME, @LOG_USERNAME -- tabloda tanımlı olmadığı için buraya ekledik.
	FROM deleted

END
```

Bu şekilde delete triggerını yazmış olduk.

Şimdi ise triggerımızı deneyelim:

```sql
SELECT * FROM ITEMS WHERE ID = 1

UPDATE ITEMS SET UNITPRICE = 30 WHERE ID = 1

-- triggerı test edelim:
DELETE FROM ITEMS WHERE ID = 1
```

Bu şekilde triggerımızı tetikledik. 

Şimdi ise bunu log tablosunda görüntüleyelim:

```sql
SELECT * FROM ITEMS
```

Bu şekilde logumuzu kayıt altına alındığını görüntülemiş olduk.

***UPDATE ve DELETE İŞLEMLERİNİN BİRLİKTELİĞİ***

Update ve Delete işlemleri aynı trigger içerisinde yazılabilir. Aşağıdaki kod blogunda bunu görüntüleyebiliriz.

```sql
-- hem silme hem de güncelleme fonksiyonlarını yakalayacak bir trigger oluşturalım

CREATE TRIGGER TRG_UPDATE_DELETE_ITEMS
ON ITEMS
AFTER UPDATE, DELETE -- update ve delete sorgularını yakalayacak...
AS
BEGIN
	
	-- yapılan işlemin ne olduğunu değişkenlere atamamız gereklidir.

	DECLARE @LOG_ACTIONTYPE AS VARCHAR(10)
	DECLARE @INSERTCOUNT AS INT
	DECLARE @DELETECOUNT AS INT

	SELECT @DELETECOUNT = COUNT(*) FROM deleted
	SELECT @INSERTCOUNT = COUNT(*) FROM inserted

	-- HANGİ İŞLEM OLDUĞUNU YAKALAYALIM

	IF @DELETECOUNT = 0 AND @INSERTCOUNT > 0 -- inserted işlemini yakalayacak fonksiyon
		SET @LOG_ACTIONTYPE = 'INSERT'
	IF @DELETECOUNT > 0 AND @INSERTCOUNT = 0 -- delete işlemini yakalayacak
		SET @LOG_ACTIONTYPE = 'DELETE'
	IF @DELETECOUNT > 0 AND @INSERTCOUNT > 0
		SET @LOG_ACTIONTYPE = 'UPDATE'

	DECLARE @LOG_DATE AS  DATETIME 
	DECLARE @LOG_HOSTNAME AS VARCHAR(100) 
	DECLARE @LOG_PROGRAMNAME AS VARCHAR(100) 
	DECLARE @LOG_USERNAME AS VARCHAR(100) 

	-- şimdi bu değişkenleri dolduralım
	SET @LOG_DATE = GETDATE() -- triggerın çalıştığı zamanı alır
	SET @LOG_HOSTNAME = HOST_NAME() -- sqlservera bağlanan makinenin ismini verir.
	SET @LOG_PROGRAMNAME = PROGRAM_NAME() -- SQL servera hangi programa bağlanıldığını verir.
	SET @LOG_USERNAME = SUSER_NAME() -- sql servera bağlanan kişinin ismini verir.

	-- loglama işlemini yapma (eski kayıtları loglama)
	INSERT INTO LOGDB.dbo.ITEMS
	(ID, ITEMCODE, ITEMNAME, UNITPRICE, CATEGORY1, CATEGORY2, CATEGORY3, CATEGORY4,
	BRAND, LOG_ACTIONTYPE, LOG_DATE, LOG_HOSTNAME, LOG_PROGRAMNAME, LOG_USERNAME)

	SELECT 
	ID, ITEMCODE, ITEMNAME, UNITPRICE, CATEGORY1, CATEGORY2, CATEGORY3, CATEGORY4, BRAND, 
	@LOG_ACTIONTYPE, @LOG_DATE, @LOG_HOSTNAME, @LOG_PROGRAMNAME, @LOG_USERNAME -- tabloda tanımlı olmadığı için buraya ekledik.
	FROM deleted

END
```

Şimdi bu triggerımızı çalıştıralım:

```sql
SELECT * FROM ITEMS WHERE ID = 6

UPDATE ITEMS SET UNITPRICE = 50 WHERE ID = 6
UPDATE ITEMS SET UNITPRICE = 60 WHERE ID = 6

DELETE FROM ITEMS WHERE ID = 6

-- log database görüntülenmesi
SELECT * FROM LOGDB.dbo.ITEMS
```

Bu şekilde çalışmış oldu.

Burada önemli olan nokta IF bloklarıyla deleted ve ınserted tablolarının toplam kayıt sayısını takip etmektir. Bu işlemi gerçekleştirdikten sonra istenildiği gibi trigger özelleştirilebilir.

***TRIGGER LOGLAMA - INSTEAD OF***

Instead of terimi veritabanı loglama kısmında çok fazla kullanılmaz. Yapılan bir değişiklik veritabanı log sayfasında tutulmaktadır ancak gerçek verilerde herhangi bir değişiklik olmaz. 

Triggerımızı yazalım:

```sql
-- bir triggerımız ise instead of triggerıdır.
-- instead triggeri çalıştığı zaman veride değişiklik yapıldı gibi görülür ancak,
-- gerçek veride herhangi bir değişme olmaz

ALTER TRIGGER TRG_UPDATE_DELETE_ITEMS
ON ITEMS
INSTEAD OF UPDATE, DELETE -- sorguları çalıştırmayacaktır
AS
BEGIN
	
	-- yapılan işlemin ne olduğunu değişkenlere atamamız gereklidir.

	DECLARE @LOG_ACTIONTYPE AS VARCHAR(10)
	DECLARE @INSERTCOUNT AS INT
	DECLARE @DELETECOUNT AS INT

	SELECT @DELETECOUNT = COUNT(*) FROM deleted
	SELECT @INSERTCOUNT = COUNT(*) FROM inserted

	-- HANGİ İŞLEM OLDUĞUNU YAKALAYALIM

	IF @DELETECOUNT = 0 AND @INSERTCOUNT > 0 -- inserted işlemini yakalayacak fonksiyon
		SET @LOG_ACTIONTYPE = 'INSERT'
	IF @DELETECOUNT > 0 AND @INSERTCOUNT = 0 -- delete işlemini yakalayacak
		SET @LOG_ACTIONTYPE = 'DELETE'
	IF @DELETECOUNT > 0 AND @INSERTCOUNT > 0
		SET @LOG_ACTIONTYPE = 'UPDATE'

	DECLARE @LOG_DATE AS  DATETIME 
	DECLARE @LOG_HOSTNAME AS VARCHAR(100) 
	DECLARE @LOG_PROGRAMNAME AS VARCHAR(100) 
	DECLARE @LOG_USERNAME AS VARCHAR(100) 

	-- şimdi bu değişkenleri dolduralım
	SET @LOG_DATE = GETDATE() -- triggerın çalıştığı zamanı alır
	SET @LOG_HOSTNAME = HOST_NAME() -- sqlservera bağlanan makinenin ismini verir.
	SET @LOG_PROGRAMNAME = PROGRAM_NAME() -- SQL servera hangi programa bağlanıldığını verir.
	SET @LOG_USERNAME = SUSER_NAME() -- sql servera bağlanan kişinin ismini verir.

	-- loglama işlemini yapma (eski kayıtları loglama)
	INSERT INTO LOGDB.dbo.ITEMS
	(ID, ITEMCODE, ITEMNAME, UNITPRICE, CATEGORY1, CATEGORY2, CATEGORY3, CATEGORY4,
	BRAND, LOG_ACTIONTYPE, LOG_DATE, LOG_HOSTNAME, LOG_PROGRAMNAME, LOG_USERNAME)

	SELECT 
	ID, ITEMCODE, ITEMNAME, UNITPRICE, CATEGORY1, CATEGORY2, CATEGORY3, CATEGORY4, BRAND, 
	@LOG_ACTIONTYPE, @LOG_DATE, @LOG_HOSTNAME, @LOG_PROGRAMNAME, @LOG_USERNAME -- tabloda tanımlı olmadığı için buraya ekledik.
	FROM deleted

END
```

Bu şekilde instead of triggerımızı yazdık. Şimdi item tablosu içerisinden veri manipülasyonları gerçekleştirelim.

```sql
SELECT * FROM ITEMS WHERE ID = 9

-- değiştirmeye çalışalım
UPDATE ITEMS SET UNITPRICE = 65 WHERE ID = 9
UPDATE ITEMS SET UNITPRICE = 70 WHERE ID = 9

DELETE FROM ITEMS WHERE ID = 6

-- log database görüntülenmesi
SELECT * FROM LOGDB.dbo.ITEMS
```

Bu sorgumuzu adım adım inceleyelim:

```sql
SELECT * FROM ITEMS WHERE ID = 9
```

ID’si 9 olan ürünü getirttik. 

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2016.png)

Şimdi bu veride fiyatta bir değişiklik gerçekleştirelim:

```sql
-- değiştirmeye çalışalım
UPDATE ITEMS SET UNITPRICE = 65 WHERE ID = 9
UPDATE ITEMS SET UNITPRICE = 70 WHERE ID = 9
```

Bu sorguları çalıştırdığımız zaman şöyle bir ekran görüntüsü göreceğiz.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2017.png)

Yani sorgumuz çalışıyor ve veride fiyatı güncellemiş olması gerekidir.

Şimdi gerçek tablomuzdaki fiyatımıza bakalım 65 ve 70 olmuş mu ?

```sql
SELECT * FROM ITEMS WHERE ID = 9
```

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2018.png)

Görüldüğü gibi fiyat yenilenmemiş. Eski kayıt durmaya devam ediyor. Peki log database içerisindeki log atılmış mı bide ona bakalım:

```sql
-- log database görüntülenmesi
SELECT * FROM LOGDB.dbo.ITEMS
```

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2019.png)

Görüldüğü gibi loglama yapılmış ama eski fiyat durmaya devam ediyor.

İşte instead of triggerı verilerde değişiklik yapmaya olanak sağlamaz ama loglama gerçekleştirmeye devam eder. Bu şekilde izinsiz veri değişiklikleri önlenmiş olur.

### Index Mimarisi

Veri tabanlarının en önemli kısmı veriyi yönetme kısmıdır. Veriyi yönetme kısmında en performanslı bir şekilde çalışmasını sağlamak amacıyla oldukça fazla karşılaşılan kavramların başında gelir Index.

Genel ortalamaya baktığımızda veritabanı yönetim sistemlerinin %5 oranında yazma, %95 oranında okuma yaptığı görülmektedir.

İşte durum böyle olunca okuma performansını arttırmak en çok yapılan işlemlerin başına gelmektedir.

***BINARY SEARCH***

Binary search (ikili arama), sıralı bir veri dizisinde aranan değeri verimli bir şekilde bulmak için kullanılan bir algoritmadır. Arama işlemi, her adımda diziyi ikiye bölerek hedef değerin hangi yarıda olduğunu belirlemeye dayanır. Bu sayede, her adımda arama alanı yarıya indirilir.

**Adım Adım Açıklama:**

1. **Dizinin ortasını bul:** Dizinin başı ve sonu arasında bir orta nokta belirlenir.
2. **Ortadaki elemanı kontrol et:**
    - Eğer ortadaki eleman aranan değer ise, arama tamamlanır.
    - Eğer aranan değer ortadaki elemandan küçükse, dizinin sol yarısında arama yapılır.
    - Eğer aranan değer ortadaki elemandan büyükse, dizinin sağ yarısında arama yapılır.
3. **Adımları tekrarla:** Dizi ikiye bölündükten sonra, arama işlemi kalan yarı dizide tekrar edilir.

Bu süreç, hedef değer bulunana ya da arama alanı kalmayana kadar devam eder.

**Örnek:**

Şu sıralı dizi içinde `7` sayısını arayalım:

`[1, 3, 5, 7, 9, 11, 13]`

1. Dizinin ortasında `7` sayısı var mı diye bakalım.
    - Dizinin ortası: `9` (dizideki eleman sayısı 7, ortadaki eleman: 4. pozisyondaki `9`).
    - `7 < 9`, yani sol yarıda aramaya devam ederiz: `[1, 3, 5, 7]`.
2. Şimdi bu alt dizinin ortasına bakalım:
    - Ortadaki eleman: `5`.
    - `7 > 5`, bu sefer sağ yarıda aramaya devam ederiz: `[7]`.
3. Kalan dizinin tek elemanı `7` ve aranan değer bulundu!

Bu yöntem, her adımda diziyi ikiye böldüğü için, özellikle büyük veri setlerinde oldukça verimlidir. Binary search'ün zaman karmaşıklığı O(log n) olarak ifade edilir, yani dizinin boyutu büyüdükçe işlem süresi çok yavaş artar.

<aside>
💡

Burada binary search yapılabilmesi için en önemli kısım verilerin indexlenmiş olmasıdır. İndexten kastımız sayısal değerse büyükten küçüğe doğru, alfabetik bir karakterse alfabetik sıraya göre aranması gereklidir. Bu şekilde veritabanlarında sorgusal yönetim performansları oldukça arttırılmış olmaktadır.

</aside>

![Başlıksız Diyagram.drawio.svg](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/Balksz_Diyagram.drawio.svg)

Yukarıda verilen örnekte bir 5000 veri kapasitesine sahip bir verinin binary search kullanarak nasıl 12 kademede bulunduğu görselleştirilmiştir. Burada eğer binary search kullanılmadan araştırma yapılsaydı veriler teker teker gezilecek ve 5000 işlemde bulunabilecekti.

Veri kapasitesi arttıkça binary işlem kullanmak zorunlu hale gelir. Şu tabloyu bir inceleyin.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2020.png)

Bu örnek tabloda veri sayısı arttıkça işlem gücünün ne kadar arttığını göstermektedir. Nitekim örnek incelendiğinde 1 milyarlık bir veride 30 işlemde aranan verinin bulunduğu gösterilmektedir.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2021.png)

Görüldüğü gibi arama performansına oldukça büyük bir faydası vardır.

***TABLE SCAN***

Table scan kavramı oldukça basit bir kavramdır. İndekslenmemiş bir veri tabanında arama yapılacağı zaman sayfaları rastgele 8kb’ı geçmeyecek derecede sayfa sayfa oluşturulur ve arama işlemi o şekilde gerçekleşir.

Örnek kodlara bakalım:

```sql
SELECT * FROM CUSTOMERS

-- toplam kaç adet veri var?

SELECT COUNT(*) FROM CUSTOMERS -- 2.511.833 adet kayıtlı veri

/*
	Bu tip sorgularda table scan işlemi yapılır.
	bu sorgunun nasıl çalıştığına dair bir bilgi almak istiyorsanız
	sorgudan sonra ctrl+L kombinasyonlarına tıklayarak bakabilirsiniz.
*/
/*
	table scan işlemi işlemciyi ve hafızayı oldukça yoran bir araştırma işlemidir.
	table scan işleminde 8kb pages oluşturulur. ve sayfalar arasında rastgele araştırma yapılır.
	index yoktur rastgele sayfalar oluşturma olur.
*/

SELECT * FROM CUSTOMERS
WHERE
NAMESURNAME = 'ÖMER ÇOLAKOĞLU' 

/*
	 mssql'de ne kadarlık okuma yaptığını ve
	 ne kadarlık süre kullandığını şu şekilde öğrenebiliriz.
*/
SET STATISTICS IO ON -- ne kadarlık io yani okuma yaptı? -- 30938
SET STATISTICS TIME ON -- ne kadar süre harcadı?
SELECT * FROM CUSTOMERS
WHERE
NAMESURNAME = 'ÖMER ÇOLAKOĞLU' 

-- bir tablonun hafızada ne kadar yer kapladığını öğrenmek istiyorsak
SP_SPACEUSED CUSTOMERS -- (KB)247720/1024 = 241 MB
```

Şimdi bu sorgu satırlarını teker teker ele alalım:

```sql
/*
	Bu tip sorgularda table scan işlemi yapılır.
	bu sorgunun nasıl çalıştığına dair bir bilgi almak istiyorsanız
	sorgudan sonra ctrl+L kombinasyonlarına tıklayarak bakabilirsiniz.
*/
/*
	table scan işlemi işlemciyi ve hafızayı oldukça yoran bir araştırma işlemidir.
	table scan işleminde 8kb pages oluşturulur. ve sayfalar arasında rastgele araştırma yapılır.
	index yoktur rastgele sayfalar oluşturma olur.
*/

SELECT * FROM CUSTOMERS
WHERE
NAMESURNAME = 'ÖMER ÇOLAKOĞLU' 
```

Bu tip klasik sorgularda indexleme yapılmamışsa eğer yani bir primary key yoksa table scan işlemi yapılır. Bu işlemi nasıl görüntülendiğini aşağıdan görüntüleyebilirsin.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2022.png)

Table scan işleminin rastgele verileri 8kb’ı geçmeyecek derecede küçük sayfalara ayırıp bu şekilde işlemler yaptığını söylemiştik.

Şimdi gelin bu işlemde ne kadar süre harcanmış ve ne kadarlık veri okunmuş bakalım:

```sql
/*
	 mssql'de ne kadarlık okuma yaptığını ve
	 ne kadarlık süre kullandığını şu şekilde öğrenebiliriz.
*/
SET STATISTICS IO ON -- ne kadarlık io yani okuma yaptı? -- 30938
SET STATISTICS TIME ON -- ne kadar süre harcadı?
SELECT * FROM CUSTOMERS
WHERE
NAMESURNAME = 'ÖMER ÇOLAKOĞLU' 
```

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2023.png)

Görüldüğü gibi bu sorgular neticesinde 3ms gibi hızlı bir sonuçla veriyi döndürmüş ancak bununla birlikte sorguyu getirmek için ise 30.938 veri okumuş.

Bu veri sayısı göze az gelse de veri sayısı arttıkça ve veritabanı sunucusuna gönderilecek sorgular neticesinde bunların her biri ayrı ayrı yük olmaya başlamaktadır. Bundan dolayı da indekslemeler yapmak gereklidir.

Bir tablonun hafızada ne kadar yer kapladığını öğrenmek istiyorsak eğer:

```sql
-- bir tablonun hafızada ne kadar yer kapladığını öğrenmek istiyorsak
SP_SPACEUSED CUSTOMERS -- (KB)247720/1024 = 241 MB
```

Bu şekilde öğrenebiliriz. Gördüğünüz gibi bu tablonun veritabanı sunucunda tuttuğu alan 241 mb’mış.

Eğer bir veri tabanında indeksleme yapılmışsa yani bir primary key alanı varsa burada ise kullanacağı arama yöntemi table scan değil clustered index yöntemidir. Bu yöntem ise yine aynı şekilde verileri 8kb sayfalar haline getirir ancak tabloları rastgele verilerle değil indeks sayısıyla beraber alır.

İndekslenmiş ve primary key olan tablo şu şekilde çalışmaktadır.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2024.png)

Görüldüğü gibi işlem yapılmıştır. Ancak burada binary search gibi bir arama yapılmamıştır. Çünkü sayısal olarak değer aramamaktayız. Karakter verisi aradığımız için bu yüzden sorgu yine aynı işlemci gücünü kullanacaktır.

***NON-CLUSTERED***

Non-clustered index, veritabanı yönetim sistemlerinde kullanılan bir indeks türüdür. Bu indeks türü, tablodaki verilerin fiziksel sırasını değiştirmeden, belirli sütunlar üzerinde hızlı sorgulama yapmayı sağlar.

*Non-clustered Index'in Özellikleri:*

- **Fiziksel Sıra:** Non-clustered index, tablo verilerinin fiziksel sırasını değiştirmez. Veriler tablodaki orijinal sırada kalır, ancak indeks oluşturulan sütunlar için bir ayrı yapı (B-tree gibi) oluşturulur.
- **Bağımsız Yapı:** Bu indeks, verilerin tutulduğu ana tablo dışında ayrı bir yapıdadır. Bu yapıda, anahtar sütunlar ve bu sütunların işaret ettiği tablo satırlarına yönelik referanslar (pointerlar) bulunur.
- **Birden Fazla Olabilir:** Bir tabloda birden fazla non-clustered index olabilir. Bu sayede farklı sorguların performansı artırılabilir.
- **Veri Erişimi:** Non-clustered index, özellikle belirli bir sütun üzerinde sık sorgulama yapıldığında performansı artırmak için kullanılır. Ancak, birden fazla sütun üzerinden sorgu yapıldığında veya tüm satırlar gerektiğinde, bu indeksin performansı düşebilir.

*Örnek:*

Diyelim ki bir öğrenci tablonuz var ve bu tablodaki `StudentID` sütunu için non-clustered index oluşturmak istiyorsunuz. Bu durumda, SQL veritabanı sistemi, `StudentID` sütununu ve her bir `StudentID` için tablodaki diğer bilgilerin nerede olduğunu gösteren bir yapı oluşturur. Eğer tablodaki kayıtlar alfabetik sırayla değil de kayıt numarasına göre sıralıysa, non-clustered index bu sıralamayı bozmaz. Ama `StudentID` sütununa göre bir sorgu yapıldığında, bu indeks kullanılarak sorgu hızla sonuçlanır.

Şimdi bunu bir örnekle açıklayalım ancak öncelikle gelin bir clustered index kuralım:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2025.png)

Buradan non-clustered index seçilir.

Ve sonrasında açılan ekranda hangi alana göre indeksleme yapılacaksa o seçilir.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2026.png)

Burada biz namesurname alanında bir indeksleme yaptık.

Sonuç olarak performansını ölçecek olursak:

```sql
SET STATISTICS IO ON -- ne kadarlık io yani okuma yaptı? -- 6
SET STATISTICS TIME ON -- ne kadar süre harcadı?
SELECT * FROM CUSTOMERS
WHERE
NAMESURNAME = 'ÖMER ÇOLAKOĞLU' 
```

CTRL+L kombinasyonuna bi bakalım:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2027.png)

Görüldüğü gibi clustered index kullanılmış. 

Şimdi sorgu performansına bakalım:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2028.png)

Sadece 6 sayfa okumuş. Öncesinde yapılan araştırmada ise 30938 sayfa veri okumuştu. Clustered indeks sayesinde bu sayı 6’ya düşmüş. Bu şekilde sorgu performansını oldukça iyi bir konuma getirtmiş olduk.

***KEY LOOKUP***

**Key Lookup**, SQL Server gibi ilişkisel veritabanı yönetim sistemlerinde, bir sorgu çalıştırıldığında karşılaşılan bir işlemdir. Özellikle, bir non-clustered index kullanıldığında ve sorgunun ihtiyaç duyduğu ek sütunlar bu indeksin bir parçası olmadığında meydana gelir.

*Key Lookup Nasıl Çalışır?*

1. **Sorgu Çalıştırılır:** Bir sorgu çalıştırıldığında, SQL Server önce uygun bir indeks olup olmadığını kontrol eder. Eğer sorguda kullanılan sütunlar için bir non-clustered index varsa, bu indeks kullanılarak hızlı bir arama yapılır.
2. **Ek Bilgi İhtiyacı:** Ancak, sorgunun döndürmesi gereken ek sütunlar varsa ve bu sütunlar non-clustered index'in bir parçası değilse, SQL Server bu ek bilgiyi almak için tabloya geri dönmek zorundadır.
3. **Clustered Index veya RID Kullanımı:** SQL Server, gerekli ek sütun bilgilerini almak için ya clustered index key'ini kullanarak ya da tabloya yönelik satır tanımlayıcısı (RID) kullanarak tabloya döner. Bu işlem, **Key Lookup** olarak adlandırılır.
4. **Performans:** Key Lookup işlemi genellikle ek maliyet gerektirir çünkü bu işlem, tabloya fazladan bir okuma işlemi ekler. Çok sık Key Lookup yapılması, sorgu performansını olumsuz etkileyebilir. Bu durumu minimize etmek için **covering index** adı verilen bir teknik kullanılabilir. Bu teknik, sorgunun ihtiyaç duyduğu tüm sütunları kapsayan bir indeks oluşturmayı içerir.

*Örnek:*

Aşağıdaki örnekteki gibi öncesinde olduğu gibi namesurname alanını bir non-clustered indeks olarak belirlemiştik.

```sql
SET STATISTICS IO ON -- ne kadarlık io yani okuma yaptı? -- 6
SET STATISTICS TIME ON -- ne kadar süre harcadı?
SELECT * FROM CUSTOMERS
WHERE
NAMESURNAME = 'ÖMER ÇOLAKOĞLU' 
```

Bu sorguda `NAMESURNAME` sütunu non-clustered index tarafından hızla bulunur. Ancak `FirstName`, `LastName` ve `Age` sütunları indeksin bir parçası olmadığından, SQL Server bu sütunları almak için tabloya dönmek zorunda kalır. Bu işlem, Key Lookup olarak adlandırılır.

Eğer `FirstName`, `LastName` ve `Age` sütunları da indeksin bir parçası olsaydı, Key Lookup'a gerek kalmazdı ve sorgu daha hızlı çalışırdı.

Key Lookup işlemlerini minimumda tutmak için sorgu optimizasyonu yapılması önemlidir. Bu genellikle gerekli tüm sütunları kapsayan indeksler oluşturularak yapılabilir.

Key lookup’ı en azda tutmak için ise şu şekilde yöntem sağlayabiliriz:

Öncesinde önceden oluşturduğumuz non-clustered indexin içerisine gidip, sonrasında:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2029.png)

Şeklinde bir yapı kurarsak,

Şimdi sorgumuzu tekrar çalıştıralım:

```sql
SELECT * FROM CUSTOMERS
WHERE
NAMESURNAME = 'ÖMER ÇOLAKOĞLU' 
```

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2030.png)

Görüldüğü gibi key lookup işlemini azalttı. Bu şekilde daha hızlı sorgular elde etmeye olanak sağlamaktayız.

Ancak her yerde kullanılabilecek bir yapı da değildir. Tablonun boyutunu *2 şeklinde de arttırmaktadır. Bazı yerlere göre kullanılması gereklidir.

***NON-CLUSTERED_INDEX - 2***

Örneğin elimizde bir telefon numarası var ve bu numaranın kime ait olduğunu öğrenmek istiyoruz. Bu işlemi klasik olarak yaparsak yine aynı şekilde yüksek işlemci gücüne sahip arama şeklinde yaparız. 

```sql
SET STATISTICS IO ON -- ne kadarlık io yani okuma yaptı? -- 32442
SET STATISTICS TIME ON -- ne kadar süre harcadı?
SELECT * FROM CUSTOMERS
WHERE
TELNR = '03222356749'
```

Bu sorguyu çalıştırdığımızda 32.442 sayfa arasından aradığımızı buldu. Ancak bunu yine aynı şekilde düşürmek istersek yani daha performanslı bir şekilde çalıştırmak istersek şu şekilde bir yöntem izlemeliyiz.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2031.png)

Buradan non-clustered seçildikten sonra

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2032.png)

TELNR alanı seçilir ve işleme devam edilir. 

Bu şekilde ayarladıktan sonra tekrardan aynı sorguyu çalıştırdığımızda

```sql
SET STATISTICS IO ON -- ne kadarlık io yani okuma yaptı? -- 7
SET STATISTICS TIME ON -- ne kadar süre harcadı?
SELECT * FROM CUSTOMERS
WHERE
TELNR = '03222356749'
```

Sorguyu çalıştıralım

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2033.png)

Bu şekilde 30.938 olan sayfa arama sayısı bu sefer 7’ye düşmüş oldu. 

SQL Server sorgunun türüne göre istenilen index’i çalıştırır ve performanslı bir şekilde sonuç dönüştürebilir.

<aside>
💡

Bir tabloda bir adet *clustered-index* bulunabilirken, birden fazla *non_clustered-index* bulunabileceğini unutmamamız gereklidir.

</aside>

***SQL SERVER INDEX ÖNERİLERİ***

Bazen öyle durumlarda hangi sorgularda hangi indexleri kullanamayacağımızı bilemeyebiliriz. İşte bu bilinemeyen durumlarda SQL Server bize uygun olan index yapısını sunabilir.

Bu yapıyı ise biz script olarak yazabiliriz. 

Diğer database nesnelerinde olduğu gibi bir index **CREATE** ile **OLUŞTURULUR**, **ALTER** ile **DEĞİŞTİRİLİR** ve son olarak **DROP** ile **SİLİNİR.**

Şimdi bu indeximizi oluşturalım:

```sql
CREATE NONCLUSTERED INDEX IX_1 ON CUSTOMERS -- indexin ismi, hangi tabloda çalışacağı
(NAMESURNAME) -- tablodaki hangi alanı seçeceği
```

Bu şekilde indeximiz oluştu.

***INDEX FRAGMENTATION - INDEX BOZULMASI***

**Index fragmentation**, veri tabanlarında ve özellikle ilişkisel veritabanı yönetim sistemlerinde (RDBMS) sıkça karşılaşılan bir durumdur. Bir indeks oluşturulduğunda, veriler sıralı ve düzenli bir şekilde saklanır. Ancak zamanla, veri ekleme, güncelleme ve silme işlemleri sonucunda bu düzen bozulur. Bu duruma indeks parçalanması (index fragmentation) denir.

İki ana türde parçalanma vardır:

1. **Internal Fragmentation (İç Parçalanma):**
    - Bu türde, indeks sayfaları arasında boş alanlar oluşur. Örneğin, bir veri sayfasında %70 doluluk varsa, %30'luk kısmı boştur. Bu boş alanlar veri tabanının daha fazla disk alanı kullanmasına neden olur ve sorgu performansını düşürebilir.
2. **External Fragmentation (Dış Parçalanma):**
    - Bu türde, veri sayfaları sıralı bir şekilde depolanmaz. Sayfalar arasındaki sıralı olmayan veri yerleşimi, sorgu işlemlerinin daha fazla sayfa okumasına neden olabilir, bu da performansı olumsuz etkiler.

İndeks parçalanması, sorgu performansını olumsuz etkileyebilir çünkü veri tabanı, verileri daha yavaş okuyabilir. Bu sorunu çözmek için düzenli olarak indeks yeniden yapılandırma (rebuild) veya reorganizasyon (reorganize) işlemleri yapılabilir. Bu işlemler, indekslerin tekrar sıralanmasını ve parçalanmanın giderilmesini sağlar.

SQL Server içerisinde indexlerin doluluk oranlarına bakmak için ilgili indexe çift tıklayıp sekme içerisinde bakabiliriz:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2034.png)

Bu şekilde baktığımızda sayfa doluluk oranı %99.83 iken toplam fragmentation ise 0.01’dir. Ancak daha önceden de dediğimiz gibi veri tabanına insert işlemleri gerçekleştikçe bu oran git gide düşecektir. Bu yüzden buranın takibi oldukça önemlidir.

Şimdi buraya 10.000 veri ekleyerek fragmentation’u bir kontrol edelim.

```sql
/*
	veritabanına 10000 kayıt atalım ve fragmentation'u kontrol edelim
*/
-- insert into kalıbıyla veri ekleyelim
INSERT INTO CUSTOMERS
(NAMESURNAME, GENDER, BIRTHDATE, CITY, TOWN, TELNR, 
NAME_, SURNAME, TCNO)

-- 10.000 kayıtı listeledik
SELECT TOP 10000 
NAMESURNAME, GENDER, BIRTHDATE, CITY, TOWN, TELNR, 
NAME_, SURNAME, TCNO
FROM CUSTOMERS

SELECT COUNT(*) FROM CUSTOMERS
```

Bu şekilde 10.000 kayıt ekledik.

Ve sonuçlara bakalım:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2035.png)

Görüldüğü gibi fragmentation oranı %20 değer kaybetmiş. Bu değer kaybı oldukça ciddi ve sorgu performansını etkileyebilmektedir.

<aside>
💡

indexlerde bozulmalarda primary key genellikle en sağlam olan ve bozulmaya mahal vermeyen bir indextir ancak bu primary key otomatik artanlı bir durumdaysa bozulmaya yol açmaz çünkü her eklenen kayıt sonrakinin arkasına ekleneceği için araya herhangi bir veri alışı almayacaktır ama unique bir değeri yani benzersiz olan bir değeri (*örneğin tc. no*) bu gibi alanlar araya illaki veriler alacağı ve bu veriler düzensiz olacağı için bu indexin bozulmama gibi bir garantisi ***yoktur!***

</aside>

İşte bu bozulmaları önlemek için genellikle sistemin çalışmadığı zamanlarda veya gün sonlarında rebuild işlemleri yapılır.

Bir rebuild işlemi yapabilmek ise

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2036.png)

Buradan seçilir ve sonrasında

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2037.png)

Buradan gerekli index seçilerek rebuild işlemi yapılır. Bu şekilde fragmentation işlemleri halledilmiş olur.

Ancak öyle sistemler vardır ki 7 gün 24 saat çalışabilmektedir. İşte bu tipte çalışan sistemlerde bazen boş bir an veya vakit bulmak oldukça zordur. İşte bu tipte bir olayla ilgili ise durumu farklı yöntemlerle çözmemiz gerekebilmektedir.

***FILL FACTOR*** 

**Fill factor** (doldurma faktörü), ilişkisel veritabanı yönetim sistemlerinde (RDBMS) bir indeks oluşturulurken veya yeniden oluşturulurken kullanılan bir ayardır. Fill factor, her bir veri sayfasının ne kadarının doldurulacağını belirler ve kalan kısmın ilerideki veri eklemeleri için boş bırakılmasını sağlar.

Örneğin, bir fill factor değeri olarak %80 belirlendiğinde, her bir veri sayfasının %80'i dolu olacak şekilde veri eklenir, geri kalan %20'si ise yeni verilerin eklenebilmesi için boş bırakılır. Bu, zamanla yeni veri eklendiğinde indeks sayfalarının yeniden düzenlenmesi (reorganizasyon) gereksinimini azaltabilir ve indeks parçalanmasının (index fragmentation) önüne geçebilir.

**Fill Factor'un Kullanımı:**

- **Düşük Değerli Fill Factor (%50 gibi):** Bu, sayfaların daha büyük bir kısmının boş bırakılmasını sağlar. Çok sık ekleme veya güncelleme yapılan sistemlerde tercih edilir, çünkü boş alan sayesinde yeni veriler eklendiğinde daha az parçalanma olur.
- **Yüksek Değerli Fill Factor (%90 veya %100 gibi):** Sayfalar neredeyse tamamen doldurulur. Bu, yerden tasarruf sağlar ve veri okuma işlemlerini hızlandırabilir, ancak daha fazla ekleme ve güncelleme yapılması durumunda indeks parçalanması riski artar.

Fill factor ayarları, veritabanı performansını optimize etmek için dikkatlice yapılmalıdır. Çok düşük bir fill factor, fazla boş alan bırakılmasına neden olarak disk alanının verimsiz kullanılmasına yol açabilir. Çok yüksek bir fill factor ise indeks parçalanmasını artırarak performans sorunlarına neden olabilir.

Bunun görselleştirilmiş hali şu şekildedir:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2038.png)

Şimdi bu fill factor’ü nasıl aktif edebileceğimizi gösterelim:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2039.png)

Buradan options seçenekleri arasında fill factor’ü 80 olarak ayarlayalım.

Şimdi veri tabanına 10.000 kayıt atalım:

```sql
-- insert into kalıbıyla veri ekleyelim
INSERT INTO CUSTOMERS
(NAMESURNAME, GENDER, BIRTHDATE, CITY, TOWN, TELNR, 
NAME_, SURNAME, TCNO)

-- 10.000 kayıtı listeledik
SELECT TOP 10000 
NAMESURNAME, GENDER, BIRTHDATE, CITY, TOWN, TELNR, 
NAME_, SURNAME, TCNO
FROM CUSTOMERS
```

10.000 kayıt gönderildi ve fragmentation oranına bi bakalım:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2040.png)

Görüldüğü gibi fragmentasyonda bir bozulma olmadı.

Şimdi ise veri tabanı içerisinde 100.000 kayıt gönderelim:

```sql
INSERT INTO CUSTOMERS
(NAMESURNAME, GENDER, BIRTHDATE, CITY, TOWN, TELNR, 
NAME_, SURNAME, TCNO)

-- 10.000 kayıtı listeledik
SELECT TOP 100000 
NAMESURNAME, GENDER, BIRTHDATE, CITY, TOWN, TELNR, 
NAME_, SURNAME, TCNO
FROM CUSTOMERS
```

100.000 veriyi attık ve fragmantasyonu tekrar kontrol edelim.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2041.png)

Görüldüğü gibi yine bozulma olmadı.

Şimdi bu fragmantasyonu bozmak için içerisine 500.000 veri atalım:

```sql
INSERT INTO CUSTOMERS
(NAMESURNAME, GENDER, BIRTHDATE, CITY, TOWN, TELNR, 
NAME_, SURNAME, TCNO)

SELECT TOP 500000 
NAMESURNAME, GENDER, BIRTHDATE, CITY, TOWN, TELNR, 
NAME_, SURNAME, TCNO
FROM CUSTOMERS
```

500.000 veriyi attık. Şimdi fragmantasyonu kontrol edelim:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2042.png)

Görüldüğü gibi fragmantasyonu bozduk. 

Yani buradan çıkarılacak sonuç, fill faktor sayesinde verileri bozulmadan istenilen veri girilesiye kadar indexler bozulmamaya devam edecektir. Ancak fill factor oranı dolduğu anda fragmantasyon oranı artacaktır.

Son olarak index konusunu vazgeçilmez bir durum olarak tanımlamak gerekir. Kullanıldığı zamanlarda zamandan büyük tasarruf ederken, kullanılmadığı zamanlarda ise zamanı ve makine kullanımını oldukça yormaktadır.

Bu şekilde de index konusunu bitirmiş olduk. Bir sonraki konumuz ise ***Cursor Konusu*** olacaktır.

### CURSOR KAVRAMI

Bir SQL sorgusu içinde döngü ile satır satır dolaşmak ve işlem yaptırmak için kullandığımız yapılardır.

Değişkenler tanımlanır ve her bir satır için bu değişkenler tablodan dönen değerlere atanır.

`Declare <cursor_adi> for Select … from tablo_ismi` kalıbı ile tanımlanır.

`Fetch next into değişkenler` kalıbı ile bir sonraki satıra geçilir.

***CURSOR UYGULAMA***

Cursor işlemi genellikle özelleştirilmiş alanlarda ‘mail gönderimi vs.’ gibi alanlarda veya kişiye özel stored procedure’larda sıklıkla kullanılan bir yapıdır.

Bu yapı kurgulanırken öncelikle değişkenler tanımlanır sonrasında ise select sorgusu kullanılarak değişkenler içerisine değer atamaları gerçekleştirilir.

`OPEN CRS` adı ile cursor açılır.

`FETCH NEXT FROM CRS INTO` kalıbıyla sorgudan gelen değerler değişkenlere atama yapılır.

Sorgunun sonuna gelesiye kadar `WHILE @@FETCH_STATUS = 0` sorgunun sonuna gelinip gelinmediği kontrol edilir.

Eğer gelinmezse `BEGIN END` blokları içerisinde bütün işlemler yapılır.

`FETCH NEXT FROM CRS INTO @ID, @NAMESURNAME, @BIRTHDATE`  sona gelinmediği süreç boyunca bir sonraki satıra geçme işlemi yapılır.

En sonunda `CLOSE CRS` işlemiyle cursor kapatılır ve `DEALLOCATE CRS` işlemiyle de cursora ait bilgiler hafızan silinir.

Bunun örnek kodları aşağıda gibidir:

```sql
DECLARE @ID AS INT
DECLARE @NAMESURNAME AS VARCHAR(100)
DECLARE @BIRTHDATE AS DATE

-- cursor kalıbı şu şekilde kurulur.
-- başında @ işareti kullanılmaz.
-- sırasıyla: cursor adı, cursor tanımlanması, hangi sql cümlesi için çalışacak
DECLARE CRS CURSOR FOR 

	SELECT ID, NAMESURNAME, BIRTHDATE FROM CUSTOMERS
	WHERE
	CITY = 'İSTANBUL' AND TOWN = 'ÜSKÜDAR'

OPEN CRS -- cursoru açma işlemi
-- sorgudan gelen değerleri cursor nesnesi değişkenlerine atamak gerekir.
FETCH NEXT FROM CRS INTO @ID, @NAMESURNAME, @BIRTHDATE

WHILE @@FETCH_STATUS = 0 -- sorgunun sonuna geldim mi (bir global değişkeni iki adet @@ işaretiyle tanımlanır.)
BEGIN
	-- begin end blokları içerisinde herhangi bir işlemi yaptırabilirim.
	-- örneğin:
	-- SELECT @NAMESURNAME
	-- veya
	PRINT @NAMESURNAME
	FETCH NEXT FROM CRS INTO @ID, @NAMESURNAME, @BIRTHDATE -- sona gelmediğim süreç boyunca bir sonraki satıra geç
END

-- cursor işlemi bittikten sonra
CLOSE CRS -- cursoru kapat
DEALLOCATE CRS -- cursora ait bilgileri hafızadan sil
```

Cursorun genel yapısı bu şekildedir.

Burada `BEGIN-END` blokları içerisinde istediğim her işlemi gerçekleştirebilirim.

Örneğin:

```sql
BEGIN
	-- begin end blokları içerisinde herhangi bir işlemi yaptırabilirim.
	-- örneğin:
	SELECT @NAMESURNAME
	FETCH NEXT FROM CRS INTO @ID, @NAMESURNAME, @BIRTHDATE -- sona gelmediğim süreç boyunca bir sonraki satıra geç
END
```

Örneğin burada sorguyu çalıştırdığımızda şu sonucu elde ederiz:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2043.png)

Görüldüğü gibi satır satır isimleri bize getirdi.

Bir diğer kullanım ve genellikle kullanım ise şu şekildedir:

```sql
BEGIN
	-- begin end blokları içerisinde herhangi bir işlemi yaptırabilirim.
	PRINT @NAMESURNAME
	FETCH NEXT FROM CRS INTO @ID, @NAMESURNAME, @BIRTHDATE -- sona gelmediğim süreç boyunca bir sonraki satıra geç
END
```

Bu şekilde çalıştırıldığında sonuç şu şekilde olacaktır:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2044.png)

Görüldüğü gibi konsola satır satır isim verileri gelecektir.

***CURSOR KİŞİYE ÖZEL MAIL OLUŞTURMA***

Kişiye özel bey veya hanım gibi hitaplar, isimler, kaçıncı yaşına girdiğine dair bilgileri getirten bir cursor yazalım:

```sql
-- kişiye özel doğum günü mesajı oluşturma

-- bugün doğanların listesini getirtelim.

SELECT ID, NAMESURNAME, GENDER, BIRTHDATE FROM CUSTOMERS
WHERE DATEPART(DAY,BIRTHDATE) = DATEPART(DAY, GETDATE())
AND
DATEPART(MONTH, BIRTHDATE) = DATEPART(MONTH, GETDATE()) -- 33 kişi var.

/* şu şekilde bir yapı kurgulamamız gerekebilir.
'Sayın Defne Karagöz Hanım,
60.yaşınızı kutlar, sağlıklı ömürler dileriz.'
*/

-- öncelikle değişkenlerimizi tanımlayalım
DECLARE @ID AS INT
DECLARE @NAMESURNAME AS VARCHAR(100)
DECLARE @GENDER AS VARCHAR(1)
DECLARE @BIRTHDATE AS DATE
DECLARE @MSG AS VARCHAR(1000) -- mesaj değişkeni
DECLARE @AGE AS INT -- yaş değişkeni

-- şimdi cursoru kuralım

DECLARE CRS CURSOR FOR
-- sorgunun kendisi
	SELECT ID, NAMESURNAME, GENDER, BIRTHDATE FROM CUSTOMERS
	WHERE DATEPART(DAY, BIRTHDATE) = DATEPART(DAY, GETDATE())
	AND
	DATEPART(MONTH, BIRTHDATE) = DATEPART(MONTH, GETDATE())

-- cursoru açalım
OPEN CRS
FETCH NEXT FROM CRS INTO @ID, @NAMESURNAME, @GENDER, @BIRTHDATE

-- durum sıfır olasıya kadar
WHILE @@FETCH_STATUS = 0
BEGIN
	-- mesajı oluşturalım
	SET @MSG = 'Sayın, ' + @NAMESURNAME
	-- cinsiyete göre hanım veya bey
	IF @GENDER = 'E'
		SET @MSG = @MSG+ ' Bey;'
	ELSE
		SET @MSG = @MSG+ ' Hanım;'
	-- bir satır aşağı çekelim
	SET @MSG = @MSG+CHAR(13)

	-- yaşını bulalım
	SET @AGE = DATEDIFF(YEAR, @BIRTHDATE, GETDATE())

	-- mesajı son hale getirelim
	SET @MSG = @MSG + CONVERT(VARCHAR, @AGE)+ '. yaşınızı kutlar. Sağlıklı yıllar dileriz.'

	-- konsolda görüntüleyelim
	PRINT @MSG

FETCH NEXT FROM CRS INTO @ID, @NAMESURNAME, @GENDER, @BIRTHDATE
END

-- cursoru kapatalım
CLOSE CRS
-- cursoru hafızadan silelim
DEALLOCATE CRS
```

Şimdi bu cursoru görüntüleyelim:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2045.png)

Görüldüğü gibi mesajlar oluştu. Toplamda 33 kişi bu mesajtan etkilenecek. Bir sonraki durumda bunları TSQL kullanarak nasıl mail olarak gönderebiliriz onu inceleyeceğiz.

***SQL SERVER MAIL GÖNDERME İŞLEMİ***

SQL serverda mail gönderme işlemi biraz basit olsa da biraz karmaşık bir yapıya sahiptir. Ancak burada hata yapılmaması gereklidir. Çünkü hata yapılırsa düzeltilmesi biraz zordur.

Öncelikle *Management* sekmesi içerisinde bulunan *Database Mail* sekmesine girmemiz gereklidir.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2046.png)

Buraya girildikten sonra ise bazı konfigurasyon ayarları yapılması gereklidir.

*Set Up Database* seçeneği seçilerek devam edilir.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2047.png)

*Next* diyerek devam edilir.

Bu görüntüde *Profile Name* sekmesine *SQLMAIL* yazılması gereklidir. ***Ancak burada Türkçe karakterler kullanılmaması gereklidir.***

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2048.png)

Bu şekilde tamamlanarak *Add…* sekmesine girilir.

Açılan sekmede mail gönderme işlemini hangi mail adresiyle yapılacağı belirtilir. Ben burada kendi mail adresimi ve şifrelerimi giriyorum. Sizde kendinize ait mail şifrelerinizi girebilirsiniz.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2049.png)

Burada *Server name* alanı ve *Port Number* alanı önceden belirlenmiş bir yapıya sahip olduğu için aynı görseldeki gibi bırakmanız gerekir. Bu işlemleri tamamladıktan sonra *OK* basıp yola devam ediyoruz.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2050.png)

Burada *public* olan kısmı işaretleyip *Next* diyerek yola devam ediyoruz.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2051.png)

Bizi bu şekilde bir ekran karşıladıysa gayet başarılı bir şekilde gerçekleştirmişizdir. Ancak SQL mail sistemi yine çalışmayacaktır. Çünkü Google yakın tarihte bu tip mail gönderme işlemlerinin güvenlik problemlerine yol açtığı gerekçesiyle uygulama şifreleri özelliğini tanıttı. Bu yüzden dolayı bir uygulama şifresi almamız gerekecek. Ancak yine de test edelim. 

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2052.png)

Buradan *Test E-mail* kısmına tıklayarak bir test maili gönderelim.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2053.png)

Buradan alıcı adreslerini girdikten sonra *send test e-mail* diyerek çalıştıralım.

Mail kutunuzu kontrol ettiğinizde herhangi bir aksiyon alamayacaksınız. Çünkü uygulama şifrelerini aktif etmeniz gereklidir.

Google Accountunuzda iki kademeli doğrulamayı açtıktan sonra *App Password* kısmına girerek şu şekilde bir ekran sizi karşılayacaktır.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2054.png)

Buradan uygulamanıza bir isim girerek sonrasında *Create* kısmına gitmeniz gereklidir.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2055.png)

Aldığınız uygulama şifresini kopyalayıp, SQL Server içerisine tekrar dönelim.

Buradan yine aynı şekilde *Management* sekmesi altında bulunan *Database Mail* sekmesine gelelim.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2056.png)

Buradan *Configure Database Mail* sekmesine tıklayarak gerekli sayfayı tekrar açalım.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2057.png)

Açılan sayfada *Manage Database Mail* sekmesine tıklayıp *Next* diyelim.

Şöyle bir ekran bizi karşılayacaktır.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2058.png)

Bu ekrandan *View, change..* sekmesini seçelim.

Açılan bu ekranda ise

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2059.png)

*Password* kısmından şifrelerimizi almış olduğumuz uygulama şifresiyle değiştirelim.

Tekrardan bir test mail gönderdiğimizde ve posta kutumuzu kontrol ettiğimizde şöyle bir sonuca ulaşacağız.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2060.png)

Görüldüğü gibi mail geldi.

Bütün bu işlemlerin her biri TSQL ile de gerçekleştirilebilmektedir. *(Gerekli bilgileri microsoft sayfasından ulaşabilirsiniz.)*

Örnek bir e-mail script’i yazalım:

```sql
-- SQL'den mail gönderme işlemi TSQL'le gerçekleşmektedir.
-- Bu işlemi şu şekilde görüntüleyebiliriz

EXEC msdb.dbo.sp_send_dbmail
	@profile_name = 'SQLMAIL', -- profilde tanımlanmış gmail 
	@recipients = 'ahmetklnc242@gmail.com', -- kime gönderileceği
	@body = 'Bu bir deneme maili taslağıdır. MSSQL tarafından gönderilmiştir.', -- içeriği
	@subject = 'SQL test mail' -- konusu
```

Bu scripti çalıştırdığımızda ise ve mail kutusunu tekrar kontrol ettiğimizde ise 

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2061.png)

Bu şekilde bir maille karşılaşıyorsak başarmışız demektir. 

Şimdi doğum günü içeriklerini mail olarak gönderelim.

Scripti inceleyelim:

```sql
-- kullanıcılara doğum günü kutlayan e mail gönderelim

-- gerekli alanları seçelim
/*
SELECT 
ID, NAMESURNAME, GENDER, BIRTHDATE, EMAIL, DATEDIFF(YEAR, BIRTHDATE, GETDATE()) AS AGE 
FROM USERS
WHERE DATEPART(DAY, BIRTHDATE) = DATEPART(DAY, GETDATE())
AND
DATEPART(MONTH, BIRTHDATE) = DATEPART(MONTH, GETDATE())
*/
-- şimdi özellikleri değişken olarak tanımlayalım
DECLARE @ID AS INT
DECLARE @NAMESURNAME AS VARCHAR(100)
DECLARE @GENDER AS VARCHAR(1)
DECLARE @BIRTHDATE AS DATE
DECLARE @EMAIL AS VARCHAR(100)
DECLARE @AGE AS INT
DECLARE @MSG AS VARCHAR(1000)

-- cursoru yazalım
DECLARE CRS CURSOR FOR

	SELECT  -- burada e-mail adresleri benim kullandığım veriler fake veriler olduğu için çalışmayacaktır. ondan dolayı kendi mail adresimi girdim
	ID, NAMESURNAME, GENDER, BIRTHDATE, 'ahmetklnc242@gmail.com' EMAIL, DATEDIFF(YEAR, BIRTHDATE, GETDATE()) AS AGE 
	FROM USERS
	WHERE DATEPART(DAY, BIRTHDATE) = DATEPART(DAY, GETDATE())
	AND
	DATEPART(MONTH, BIRTHDATE) = DATEPART(MONTH, GETDATE())

OPEN CRS
FETCH NEXT FROM CRS INTO @ID, @NAMESURNAME, @GENDER, @BIRTHDATE, @EMAIL, @AGE
WHILE @@FETCH_STATUS = 0
BEGIN
SET @MSG ='Sayın '+ @NAMESURNAME
IF @GENDER = 'E'
	SET @MSG = @MSG+ ' Bey;'
ELSE
	SET @MSG = @MSG+ ' Hanım;'
SET @MSG = @MSG + CHAR(13) -- bir alt satıra geldim.
SET @MSG = @MSG +CONVERT(VARCHAR, @AGE)+'. yaşınızı kutlar. Sevdiklerinizle, sağlıklı ve mutlu bir yeni yıl dileriz.'

-- SQL mail gönderme scripti
EXEC msdb.dbo.sp_send_dbmail
	@profile_name = 'SQLMAIL',
	@recipients = @EMAIL,
	@body = @MSG,
	@subject = 'Doğum Gününüz Kutlu Olsun!';

FETCH NEXT FROM CRS INTO @ID, @NAMESURNAME, @GENDER, @BIRTHDATE, @EMAIL, @AGE
END
CLOSE CRS
DEALLOCATE CRS
```

Scripti çalıştırdıktan sonra mail kutumuzu bi kontrol edelim:

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2062.png)

Görüldüğü gibi mailler gelmiş. Bu şekilde bir özelleştirme doğrultusunda çalışmalar gerçekleştirebiliriz.

***CURSOR İLE BİR STORED PROCEDURE ÇAĞIRMAK***

***Senaryo:***

Bir tablodaki her bir satır için belirli bir stored procedure'ü çağırmak istediğimizi varsayalım. `Employee` tablosunda `EmployeeID` sütunu olduğunu düşünelim ve her bir `EmployeeID` için `usp_GetEmployeeDetails` adında bir stored procedure'ü çağıracağız.

***Adımlar:***

1. *Cursor Tanımlama ve Açma:*

```sql
DECLARE @EmployeeID INT

DECLARE EmployeeCursor CURSOR FOR
SELECT EmployeeID FROM Employee

OPEN EmployeeCursor
FETCH NEXT FROM EmployeeCursor INTO @EmployeeID

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Stored procedure'ü çağır
    EXEC usp_GetEmployeeDetails @EmployeeID

    FETCH NEXT FROM EmployeeCursor INTO @EmployeeID
END

CLOSE EmployeeCursor
DEALLOCATE EmployeeCursor

```

***Açıklamalar:***

- **Cursor Tanımlama:** `DECLARE EmployeeCursor CURSOR FOR` ifadesiyle bir cursor tanımlıyoruz. Bu cursor, `Employee` tablosundaki `EmployeeID` sütunundaki değerleri alacak.
- **Cursor Açma:** `OPEN EmployeeCursor` ile cursor'ı açıyoruz ve `FETCH NEXT FROM EmployeeCursor INTO @EmployeeID` ifadesiyle ilk `EmployeeID` değerini değişkene atıyoruz.
- **While Döngüsü:** Cursor'dan değerler alındıkça stored procedure çağrılıyor (`EXEC usp_GetEmployeeDetails @EmployeeID`). Döngü, `@@FETCH_STATUS = 0` olduğu sürece devam eder.
- **Cursor Kapatma ve Bellekten Silme:** Cursor'ı kapatmak için `CLOSE EmployeeCursor`, bellekten silmek için ise `DEALLOCATE EmployeeCursor` komutlarını kullanıyoruz.

Bu yöntemle, cursor ile satır satır ilerleyerek her bir satır için stored procedure'ü çağırabilirsiniz.

### TEMP TABLE KAVRAMI

Temp table (geçici tablo), veritabanı işlemleri sırasında geçici olarak veri saklamak için kullanılan bir tablo türüdür. Bu tablolar, sadece bir oturum (session) süresince geçerlidir ve oturum sona erdiğinde veya tablo silindiğinde otomatik olarak silinirler. Temp table'lar, özellikle karmaşık sorgularda ara sonuçları depolamak veya geçici verilerle çalışmak için kullanılır.

***Temp Table Türleri***

Temp table'lar iki ana kategoriye ayrılır:

1. **Local Temp Table (Yerel Geçici Tablo):**
    - Bir `#` işaretiyle başlar (`#TempTable`).
    - Sadece tabloyu oluşturan oturum tarafından görülebilir.
    - Oturum kapandığında otomatik olarak silinir.
2. **Global Temp Table (Küresel Geçici Tablo):**
    - İki `##` işaretiyle başlar (`##TempTable`).
    - Herhangi bir oturumdan erişilebilir.
    - Son erişen oturum kapandığında otomatik olarak silinir.

***Temp Table Avantajları***

- **Performans:** Temp table'lar, büyük veri işlemleri sırasında geçici veriyi saklayarak performansı artırabilir.
- **Kapsam:** Local temp table'lar sadece oluşturulduğu oturumda geçerli olduğundan, veri yalıtımı sağlar.
- **Geçici Veri Saklama:** Karmaşık sorgularda veya geçici veri saklama ihtiyaçlarında kullanışlıdır.

***Temp Table Kullanım Durumları***

- Ara sonuçları depolamak.
- Karmaşık sorgularda veri manipülasyonlarını basitleştirmek.
- Geçici olarak büyük veri kümeleriyle çalışmak.

Temp table'lar veritabanı işlemlerinde oldukça esneklik sağlayan ve performansı artıran yararlı araçlardır.

***Temp Table Oluşturma***

Bir temp table oluşturmak ve kullanmak oldukça basittir. 

```sql
-- fiziken bir tablo oluşturalım
CREATE TABLE ISIMLER (ID INT IDENTITY(1,1), ISIM VARCHAR(100))

-- bir tane kayıt atalım
INSERT INTO ISIMLER (ISIM) VALUES ('AHMET')

-- bu kaydı listeleyelim
SELECT * FROM ISIMLER

-- temp table oluşturmak için tablo isminin öncesine (#) işareti koyulur.
CREATE TABLE #ISIMLER (ID INT IDENTITY(1,1), ISIM VARCHAR(100))

-- şimdi bu temp table'a veri ekleyelim
INSERT INTO #ISIMLER (ISIM) VALUES ('EMİNE')

-- bu kaydı listeleyelim
SELECT * FROM #ISIMLER
```

Bilindiği üzere fiziksel tablolarda sadece bir adet aynı isimde tablo oluşturulur. Aynısı oluşturulmaz. Ancak temp table’da farklı sessionlarda farklı temp tablelar oluşturulabilir.

Bir temp table fiziki bir tablo olmadığı için session sonunda sona erdiği için direkt veritabanı tablosu içerisinde yer almaz *System Databases* içerisinde yer almaktadır.

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2063.png)

Görüldüğü gibi oluşturulan Temp table bu hiyerarşide yer almaktadır.

Farklı bir session açarak bu temp table’ı görüntülemeye çalışalım:

```sql
-- farklı bir session'da çalıştıralım

SELECT * FROM #ISIMLER
```

![image.png](TSQL%20DERS%20NOTLARI%203097002010d541d7b2738b6864248fed/image%2064.png)

Görüldüğü gibi hata alındı. Çünkü temp tablelar sadece bir sessiona özeldir. 

<aside>
💡

Farklı sessionlarda aynı isme sahip birden fazla temp table oluşturulabilir. Bu durum hiçbir problem yapmamaktadır. Temp table’ın bu özelliği fiziksel tablolardan ayıran en büyük özelliğidir.

</aside>

Farklı sessionlarda da kullanılabilir bir temp table kurmak istiyorsak ve oturum sonlandığı zaman temp table’ın silinmesini istiyorsak temp table’ı global olarak tanımlamamız gerekmektedir.

Global temp table’lar `(##)temp_table_ismi` şeklinde tanımlanır.

```sql
-- global session'lu temp table oluşturmak için tablo isminin öncesine (##) işareti koyulur.
CREATE TABLE ##ISIMLER (ID INT IDENTITY(1,1), ISIM VARCHAR(100))

-- şimdi bu temp table'a veri ekleyelim
INSERT INTO ##ISIMLER (ISIM) VALUES ('EMİNE')

-- bu kaydı listeleyelim
SELECT * FROM ##ISIMLER
```

Şimdi farklı bir session açalım:

```sql
-- 79 numaralı session

SELECT * FROM ##ISIMLER -- 1 EMİNE

-- veri de ekleyebilirim

INSERT INTO ##ISIMLER VALUES('AHMET')
/*
1	EMİNE
2	AHMET
*/
```

Görüldüğü gibi çalışmaktadır.

Şimdi bir örnek üzerinden anlatalım:

```sql
-- temp table ile ilgili bir örnek yapalım
-- kadınlar tarafından ne kadar alınmış, erkekler tarafından ne kadar alınmış

SELECT 
I.ID, I.ITEMCODE, I.ITEMNAME, U.GENDER,
SUM(OD.LINETOTAL) TOTALSALE
FROM ORDERDETAILS OD
JOIN ORDERS O ON O.ID = OD.ORDERID
JOIN USERS U ON U.ID = O.USERID
JOIN ITEMS I ON I.ID = OD.ITEMID
GROUP BY
I.ID, I.ITEMCODE, I.ITEMNAME, U.GENDER
ORDER BY
I.ITEMCODE, U.GENDER
```

Görüldüğü gibi joinlerle bilgilerimizi getirdik.

Şimdi temp table kullanarak bir yapı kuralım:

```sql
-- şimdi geçici bir tablo oluşturalım

CREATE TABLE #RESULT
(ID INT, ITEMCODE VARCHAR(100), ITEMNAME VARCHAR(100), TOTALSALE_M FLOAT, TOTALSALE_W FLOAT)

SELECT * FROM #RESULT

-- şimdi tablo içini dolduralım

INSERT INTO #RESULT (ID, ITEMCODE, ITEMNAME)
SELECT ID, ITEMCODE, ITEMNAME FROM ITEMS

UPDATE #RESULT SET TOTALSALE_M =
(
-- şimdi fiyat hesaplamalarını ekleyelim (erkek)
SELECT SUM(LINETOTAL) FROM ORDERDETAILS OD
JOIN ORDERS O ON O.ID = OD.ORDERID
JOIN USERS U ON U.ID = O.USERID
WHERE
ITEMID = #RESULT.ID
AND U.GENDER = 'E'
)

UPDATE #RESULT SET TOTALSALE_W =
(
-- şimdi fiyat hesaplamalarını ekleyelim (kadın)
SELECT SUM(LINETOTAL) FROM ORDERDETAILS OD
JOIN ORDERS O ON O.ID = OD.ORDERID
JOIN USERS U ON U.ID = O.USERID
WHERE
ITEMID = #RESULT.ID
AND U.GENDER = 'K'
)
```

Bu şekilde hem kadınlar için hem de erkekler için toplam satış miktarını getirtmiş olduk. 

Bu şekilde yapılar için temp table kullanmak oldukça basit ve yapılabilir konumdadır.

### PIVOT ve UNPIVOT KAVRAMI

**Pivot** ve **Unpivot**, SQL Server'da verileri yeniden şekillendirmek için kullanılan güçlü araçlardır. Bu işlemler, verileri farklı bir perspektiften görmeyi sağlar ve özellikle raporlama ve veri analizinde kullanılır.

***Pivot Nedir?***

**Pivot**, satır verilerini sütunlara dönüştürmek için kullanılır. Bir tabloda belirli bir sütunun (örneğin, aylar veya yıllar) değerlerini sütunlara çevirir ve diğer bir sütunun (örneğin, satışlar) değerlerini bu sütunlarda toplar veya hesaplar.

Bir örneği pivot kullanmadan yapalım:

```sql
-- cinsiyet üzerinden ne kadar satış yapmış pivotla yapalım

SELECT 
CATEGORY1,
CUSTOMERGENDER, SUM(TOTALPRICE) TOTALSALE
FROM SALES
GROUP BY CUSTOMERGENDER, CATEGORY1
ORDER BY CATEGORY1, CUSTOMERGENDER

SELECT 
CATEGORY1, SUM(TOTALSALE_M) AS TOTALSALE_M,
SUM(TOTALSALE_F) TOTALSALE_F
FROM
(
SELECT
CATEGORY1,
CASE WHEN CUSTOMERGENDER = 'E' THEN SUM(TOTALPRICE) ELSE 0 END AS TOTALSALE_M,
CASE WHEN CUSTOMERGENDER = 'K' THEN SUM(TOTALPRICE) ELSE 0 END AS TOTALSALE_F,
CUSTOMERGENDER, SUM(TOTALPRICE) TOTALSALE
FROM SALES
GROUP BY CUSTOMERGENDER, CATEGORY1
) T
GROUP BY CATEGORY1
```

Pivot kullanmadan bu şekilde bir yapı yapabiliriz.

Ancak pivot kullanarak ise şu şekilde bir yapı kurgulaması yapabiliriz:

```sql
-- şimdi bunu pivot kavramıyla nasıl yapabiliriz.

SELECT CATEGORY1,[E], [K]
FROM
(
	SELECT CATEGORY1, CUSTOMERGENDER, TOTALPRICE FROM SALES
) SOURCETABLE -- ham veriyi çekeceğim alanı buraya yazacağım
PIVOT
( -- pivotlamak istediğim alanı buraya yazıyorum
	SUM(TOTALPRICE) FOR CUSTOMERGENDER IN ([E], [K])
) PVT
```

Bu şekilde ham veriyi alarak istediğim şekilde pivot table oluşturabilirim.

Bir örnek daha inceleyelim:

```sql
-- şehirlerin aylara göre kırılımlara bakalım
SET LANGUAGE turkish -- aylar türkçe gelsin diye dili türkçe ayarladım.
SELECT CITY, DATENAME(MONTH, DATE_) MONTH_, SUM(TOTALPRICE)
FROM SALES
GROUP BY CITY, DATENAME(MONTH, DATE_)
ORDER BY CITY, DATENAME(MONTH, DATE_)
```

Bu şekilde satışların şehirlere kırılımını ortaya koyan bir script yazdık.

Peki bunu bir pivotla oluştursaydık:

```sql
-- şimdi bunu pivot kavramıyla nasıl yapabiliriz.

SELECT CITY, [OCAK], [ŞUBAT], [MART], [NİSAN], [MAYIS], [HAZİRAN], [TEMMUZ], [AĞUSTOS], [EYLÜL], [EKİM], [KASIM], [ARALIK]
FROM
(
	SELECT CITY, DATENAME(MONTH, DATE_) MONTH_, TOTALPRICE FROM SALES
) AS ST -- ham veriyi çekeceğim alanı buraya yazacağım
PIVOT
( -- pivotlamak istediğim alanı buraya yazıyorum
	SUM(TOTALPRICE) FOR MONTH_ IN ([OCAK], [ŞUBAT], [MART], [NİSAN], [MAYIS], [HAZİRAN], [TEMMUZ], [AĞUSTOS], [EYLÜL], [EKİM], [KASIM], [ARALIK]) -- 12 ay olduğu için 12 aya göre aldım
)AS PVT
```

Pivot kullanarak da satış rakamı kırılımını bu scriptle öğrenebiliriz.

Unpivotta ise işlem tersi şekilde ilerleyecektir.

Öncelikle özet halde verilmiş olan tablo ham veriye dönüştürülme işlemi olacaktır.

```sql
-- kategoriye göre farklı verileri nasıl getirtebiliriz gelin bi bakalım
SELECT * FROM SALESPIVOT
WHERE CATEGORY1 = 'MEYVE'

-- özet halde verilmiş olan veriyi tam haline getirme işlemi
SELECT CATEGORY1, MONTH_, SALES
FROM
(
	SELECT * FROM SALESPIVOT
) SOURCETABLE
UNPIVOT
(
	SALES FOR MONTH_ IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12]) -- bizim aylarımızı temsil etmektedir
) UPVT
```

Bu  şekilde de özet haldeki veriyi ham hale çevirmiş olduk.

Ve artık TSQL konularımızın sonuna gelmiş bulunmaktayız.

Bir sonraki bloglarımızda görüşmek dileyiğle…

Hoşçakalın!
