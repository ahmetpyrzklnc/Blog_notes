Select * from Products

/*Count fonksiyonları sayılara yönelik fonksiyonlardır genel anlamda kaç kayıt olduğunu belirtir. */

Select Count(*) as [Urun Sayisi] from Products /*kolon isminde arada boşluk varsa köşeli parantez kullanılır. */

Select Count(ProductName) from Products /*ürün adı kaydından kaç tane olduğunu belirtir. */

/*count kesinlikle null değerlerini saymaz null değeri demek kayıt yoktur anlamına gelir. */

Select Count(*) as MusteriSayisi from Customers /*müşteri kaydı 91 adet*/

Select Count(Region) as BolgeSayisi from Customers /*31 tane sayar 60 tane kayıt null olduğu için sayı olarak yazılmaz */ 

-- Min()  en düşük kayıt neyse onu verir

Select MIN(UnitPrice) from Products /*en düşük fiyatı olan ürünün fiyatı 2,50 */

-- Max() en yüksek kayıt neyse onu verir

Select MAX(UnitPrice) from Products /*en yüksek fiyatı olan ürünün fiyatı 263,50 */

-- AVG() -- AVARAGE sayıların toplam ortalamasını alır.

Select AVG(UnitPrice) from Products /*ürünlerin toplam fiyatının ortalaması */

-- Sum() fonksiyonu kümülatif bir toplam verir. 

Select SUM(UnitPrice) from [Order Details] /*order detailste bulunan her bir üründen bir tane satarsak toplam kazanc 56500 tl'dir */

Select SUM(UnitPrice * Quantity) as [Toplam Gelir] from [Order Details] /*satılan toplam üründen elde edilen gelir 1354458,59*/ 

-- Aralarındaki en temel fark birincisinde her bir üründen bir tane sattığını varsayarak hesaplama yapılır
-- Diğerinde ise ürünün fiyatıyla kaç tane sattığı arasında orantı kurarak hesaplama yapılır.

-- Rand() rastgele sayı üretir

Select RAND() -- rastgele sayıları üretir.
