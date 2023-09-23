# Algoritma ve Veri Yapıları

> ALGORİTMA NEDİR?
> 

Algoritma, yapılacak bir işlem için yapılan işlemler bütününe denilir. Buna örnek olarak çay demleme örneği verilebilir. Bir çay demleme örneğini ele alırsak öncelikle bir çaydanlığa suyu doldururuz sonrasında ocağı açarız ateşi yakarız suyu koyarız beklemeye alırız. Su kaynar çayı dökeriz gibi gibi süreçlerden geçerek çayı hazırlamış oluruz.

İşte algoritma dediğimiz kavram bu sürecin ta kendisidir. Bilgisayarlarda algoritmaların işlenmesi de aynı bu şekil gibi ama daha karmaşık bir şekilde ilerlemektedir. Şunu bilmekte fayda vardır ki;

<aside>
💡 Algoritmalar, yazılım dilinden bağımsızdır.

</aside>

### BİLGİSAYARLARDA BİLGİLERİN TUTULMASI

Şöyle düşünelim: Bir insan kendini ifade etmek için bir dile ihtiyaç duyar. Karşısına çıkabilecek bir nesneyi kendi anadiline göre tanımlama yaparak anlatır. Ama her insan aynı olmadığı gibi farklı bir anadile sahip bir insan ise o nesneye farklı bir tanımlama yapabilir. İşte bu yüzden dolayı bilgisayarların tek bir dil konuşması oldukça önem arz eder. Bu yüzden ötürü bilgisayar `binary` yani (0,1) sayı sistemini kullanır. Bu sistem şuan bu yazıyı okuduğun ekranda her bir harf için ayrı bir kombinasyon kullanarak sana göstermesi için yapılır. `binary` yapı sistemi transistörlerin içinden geçen elektrik akımının açık (1) veya kapalı (0) olduğu durumları göstererek oluşturur.

### SAYI SİSTEMLERİ

Birden fazla sayı sistemleri vardır. Bu sistemler hem insan hayatını kolaylaştırmak hem de daha karmaşık işlemlerin çözümünü kolaylaştırmak için varlardır. Bu yazında hem günlük hayatımızda kullandığımız onluk sayı sisteminden bahsedeceğiz hem de bilgisayarların oldukça fazla kullandığı binary ikili sayı sisteminden bahsedeceğiz.

Onlu sayı sistemini birçoğumuz biliyoruz. örneğin 120 sayısı bir onlu sayı sisteminde bir sayıdır burada şu şekilde açılır. **10⁰*0 + 10¹*2 + 10²*1 şeklindedir.**

Binary sayı sistemi ise ikili yani 0 veya 1’den oluşan sayı dizinlerine verdiğimiz addır. Bu sayı dizinlerinin dönüşümü oldukça basittir. Örneğin onluk bir sayı dizininde oluşan sayıyı binary’e dönüştürmek istiyorsanız o sayıyı 2’ye bölerek kalanları ise en sağdan başlayarak yazarsanız sorun çözülmüş olur.

![Onlu sistemde bulunan 115 sayısının binary sayı sistemindeki karşılığı](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/dec-bin.jpg)

Onlu sistemde bulunan 115 sayısının binary sayı sistemindeki karşılığı

Binary sayısının onlu sayı sistemi dönüşümü ise yine aynı mantıkla bu sefer en sağdan başlarak basamak basamak sayının kendisini ve ikinin katlarını çarparak toplarsak bu sefer onlu sayı sistemindeki sonucu bulmuş oluruz. 

![Binary sayı sisteminde bulunan 110101 sayısının ondalık sayı sisteminde karşılığı](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/bin-dec.jpg)

Binary sayı sisteminde bulunan 110101 sayısının ondalık sayı sisteminde karşılığı

### Sayısal Olmayan Veri Türleri Tutumu

Kendimizi bir deniz kenarında hayal edelim. Burada biri bize “yüz” kelimesini söyledi. Aklımıza direkt olarak “yüzmek” eylemi gelir. Öyle değil mi? Peki bir bankaya gittik. Bankada “yüz” denildiği zaman aklımıza sayı gelir veya bir ayna karşısında kendimize yüz dersek organ olan yüz aklımıza gelir. İşte bu da aynı bu şekildedir. Örneğin 65 sayısı binary’de karşılığı 1000001’dir Bu hem 65 sayısını ifade ederken aynı zamanda bir harf olan ‘A’ harfini de hitap edebilir. Bilgisayar bunu çalıştığı ortama göre belirlemektedir. İşte bütün olay bu kadarcık bir örnekle ifade edilebilir. 

### Bilgisayarlarda Verilerin Tutulması

Bilgisayar yapısı itibariyle içerisinde tutulacak veri miktarı sınırlı haldedir. Bu veriler bazı küçük yapı birimlerine ayrılarak bundan en iyi bir şekilde verim alınabilmesi amaçlanır. 

- Bir bilgisayarın en küçük veri birimine bit adı verilir. Bit, 0 veya 1 değerini alabilen bir sayıdır. Bilgisayarda tüm işlemler, bitlerin bir araya gelmesiyle gerçekleştirilir. 8 bit bir araya gelerek bir byte oluşturur ve birçok veri türü, örneğin harfler ve sayılar, bir veya daha fazla byte ile temsil edilir.
- Bir bilgisayarın en küçük veri birimine bit adı verilir. Bit, 0 veya 1 değerini alabilen bir sayıdır. Bilgisayarda tüm işlemler, bitlerin bir araya gelmesiyle gerçekleştirilir. 8 bit bir araya gelerek bir byte oluşturur ve birçok veri türü, örneğin harfler ve sayılar, bir veya daha fazla byte ile temsil edilir.

Bir bit iki farklı değer tutabilir. Bunlar 0 veya 1’dir. Öyleyse biz 1 biti bir kutu gibi düşünürsek ve iki kutuyu yan yana koyarsak 2^2 + 2^2 = 4 farklı değerleri tutabiliriz. 

8 tane kutuyu yan yana koyarsak ise bize 2^8’den 256 bitlik bir alan açılır. Bu 256 bitlik alan 1 byte ifade edilir.

![veri-tutulma.png](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/veri-tutulma.png)

Bu şekilde özetlenebilir. 

### RECURSION NEDİR?

Recursion, Türkçe anlamıyla öz yinelemeli bir çeşit fonksiyondur. Bu fonksiyonda öncelikle bir problemin alt kademelere ayrılarak parça parça çözümlenmesine olanak sağlar. Örneğin Fibonacci sayı dizininden bakalım. Bir fibonacci sayı dizini sayının kendisinden önce iki sayının toplamıyla elde edilir. 0+1=1,1+2=3, 3+2=5 gibi örneklendirebiliriz. Fonksiyon sürekli olarak devam etmektedir. İşte bu tip şeyleri kodumuzda kullanmamız gerektiğinde recursion fonksiyonlarına başvururuz. 

Diyelim ki fibonacci sayı dizini içerisinde ilk 14 fibonacci sayısını yazdıralım:

```java
import java.util.Scanner;

public class fibo {

    public static void main(String[] args) {

        //Creating list

        Scanner scanner = new Scanner(System.in);
        int n1=0,n2=1,n3,i,n;
        System.out.println("Fibonacci dizisinin kaç elemanını listeleyelim: ");
        n = scanner.nextInt();
        System.out.print(n1+" "+n2); // 0,1 yazdıracak

        for (i=2; i<n;i++){ //Recursion function
            n3 = n1+n2;
            System.out.print(" "+n3);
            n1=n2;
            n2=n3;
        }
        System.out.println();
    }
}
```

Burada for döngüsü içerisinde oluşturulan yapı bir recursion fonksiyondur. Sürekli olarak yinelemeli bir şekilde tekrar ederek işlemi gerçekleştirir ve gerekli şartlar sağlandığında işlemi durdurarak sonucu ekrana verir.

Kodumuzu ideye yazıp çalıştırdığımızda şu şekilde bir sonuçla karşılaşmış oluruz.

![Sorun bu şekilde halledilmiş olur.](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/recusion.png)

Sorun bu şekilde halledilmiş olur.

### ARRAY - DİZİ

- Arrays (Diziler) anlam ifade etmesi için birden fazla nesneye ihtiyaç duymaktadır. Mesela şuan Bilgisayar örneğinden ilerlersek; Masaüstü Bilgisayarlar, klavye-mouse-monitör üçlüsünü bir araya getirince bir anlam ifade eder. Herhangi biri olmadan bir işlem yapılması veya bir anlam kazanılması oldukça zordur.
- Arrays, faydası olduğu gibi zararları da vardır. Bilgisayar örneğinden devam edelim. Hali hazırda bulunan klavye, bir mouse ve monitörümüz bulunmakta. Yeni bir monitör alındığında ekstra olarak yeni bir masaya ihtiyaç duyulur. Aynı şekilde klavye ve mouse içinde aynı şeyler geçerli. Bir yerden bir yere taşıma yapılırken zaman kaybına uğranılır.
- Dinamik diziler (Dynamics Arrays) ise yeni bir elemanın için boşta yer tutmasından ötürü oldukça esnektir. Örneğin, mutfak masaları açılır kapanır sürgülü bir yapıda olması dolayısıyla esnektir. Dinamik dizileri de aynı bu şekilde düşünebiliriz. Gerekebilecek alanı tutabilmemize olanak sağlayan bir yapıdadır.
- Dinamik Dizilerin de yine aynı şekilde dezavantajları vardır. Bu dezavantajlardan biri de mutlaktır ki hafızadır. Gereksiz olarak hafızada yer açılan dinamik diziler, hafızaya oldukça fazla yük bindirir. Bu yük bazen öyle bir boyutlara ulaşır ki hem programın esnekliğini ve performansını düşürür hem de çalışırken oldukça fazla yüke sebep olur.
- Dizilerin veya Dinamik Dizilerin avantajı ise birbirine bağımlı öğeleri bir arada tutarak daha kolay erişebilmesine olanak sağlar.

### LINKED LIST - BAĞLI LİSTELER

- Linked Listler (Bağlı Listeler), yan yana zorunluluğu olmadan veri tutmamızı sağlayan yapılardır. Yeni gelen eleman için hafızada yeni bir yer açılmasına gerek yoktur. Array’den farklı olarak veriler hafıza içerisinde farklı yerlere dağılmış olabilir fakat son gelen eleman kendinden önceki elemana adresini bildirmek zorunluluğu vardır.

![Örnekte olduğu gibi, her bir düğüm bir sonrakinin adresini tutar. Her bir önceki eleman sonraki eleman ile bağlıdır.](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/linked_list.png)

Örnekte olduğu gibi, her bir düğüm bir sonrakinin adresini tutar. Her bir önceki eleman sonraki eleman ile bağlıdır.

### LINKED LIST vs ARRAYS

- Linked listlerle Arrays arasında aynı işlemleri gerçekleştirse de izledikleri yöntem birbirinden tamamen farklıdır.

| ARRAY | LINKED LIST |
| --- | --- |
| Array’in herhabgi bir elemanına ulaşmak aynı sürede gerçekleşir. Buna Random Access denilir. | Linked List’de ulaşmak istediğimiz elemana gidebilmek için birbirine bağlı olan elemanları ziyaret etmemiz gerekiyor. |
| Array’ler, sadece eleman tuttuğu için hafızada daha az yer kaplar. | Linked-Listler, eleman ile birlikte adres tuttuğundan dolayı hafızada daha fazla yer kaplarlar. |
| Daha çok statik (Durağan) durumlarda daha fazla performans gösterir. | Ekleme, çıkarmanın fazla olduğu durumlarda linked-list daha fazla performans gösterir. |

### LINKED LIST ELEMAN EKLEME/ÇIKARMA

- Üç elemanlı bir hücre oluşturalım.

![Üç elemanlı bir Linked-List Modeli.](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/ilkad.png)

Üç elemanlı bir Linked-List Modeli.

> ELEMAN EKLEME
> 
- Adresi #12 olan 22 sayısını listeye eklemek istiyoruz.

![22 sayısı #12 lokasyonuna yerleştirildi.](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/eleman-ekleme.png)

22 sayısı #12 lokasyonuna yerleştirildi.

> ELEMAN ÇIKARMA
> 
- Adresi #20 olan 6 numaralı hücresini çıkarmak istiyoruz. Linked-List’te bir önceki elemanın adresini tutuyordu. Yani 7 numaralı hücrede bulunan 6’nın hücre adresini siliyoruz. Yerine #22 numaralı hücrenin adresini yazıyoruz.

![eleman-çıkarma.png](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/eleman-karma.png)

### STACK

- Stack, LIFO (Last in First Out) (En son giren en önce çıkar) mantığına dayanan elemanlar topluluğundan oluşan bir yapıdır. Örnek üzerinden anlatalım. Taşınırken topladığımız koli kutularını düşünelim. İçerisinde kitaplar var ve en, boy olarak koliye tam olarak koyulmaktadır. Mantıken kolinin altı kapalı ve üst üste kitapları koymamız gerekmektedir. Yeni evinizde kitapları koliden çıkarırken en üstten alarak koliyi boşaltırsınız. İşte stack (yığın) aynı mantıkla çalışmaktadır.
- Stacklere eleman eklerken veya çıkartırken bazı methodlar kullanılır. Bunlardan biri push diğeri ise pop’dur.
- ***Push***: Stack’e eleman eklemek için kullanılır. Yani koli örneğinde olduğu gibi koliye en son ve en üste koyduğumuz kitap gibi düşünebiliriz.
- Pop: Stack’ten eleman çıkarmak için kullanılır. Yani koli örneğinde olduğu gibi koliye en son koyulan kitabı veya kolinin üstündeki kitabı kutudan almaktır gibi düşünebiliriz.

![Stack durumunun görselleştirilmiş hali.](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/stack.png)

Stack durumunun görselleştirilmiş hali.

### QUEQUE

- Queque (Kuyruk), FIFO (First in First out) (ilk giren ilk çıkar) prensibine dayanan, girişlerde ve çıkışlarda belirli bir kurala göre çalışan bir yapıdır. Stack’de verdiğimiz örneği queque gibi düşünelim. Önceki örnekte içi kitap dolu bir koli olarak düşünmüştük. Bu sefer bu kolinin altı yırtıldığını varsayalım. Bu sefer o kutu içerisine ilk olarak hangi kitabı koyarsak ilk olarak o çıkacaktır. İşte queque mantığı tamamen budur.
- ***Enqueque:*** Yeni elemanın queque’ye eklenmesi (yani kutuya yeni bir kitap koymak.)
- ***Dequeque:*** Elemanın queque’den çıkarılması (kutudan sırasına göre kitap çıkartmak)

![Queque’nin görselleştirilmiş hali.](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/Adsz.png)

Queque’nin görselleştirilmiş hali.

<aside>
💡 Stack’de de Queque’de orta sıralardan veri çıkarmak mümkün değildir. Stackte ilk koyulan en son çıkarken, Queque’de ilk koyulan ilk önce çıkarılır. Her iki durumda da orta sıralardan veri çekmek mümkün değildir.

</aside>

### HASH TABLE (HASH TABLOSU) NEDİR?

Hash Table (Hash Tablosu), anahtar değerleri birbirinden farklı bir şekilde saklamak için kullanılan bir veri yapısıdır. Key-Value şeklinde de ifade edilir. Hash Table (Hash Tablosu) anahtar-değer ikililerini saklar ve anahtar değerleri ile ilişkili verileri hızlı bir şekilde bulmak için kullanılır. Anahtarlar genellikle benzersiz olur. Hash Tablosu, anahtarlar için bir hash fonksiyonu kullanır ve bu fonksiyon anahtarın hash değerini üretir. Bu hash değeri daha sonra bir dizi veya tablo gibi bir veri yapısında saklanır ve bu diziye hash tablosu denir.

> HASH TABLE ÖRNEKLERİ
> 

Örneğimizde bir hash tablosu kullanarak isimlere karşılık gelen telefon numaralarını saklayacağız. Anahtar değerimiz isimler olacak ve bu isimlere karşılık gelen verilerimiz telefon numaraları olacak.

- Bir Hash Table (Hash Tablosu) oluşturun ve bazı öğeler ekleyin:

```python
phone_book = {'Ahmet': '0532 111 11 11', 'Mehmet': '0543 222 22 22', 'Ayşe': '0533 333 33 33'}

```

- Hash Table (Hash Tablosu) 'phone_book' içindeki öğeleri yazdırın:

```python
print(phone_book)

```

Çıktı:

```python
{'Ahmet': '0532 111 11 11', 'Mehmet': '0543 222 22 22', 'Ayşe': '0533 333 33 33'}

```

- Hash Table (Hash Tablosu) 'phone_book' içindeki bir öğeyi yazdırın:

```python
print(phone_book['Ahmet'])

```

Çıktı:

```python
0532 111 11 11

```

- Hash Table (Hash Tablosu) 'phone_book' içindeki bir öğeyi güncelleyin:

```python
phone_book['Ahmet'] = '0532 444 44 44'
print(phone_book)

```

Çıktı:

```python
{'Ahmet': '0532 444 44 44', 'Mehmet': '0543 222 22 22', 'Ayşe': '0533 333 33 33'}

```

- Hash Table (Hash Tablosu) 'phone_book' içindeki bir öğeyi silin:

```python
del phone_book['Mehmet']
print(phone_book)

```

Çıktı:

```python
{'Ahmet': '0532 444 44 44', 'Ayşe': '0533 333 33 33'}

```

Bu şekilde özetlenebilir.

### HASH FUNCTION

Hash fonksiyonları, bir veri kümesini girildikten sonra onları belirli farklı anlamlara sokan bir fonksiyondur. Örneğin; ‘Elma’ isimli nesnenin ‘1’ sayısına eşit gelmesi gibi düşünebiliriz. Yani bir farklı türde bir nesnenin farklı bir türe karşılık gelmesine olanak sağlayan bir fonksiyondur. Bu fonksiyonun gerçekleşmesi için bazı şartlar vardır. Bunlar;

- Gönderdiğimiz anahtarlar (keys) farklı olmasına rağmen bize aynı sonuçları veriyorsa bu bir hash fonksiyonu değildir.

> Örneğin; ‘Elma’ keywordüne 2 ataması yapıp yine aynı şekilde ‘Armut’ keywordüne 2 ataması yapılırsa bu bir Hash Function değildir.
> 
- Fonksiyona gönderilen anahtarlar aynı fakat sonuçlar farklı ise hash function değildir.

> Örneğin; 5 sayısının “beş” isimli bir wordü varsa sonrasında “five” isimli tekrar bir word tanımlanamaz. Eğer ki ilerleyen zamanlarda inputuna 5 girilirse ve hem “beş” hem de “five” değeri dönerse işte bu hash function olmadığı anlaşılır.
> 
- Hash Table için kullanılan dizinin boyutu verilen sonuçların sayısı kadar olmalı.

> Yani bir hash functionda 0’dan 29’a kadar sayıların tanımlamasını yapılmışsa 30 sayısını input olarak girilmemesi gerekir. Çünkü dizin boyutu geçilmiş olunur.
> 

### HASH COLLISION

Hash Collision, bir hash fonksiyonu tarafından farklı girdilerin aynı hash değerine sahip olması durumudur. Bu durumda, birbirine benzeyen girdilerin hash tablosunda aynı yere yerleşmesi ve kesişen bir hash tablosu indeksi oluşması muhtemeldir. Bu durum, performansı düşürebilir ve hash tablosunun doğruluğunu etkileyebilir. Hash Collision'ın önlenmesi için çeşitli teknikler kullanılır, örneğin zincirleme, açık adresleme ve çarpma azaltma teknikleri gibi.

- Hash Function’lar bazen farklı durumlar için farklı sonuçlar üretmeyebilir. Örnek olarak araçları bir hash function’dan geçirelim. Bu fonksiyonumuz son harflerine göre bir değer atıyor. Örneğin, motor ve tır için aynı değerleri ataması collision’a sebep olur.
- Collision sorunuyla az karşılaşabilmek için kaliteli bir hash function olmalı. Bu sayede verimli bir Hash Table elde edilmiş olunur.
- Çarpışma sayısı arttıkça aradığımız şeyi bulma hızımız düşer.

### ALGORİTMA ANALİZİ

Algoritma analizi, var olan kaynaklara göre en uygun algoritmayı seçmek için uygulanır. Şöyle örneklendirebiliriz.

- A noktasından B noktasına gitmek istediğimizi varsayalım. Birden çok yolla gidebiliriz. Süre, yolun ücreti… gibi parametreleri dikkate alarak en iyi ve en uygun yolu seçmiş oluruz.
- Algoritma için de bu örnek geçerlidir. Bir problemi çözen birden fazla yol olabilir. İşte biz bu elimizdeki yollara göre en uygununu seçmek için uğraşmalıyız. Tabii ki burada ise karşımıza üç tane parametre çıkar. Bu parametreler: Programcının harcadığı süre, kullanılan hafıza, programın çalışma zamanıdır.
- Algoritma analizimiz analizi yaptığımız bilgisayarın özelliklerinden tamamen bağımsız olmalıdır çünkü bu şekilde doğru bir algoritma analizi genellemesi pek mümkün değildir.
- Örnek olarak vermek gerekirse kendi bilgisayarımızda A algoritmasını çalıştırdık ve 3 dakika boyunca bu algoritma çalıştı, başka birisi B algoritmasını denediğini ve 4 dakika da çalıştığını fark etmiş. Bunların hangisini seçmek daha mantıklı?
- Burada bir kıyas yapılamaz dediğimiz gibi bir algoritmanın çalışma süresi hangisinin daha iyi çalışması kıyasında iyi bir kıstas değildir. Örneğin onun bilgisayarı daha hızlıyken bizim bilgisayarımız daha hantal olabilir. Bu yüzden dolayı bu şekilde kıyas yapmak doğru değildir.
- Aynı şeyi programlama dili içinde geçerlidir. Belki A algoritması daha esnek bir programlama diliyle yazılırken B algoritması daha hantal ve yoğun bir dille yazılmış olabilir. Bundan ötürü de bu şekilde bir kıyas yapmamız pek olanaklı bir şey değildir.

<aside>
💡 Algoritma analizleri, bilgisayarın özelliklerinden ve programlama dillerinden bağımsız bir şekilde yapılmalıdır.

</aside>

> Bu Analizi Nasıl Yapabiliriz ?
> 

1. **Çalışma Süresi:** Programlama dilinden ve kullanılan bilgisayarın özelliklerinden etkilenebilir. **Bu yüzden dolayı genelleme yapılamaz.**
2. **İfade Sayısı:** Programda kaç tane ifade çalıştığı (toplama, çıkarma, veri çekme vs.). Programlama diline göre aynı işlem için çalışan ifade sayısı değişebilir. **Bu yüzden dolayı genelleme yapılamaz.**
3. **Büyüme Hızı (Rate of Growth):** **Programa verilen girdi (input) boyutu ile çalışma zamanı fonksiyonel olarak birbirine bağlarsak bilgisayarlara ve programlama dillerine bağlı olmayan bir yapı oluşturmuş oluruz.**

### RAM MODELİ

- Bir algoritmayı farklı cihazlarda denemek bize mantıklı bir çözüm yolu sunmuyordu. Çünkü kaynaklar donanım performansı gibi birçok etkenden bu sonuç etkilenebiliyordu. Bu yüzden dolayı bu probleme çözüm getirebilmek için hayali bir bilgisayar düşünelim.
- Bu bilgisayara RAM (Random Access Machine) diyoruz. RAM, algoritmalar arasındaki farkları belirlemek için kullanacağımız bir araçtır. Bunu bilgisayarlarımızda bulunan donanım RAM’lerle karıştırmayalım. Bilgisayarlarda kullanılan donanım Random Access Memory’dir.
- Bu hayali makinede her işlem birim zaman alır. Döngüler, kaç defa işlem yapıyorsa, (işlem sayısı * kaç kere tekrar edeceği) kadar birim zaman alır. Toplama, Çıkarma, and, olur gibi aritmetik işlemler 1 zaman alır.
- Buna göre algoritmamızı analiz ederek, en uygun ve efektif algoritmayı hiçbir parametreye takılmadan sınayabiliriz.

### TIME COMPLEXITY

Algoritmanın verimli olması için bazı kurallar vardır. Kullanacağımız algoritmayı analiz etmek istiyoruz. Problem aynı olsa da farklı inputlar için algoritmamız farklı performans senaryoları üretebilir.

- Diyelim ki bir kelimenin anlamını sözlükte arıyoruz. Arama için sayfalara tek tek bakıyoruz. Burada algoritmamız sayfalara tek tek bakmak, inputumuz ise aradığımız kelimedir.
- Aradığımız kelimenin boyutu aynı olsa da hangi harfle başladığına göre yapacağımız işlem (yani sayfa değiştirme) sayısı değişebilir. Yani girdimiz algoritmamızın yapacağı işlem sayısını değiştirebilir.
- Bu yüzden analizimi 3 ana başlık altında yapabiliriz: **Worst Case, Avarage Case, Best Case.**

1. **Worst Case:** Vereceğimiz inputun algoritmamızı en yavaş (en fazla işlem yapacak) şekilde çalıştırdığı durum. Aradığımız kelimenin “z” ile başlaması örneği gibi. 
2. **Avarage Case:** Genel olarak beklenilen durum. Gerçek hayatta da karşılaşılan durum gibi düşünebiliriz.
3. **Best Case:** Vereceğimiz inputun algoritmamızı en hızlı şekilde çalıştırdığı durumdur.

<aside>
💡 Algoritmamızın çalışmasını en iyi yansıtan avarage case’dir. Ama bu durumu analiz etmek diğerlerine çok daha zordur. İnputların geldiği dağılımı bilip ona göre analiz etmek daha mantıklıdır.

</aside>

### BIG IN NOTATION

- Big O notation, algoritmanın çalışma süresini veya hafıza kullanımını ifade etmek için kullanılan bir gösterimdir. Algoritmanın performansını analiz etmek için kullanılır ve algoritmanın verimliliği hakkında bilgi verir.
- Big O notation, en kötü durumu ifade eder ve algoritmanın işlem süresinin veya hafıza kullanımının büyüme hızını temsil eden bir fonksiyonla temsil edilir. Bu gösterim, algoritmanın girdi boyutu büyüdükçe performansının nasıl değiştiğini anlamamızı sağlar.
- Örneğin, bir algoritmanın Big O notationı O(n) ise, algoritmanın işlem süresi veya hafıza kullanımı girdi boyutuyla doğru orantılı olarak büyür. Big O notation, algoritmaları karşılaştırmak, daha verimli algoritmalar tasarlamak ve performans analizi yapmak için kullanılır.

İki farklı arama yöntemi düşünelim:

- A, algoritması tek tek sayfalara bakıyor.
- B algoritması sözlüğün alfabetik sıralanmış olduğundan yararlanarak en başta en ortadaki sayfayı açıyor. Eğer bu sayfadaki harfler aradığım kelimeden alfabetik olarak daha ilerideyse sol tarafa aynısı yoksa sağ tarafa aynısını yapıyor.
- Bu şekilde problem her seferinde yarı boyutuna inmiş oluyor.

- Diyelim ki 1000 sayfalık bir sözlüğümüz olduğunu varsayalım. A algoritması en kötü durumda (hipotetik olarak aradığımız şeyin en sonda olduğunu varsayarsak) kaç işlem yapması gerekir. 1000 öyle değil mi?
- Peki B algoritmasını düşünelim. Bu algoritmamız her seferinde bir kısmı yarıya bölerek gidiyordu. B algoritması kaç işlem yapar? 2^n = 1000’se n değeri 9 ile 10 arasında bir sayıdır. yani 10 işlem gerçekleştirmiştir.

> Bu örneklere bakarak B algoritmasının A algoritmasından  daha hızlı olduğunu görebiliyoruz. 100/10’den yaklaşık 100 katı daha hızlı olduğunu diyebilir miyiz ? Bunu genel olarak kabul edebilir miyiz?
> 

- Pek diyemiyoruz. Şöyle düşünelim: Sözlüğümüz 10.000 elemanlı olsa, A algoritması en kötü durumda 10.000 işlem yapar ama B algoritması 2^n=10.000’den yaklaşık 13 işlem yapar. 10000/13’den yaklaşık olarak 770 kat daha hızlı gözüküyor.
- Bu yüzden algoritmaların sadece 1 input boyutuna göre karşılaştırmalarına bakıp karar veremeyiz. Genel yapısını bize gösterecek bir analize ihtiyacımız vardır. İşte Big o Notation burada devreye girmektedir.
- Big o Notation algoritmanın ne kadar sürede çalışacağını söylemez. Bize algoritmanın çalışma zamanının input boyutu ile nasıl değişeceğini söyler.
- Mesela sözlük örneğimizde input size’ına n dersek, algoritmamızın en kötü durumda n işlem yaptığını söyleyebiliriz. İnputun n boyutunda olunca çalışma süreminde en kötü durumda 0(n) diye gösterebiliriz. Aynı şekilde B algoritması için 0(logn)’dir.
    
    ![big-o-grafik.png](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/big-o-grafik.png)
    

- Big O Notation’da yapılacak toplam işlem sayısının input size ile nasıl scale olacağına bakıyoruz. Benim için bu fonksiyonun yapısı daha önemlidir.
- İşlem sayısı input size ile linear mı artış sağlamış, karesini alarak orantısal mı artış sağlıyor yoksa logaritmik mi artış mı söz konusu bunu vurgulamaktadır.
- Karakteristiği önemsediğimiz için 2n işlem yapan algoritmaya da n işlem yapan algoritmaya da 0(n) diyoruz. İkisi de linear bir şekilde artış sağlar. Big o Notation bakarken katsayılar önemli değildir.

<aside>
💡 Analizimiz sonucunda 2n^2 + 3n + 2 gibi bir şey çıktı diyelim. Burada n sayısı büyüdükçe, 3n+2’nin etkisi 2n^2’in yanında önemsiz kalır. O yüzden dominant olanı Big o Notation olarak yazabiliriz 0(n^2).

</aside>

---

### SORTING NEDİR?

Sorting, bir veri kümesindeki öğeleri belirli bir düzene göre düzenlenmesi veya sıralanması işlemidir. Bu sıralama işlemi verileri daha düzenli hale getirir ve belirli analiz işlemleri için o verilerin kullanımını daha da kolaylaştırır. Farklı karmaşık senaryolarda verilerin sıralı ve düzgün bir şekilde durması çalışmayı daha düzgün hale getirir. Dört farklı sıralama işlemi vardır. 

- ***Searching:*** Arama işlemi, bir veri kümesindeki belirli bir öğeyi bulma işlemidir. Örneğin elimizde büyük bir sayı verisini büyükten küçüğe sıralamak gibi düşünebiliriz.

![searchıng.png](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/searchng.png)

- ***Closest Pair:*** Birbirine yakın sayıları kendi içerisinde gruplandırma yöntemidir. Bu şekilde aranan sayının hangi gruba ait olduğuna bakarak daha kolay bir arama efektif ve esnekliği sağlar.

![closest_pair.png](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/closest_pair.png)

- ***Mode Bulma:*** Eleman dizisini search ettikten sonra aynı olan elemanları sayarsan daha kolay bir mode bulabiliriz. Mode alma işlemi, bir veri grubu içerisinde en çok tekrar eden veriyi bulma anlamına gelir.
- ***Aynı Eleman Kontrolü:*** Bir veri grubu örüntüsü içerisinde kaç tane aynı eleman varsa sayısını öğrenebiliriz. Bu işlem bir veri grubunda hangi verinin daha çok tekrar ettiğini bulmamıza olanak sağlayabilir.

### SELECTION SORT

Seçim sıralaması (Selection Sort), bir diziyi sıralamak için kullanılan basit bir sıralama algoritmasıdır. Temel mantığı, dizideki en küçük veya en büyük öğeyi bulup, bu öğeyi dizinin uygun konumuna taşımak ve bu işlemi dizinin tüm elemanları için tekrarlamaktır. Bu süreç, bir öğenin doğru konumuna yerleştirilene kadar devam eder.

Aşağıda Selection Sort algoritmasının adımları kısaca açıklanmıştır:

1. Dizi üzerinde bir döngü başlatılır.
2. Dizinin başlangıç indeksindeki öğe en küçük (veya en büyük) öğe olarak kabul edilir.
3. Dizinin geri kalan bölümünde bu öğe ile karşılaştırılır ve daha küçük (veya daha büyük) bir öğe bulunursa bu öğe ile değiştirilir.
4. Dizinin uygun konumuna taşınan öğe bir sonraki indekse ilerletilir.
5. Döngü, dizinin sonuna kadar devam eder. Her adımda bir öğe sıralanmış olur.
6. Dizi tamamen sıralanana kadar bu işlem tekrarlanır.

Selection Sort, küçük dizilerde veya sıralanacak veri miktarı çok fazla olmadığında kullanılabilecek bir sıralama algoritmasıdır. Ancak büyük veri setleri için verimli değildir çünkü en kötü durumda (dizi ters sıralı ise) n^2 karşılaştırma yapar, n ise dizinin eleman sayısını temsil eder. Daha büyük veri setlerinde daha etkili sıralama algoritmaları tercih edilir.

Örnek olarak bir 65,27,13,23,10 sayı dizinimizi selection sorta göre sıralayalım.

1. Adım: İlk adımda dizinimizin en küçük sayısını 65 olarak kabul ediyoruz. Sonrasında dizinin geri kalan elemanlarıyla kıyaslıyoruz.
    
    
    dizi: 65,27,13,23,10 (en küçük 65)
    

1. Adım: dizinin en geri kalan elemanlarıyla karşılaştırdığımızda, 10 daha küçük olduğu için 10 sayısını en küçük olarak kabul ediyoruz.

dizi: 65,27,13,23,10 (en küçük 65)

1. Adım: Şimdi, dizinin en küçük elemanıyla dizinin ilk elemanının yerini değiştireceğiz.

dizi (yer değiştirildi): 10,65,27,13,23

1. Adım: Dizinin ikinci elemanından başlayarak tekrardan dizinin en küçük elemanını buluyoruz. Bu sefer 13 en küçük olarak kabul edilir.

dizi: 10,65,27,13,23 (En küçük: 13)

1. Adım: Dizinin en küçük elemanıyla ikinci elemanını yer değiştireceğiz.

dizi (yer değiştirildi): 10,13,27,23,65

Bu şekilde adımlar devam ettirilerek [10,13,23,27,65] dizini elde edilir. Bu selection sort’un big o notation gösterimi ise O(n^2) şeklindedir.

### MERGE SORT

Insertion sort’da Big-O gösteriminden input’umuz arttığında n^2 olduğundan çalışma zamanı artıyordu.

- Peki bunu daha hızlı hale getirmek ve daha hızlı sıralama yapmak mümkün mü diye soracak olursak bunu merge sort ile daha kolay hale getirebiliriz.
- Merge Sort, bir sayı dizinini her seferinde ikiye ayırarak en küçük haline getirip sonrasında kıyaslama işlemidir.

![Bir Merge Sort İşlemi Görüntüsü](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/merge-sort-example_0.png)

Bir Merge Sort İşlemi Görüntüsü

- Örneğimizde bulunan bu sayı dizini öncelikle iki gruba ayrılır.

<aside>
💡 Sayı dizinimizde eğer ki eleman sayısı olarak tek kalsaydı bu sefer birini diğerinden bir fazla olarak iki gruba ayırırdı. (Örneğin: 7 elemanlı bir diziyi 4+3 olarak bölerdi.)

</aside>

- İlk bölme işlemi gerçekleştikten sonra bölünen gruplar tekrardan kendi arasında bölünerek parçalara ayrılır. Ta ki tek bir parça kalana kadar. (Yukarıda bulunan görselde 6,5,12,10,9,1 kutuları)
- Sonrasında kıyaslama işlemine geçilir. Ayrılan her kutu diğer kutularla kıyas edilir. (Örneğin sol tarafta bulunan 6 ve 5,12 gruplarında öncelikle birinci grup yani 6 seçilir sonrasında ikinci grup olan 5,12 ile sırasıyla kıyas edilir.) (6 mı büyük 5 mi cevap 5 o zaman beşi yazdık sonrasında 12’yi sonuna ekle gibi düşünebiliriz.)
- En sona ayrılan gruplar da gruplar içindeki en soldaki elemandan kıyas edilerek tek bir grup haline getirilir. (5’mi küçük 1’mi 1 o zaman en başa bir yazalım. sonra 5 mi küçük 9 mu 5 daha küçük o zaman onu ikinciye yazalım… diye takip edilir.)
    
    <aside>
    💡 Merge Sort her seferinde ikiye ayrılma yaptığından dolayı Time Complexity’si “O(n)” şeklindedir. Big-O Notation gösterimi ise “2^x = n’den logn = x” şeklinde tanımlanır.
    
    </aside>
    

<aside>
💡 ***Insertion sort’ta time complexity n^2 olduğundan ötürü çalışma zamanımız artıyordu. Merge sort’da ise nlogn olduğu için açık ara performans olarak daha iyidir diyebiliriz.***

</aside>

### QUICK SORT

Quick Sort, bir dizi içindeki öğeleri sıralamak için kullanılan hızlı ve yaygın olarak kullanılan bir sıralama algoritmasıdır. Bu algoritma, bir pivot elemanı seçer ve bu pivot elemanını kullanarak diziyi ikiye böler. Daha sonra, pivot elemanının solunda ve sağında bulunan elemanları pivot elemanına göre sıralar. Bu işlem, alt dizelerin sıralanması tamamlanana kadar tekrarlanır.

Quick Sort algoritmasının adımları şu şekildedir:

1. Bir pivot eleman seçilir. Bu pivot eleman, dizinin herhangi bir elemanı olabilir.
2. Pivot elemanını kullanarak diziyi ikiye böleriz. Sol tarafta pivot elemanından küçük veya eşit olan elemanlar, sağ tarafta ise pivot elemanından büyük olan elemanlar yer alır.
3. Her iki alt diziyi ayrı ayrı sıralamak için Quick Sort'u tekrar uygularız.
4. Alt dizelerin sıralanması tamamlandığında, bu alt dizileri birleştirerek tam sıralanmış bir dizi elde ederiz.

<aside>
💡 Quick Sort algoritması, verileri hızlı bir şekilde sıralamak için etkili bir yöntemdir. Ortalama durumlarda, Big O gösterimi O(n log n)'dir. Ancak en kötü durumda, yani pivot elemanı her seferinde en küçük veya en büyük eleman olarak seçildiğinde, Big O gösterimi O(n^2)'dir. Bu nedenle, pivot elemanının seçimi algoritmanın performansını etkileyen önemli bir faktördür.

</aside>

Quick Sort, hızlı ve verimli bir sıralama algoritması olmasına rağmen, büyük veri kümeleri için diğer sıralama algoritmaları daha uygun olabilir. Ancak, orta büyüklükteki veri kümeleri için hala tercih edilen bir algoritmadır.

![Quick Sort Görüntüsü](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/quicksort-in-javascript-1.jpg)

Quick Sort Görüntüsü

1. İlk işlem olarak dizinimizde 2 pivot olarak seçildi. Sonrasında ikiye göre bölmeler başlayacak.
2. 2’den küçük sayıları grafiğin soluna yazarken 2’ye eşit veya 2‘den büyük sayıları grafiğin sağına yazarak iki ayrı grup elde ederiz.
3. Sonrasında elde edilen iki gruptan da tekrardan pivotlar seçmemiz gerekir yine aynı işlemi tekrar ederek ilerleriz.
- Bu şekilde parça parça ayrılmış bir düzenleme şekli görürüz. Burada pivotu istediğimiz gibi seçebiliriz. (ister en sağ, ister en sol, istersen herhangi bir yerden) burada önemli olan nokta pivotu iyi seçmemiz gerektiğidir.
- Çünkü pivot iyi seçilmezse yukarıdan aşağıya doğru yapılan işlem sayısı artacağı için derinlik artar ve bu derinlik demek time complexity’sini her seferinde n ile çarpabiliriz diye düşünebiliriz. Bu da big-o notation gösterimini ***n.O(n) = O(n^2) olarak gösterir. (worst case)***
- Diğer bir nüans ise burada her seferinde ikili gruplara ayırdığımız için (n-1) şeklinde bir ayırım söz konusu olduğunu söyleyebiliriz. Yani ***2^x = n’den logn (avarage case)*** gibi bir gösterime sahip olur. Ayrıca katsayısı merge sorttan az olduğu için daha hızlı bir yapıya sahip olduğunu söyleyebiliriz.

---

## SEARCHING NEDİR ?

- Günümüzde veriler gittikçe artan bir hal almaktadır. Ortalama her bir insanın bir telefon veya bir bilgisayar kullandığını varsayarsak milyonlarca alan kaplayan devasa bir veri kümesinden bahsediyoruz. Arama algoritmaları ise bu milyonlarca veriler arasından asıl aradığımız veriyi binlerce veri setleri arasından araması anlamına geliyor. Tabi ki bunu en hızlı şekilde nasıl yapabilir konusu da oldukça önemlidir.

### LINEAR SEARCH

Arama algoritmaları arasında en ilkel olanıdır. Aranan veriye göre veri setleri teker teker dolaşılır ve kıyaslama yapılarak bu veri setinde aranan veri bulunur.

- Örnek olarak elimizde [10,2,3,5,90] adı altında bir veri setimiz olsun. Bu veri seti içerisinde ise 3 verisini arayalım.
- 3 sayısını öncelikle veri setinin en solundaki sayıyla kıyaslayalım. 10 ve 3 birbirine eşit mi? Hayır. O zaman devam edelim.
- Yine aynı şekilde bu sefer 10 sayısının yanındaki diğer veriyle yani 2’yle kıyaslayalım. Veriler birbirine eşit mi? Hayır. O zaman devam edelim.
- Aynı döngü içerisinde bu sefer 2 sayısının yanındaki diğer veriyle yani 3 ile devam edelim. Veriler birbirine eşit mi? Evet. O zaman linear arama fonksiyonumuz bitmiştir.

Linear search dediğimiz gibi oldukça ilkeldir ve gerçek hayatta böyle bir veri setiyle sürekli karşılaşamayacağımızı düşünelim. Belki elinizde on bin adet veri bulunan bir veri seti hayal edin ve aradığımız verinin bu veri seti içerisinde en sonda olduğunu düşünün. Bu oldukça yoğun bir arama şeklidir. Hem de bu şekilde veri setinin en sonuna kadar gittiğimiz için de Time Complexity’si ise O(n) olarak gösterilir. ***Genel anlamda aranan veri, veri setinin en sonda olması durumunda Big-O-Notation’i O(n)’dir.***

### BINARY SEARCHING

Binary Search, bir sıralı veri kümesinde hızlı bir arama algoritmasıdır. Bu algoritma, veri kümesini ortadan ikiye böler ve aranan veriyi ortanca elemanla karşılaştırır. Eğer ortanca eleman aranan veriye eşitse, arama işlemi tamamlanır. Eğer ortanca eleman aranan veriden küçükse, arama işlemi ikinci yarıda tekrarlanır. Eğer ortanca eleman aranan veriden büyükse, arama işlemi ilk yarıda tekrarlanır. Bu işlem, aranan veri bulunana kadar veya veri kümesi tamamen tükenene kadar tekrarlanır.

Örneğin, sıralı bir veri kümesi olan [2, 5, 10, 15, 20, 25, 30] üzerinde binary search yapalım. Aradığımız veri 15 olsun.

1. İlk olarak veri kümesinin ortanca elemanı olan 10 ile aranan veriyi karşılaştırıyoruz.
2. 10, aranan veriden küçük olduğu için arama işlemi ikinci yarıda devam edecek.
3. İkinci yarıdaki veri kümesi olan [15, 20, 25, 30] üzerinde aynı işlemi tekrarlıyoruz.
4. Ortanca eleman olan 20 ile aranan veriyi karşılaştırıyoruz.
5. 20, aranan veriden büyük olduğu için arama işlemi ilk yarıda devam edecek.
6. İlk yarıdaki veri kümesi olan [15] üzerinde aynı işlemi tekrarlıyoruz.
7. Ortanca eleman olan 15, aranan veriye eşit olduğu için arama işlemi tamamlanır.

<aside>
💡 Binary Search algoritması, her adımda veri kümesini yarıya indirdiği için hızlı bir arama yöntemidir. Time Complexity'si O(log n) olarak gösterilir. Ancak bu yöntem, veri kümesinin sıralı olmasını gerektirir. Ayrıca, veri kümesinin sıralı olduğu durumlarda en etkili şekilde çalışır.

</aside>

![Binary Searching Görseli](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/binarySearching.png)

Binary Searching Görseli

1. Bu görselde 3’e low, 14’e mid, 52’ye ise high adı verilir. Örneğin burada 9 sayısını aradığımızı varsayalım.
2. Buradaki veri setini Binary Searching sıralı olarak kabul ettiği için en orta noktası olan 14 sayısını seçti.
3. Aradığımız sayının 9 olduğunu biliyoruz. O zaman 14’den büyük diğer verilere bakmamıza gerek bile yoktur. Çünkü aradığımız sayı 14’den küçük olur. Bu şekilde problemin yarısını egale ettiğimiz için n sayılı bir veri seti olduğunu varsayarsak n / 2 olmuş oldu.
4. Sonrasında bölmüş olduğumuz ve sayımızın bulunduğu veri setinde tekrardan bir mid bulmamız gerekir. Bu midi 5 olarak seçtik yine aynı şekilde 3 low olarak kalmaya devam ederken bu sefer high 9 olmuş oldu.
5. Aradığımız sayı yine 5 sayısından büyük olduğu için ve orada sadece 9 kaldığı için aradığımız sayıyı bulmuş oluruz. 

<aside>
💡 Tekrar etmekte fayda var. Binary Search sıralı bir veri setinde çalışmaktadır. Sıralı bir veri setinde verileri sürekli olarak yarıya indirdiği için oldukça hızlı bir arama yöntemidir.

</aside>

### BINARY SEARCH TREE

Binary Search Tree (BST), düğümlerin birbirleriyle ilişkilendirildiği bir ağaç yapısıdır. Her düğüm, sol ve sağ alt ağaçlara sahip olabilir ve bu alt ağaçlar da BST yapısını takip eder.

BST, her düğümdeki değerlerin, sol alt ağaçtaki düğümlerin değerlerinden küçük, sağ alt ağaçtaki düğümlerin değerlerinden büyük olduğu bir sıralama düzenine sahiptir. Bu özelliği sayesinde, bir elemanın var olup olmadığını veya belirli bir değeri içeren düğümü hızlı bir şekilde bulmak için kullanılabilir.

BST'nin temel işlemleri şunlardır:

- Ekleme (insertion): Bir değeri ağaca eklerken, uygun konuma yerleştirilir.
- Arama (search): Bir değerin ağaçta olup olmadığını kontrol eder ve varsa düğümü bulur.
- Silme (deletion): Bir değeri ağaçtan kaldırır.

BST yapısı, verilerin hızlı bir şekilde eklenebilmesi, aranabilmesi ve silinebilmesi için etkili bir veri yapısıdır. Ayrıca, verilerin sıralı bir şekilde tutulmasını sağlar.

<aside>
💡 BST'nin Time Complexity'si, ağacın dengeli olup olmadığına bağlı olarak değişebilir. Eğer BST dengeliyse, yani her seviyede yaklaşık olarak aynı sayıda düğüm varsa, Time Complexity O(log n) olur. Ancak, BST dengesizse ve tek bir dalın üzerine yoğunlaşmışsa, Time Complexity O(n) olabilir.

</aside>

![Binary Search Tree Görüntüsü](Algoritma%20ve%20Veri%20Yap%C4%B1lar%C4%B1%209274c78fe9914a9cbd691b991edae713/binary-search-tree.png)

Binary Search Tree Görüntüsü

BTS’ler bir sayının konumuna büyüklüğüne veya küçüklüğüne göre sağına veya soluna yerleştirilerek gelir. Burada sayıdan küçükse sağına büyükse soluna yazılır ve bu sürekli olarak dağılarak devam eder.

<aside>
💡 BTS’ler Linked Listlerde olduğu gibi bana üç sayısını getir veya beş sayısını getir gibi bir çalışma mantalitesi yoktur. Kısaca Random Access yapamazlar.

</aside>