-- distinct,  groupby ve havingle çalışmalar

-- distinct ile çalışmak 

-- Distinct, bir kolondaki tekrarlayan verileri tekrarlamadan filtreleyerek listeleyen bir sorgudur

Select distinct(Country) from Customers order by Country /*örneğin bu grupta var olan iki adet mexico kaydı vardı bu sorguda bu mexico kayıtlarından birini sildi diğerini yazdı */

-- kısaca her ülke ne kadar tekrarlanırsa tekrarlansın her birinden sadece bir tane kayıt gösterilir.

-- yanlış kullanımdır 
Select distinct(c.Country), c.City from Customers c order by Country /*sadece ülke adını filtrelemez şehirle ülke arasındaki kombinasyonları filtreler */

/*distinct bir gruplama yöntemi sonucunu çıkartabiliriz */

Select distinct c.Country, c.City from Customers c order by Country /*ülke ve şehir kombinasyonlarının aynı olan ifadelerinde sadece bir tanesini alır */

-- UK - LONDON							UK - LONDON
-- MEXİCO - MEXİCO CİTY >> çıktısı >>	MEXİCO - MEXİCO CİTY 
-- UK - LONDON (BUNU YAZMAZ ÇÜNKÜ AYNISINI YAZDIRDI)

/*yani bir gruplama söz konusu oldu */
/* kısaca bu şekilde özetleyebiliriz*/


-- group by ile çalışmak 

-- group by temelinde distinct ile aynı amaca sahiptir yani bir gruplama işlevi görür. Tek farkı hangi verilerden kaçar tane tekrarlandığını gösterebilen
-- aggretaion fonksiyonlarıyla iç içe çalışarak bilgilendirme yapar 

Select Country,Count(*) as ADET from Customers group by Country 

/*
ÖNCEKİ VERİTABANI		group by sonrası		
Türkiye					Türkiye 2
Türkiye					Almanya 1
Almanya					Fransa 1
Fransa

*/

-- yani kısaca birer liste gibi düşünebiliriz örneğin türkiye yukarıdaki örnek gibi veritabanında bir türkiye listesi oluştu  ve bize count kullanarak veritabanında kaç tane olduğunu 
-- sayarak bir liste halinde yazdırdı

/*farklı bir kullanım */

Select c.Country,c.City,Count(*) as ADET from Customers c group by Country,City

/*
ÖNCEKİ VERİTABANI			group by sonrası		
Konya - Türkiye				Konya -	Türkiye 2
Konya - Türkiye				Berlin - Almanya 1
Berlin - Almanya			Paris - Fransa 1
Paris - Fransa				İzmir - Türkiye 1 
İzmir - Türkiye

*/

-- bir şehirle bir ülke kombinasyonunu da gruplamaya çalışılabilir örnek açıklayıcı bir şekilde yazıldı 

/*yanlış kullanımdır */

Select Country,City,Count(*) from Customers

/*yanlış kullanımdır */

/*group by bir liste açılışı gibidir. 
bu listeyi oluşturmadan sayım yapmak mümkün değildir bu yüzden dolayı sayım yapılacak kolonların group by sonrasında belirtilmesi gerekir */


-- having ile çalışmak 

-- having group by'dan sonra girilecek şarta göre ekrana yazdırmaya olanak sağlayan bir filtreleme fonksiyonudur.

Select c.Country, c.City, Count(*) as Adet from Customers c group by Country, City having Count(*)>1

/* kayıt sayısı 1'den fazla olanları listeledi */

/*
ÖNCEKİ VERİTABANI			group by sonrası						having sonrası 	
Konya - Türkiye				Konya -	Türkiye 2						Konya - Türkiye 2
Konya - Türkiye				Berlin - Almanya 1(dahil etmez)				- 
Berlin - Almanya			Paris - Fransa 1(dahil etmez)				-
Paris - Fransa				İzmir - Türkiye 1(dahil etmez)				-
İzmir - Türkiye

*/

/*ÖNEMLİ BİR NOT: Burada where koşuluyla having karıştırılmamalıdır*/
/*çünkü having bir liste içerisinde filtreleme yaparken where koşulu direkt olarak var olan tablo üzerinden işlem yapar */

Select c.Country, c.City, Count(*) from Customers c WHERE City <> 'Nantes' group by Country, City having COUNT(*)>1

/* <> - dahil etme anlamına gelir */

/*burada yapılan şey şudur normalde nantes'te iki kişi ikamet etmektedir ama where koşuluyla bu iki kişiyi istemediğimizi belirttiğimiz için
bu nantes şehrinde bulunan kişileri listemizden atar */

