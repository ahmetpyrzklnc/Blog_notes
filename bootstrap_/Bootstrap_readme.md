# Bootstrap

### ***CONTAİNER YAPISI***

Container kelime anlamıyla tutucu anlamına gelir. Bir web sitesinde belirli resimleri veya butonları bir alan açarak içine yerleştirerek sayfanın sağından ve solundan boşluk bırakarak yazmamıza olanak sağlar. 

Sayfanın sağından solundan üstünden veya altından boşluk bırakarak iç kısma yerleştirmeye container derken, sayfanının tamamını kaplayacak şekilde container yapılarına “container fluid” yani akışan container denilir.

---

### GRID veya IZGARA YAPISI

Bootstrap’te ızgara yapıları, tasarımları bir düzen içerisinde hayali çizgiler doğrultusunda oluşturarak yapılır. Bunun örneklerine [https://960.gs/](https://960.gs/) sitesinden öğrenebilirsin. Bunun dışında bootstrap’te en çok kullanılan ızgara yapısı, 12’lik ızgara yapısıdır. Bu yapılar çeşitli şekillerle kullanılabilmekle birlikte 4-4-4 şekilde veya 2-2-2-2-2-2 şekilde veya 6-6 şeklinde hayali çizgiler kullanılarak yapılmaktadır. Dediğimiz gibi bu çizgiler tamamen hayalidir. Oluşturulan bir web sitesinin tasarımının olabildiğince göze hitap olabilmesi için oluşturulur. 

Son olarak bir web sitesinde sadece tek tip bir ızgara yapısı kullanılmaz. Örneğin sayfanın başında 6-6 gibi bir ızgara yapısı kullanılırken alt kısmında 4-4-4 şeklinde ızgara yapısı da kullanılabilir. 

12’lik ızgara yapısının dışında 16’lık ızgara yapısı da bulunur. Ama ona şuanlık değinmeyeceğim çünkü bootstrap kendini 12’lik sistemde tanımlamaktadır.

Sadece bir container’ı tek bir 12’lik sisteme bölünmesiyle birlikte işlem tamamlanmayabilir. Bölünen kısımda tekrardan bir 12’lik grid yapısı oluşturulabilir. Örneğin bir container’ı 12’li grid yapısına 8-4 olarak böldüğümüzü düşünelim. Sonrasında bu bölünen parçalardan biri olan 8’lik bölümü ise kendi içerisinde 12’i parçaya ayırabiliriz. Yani container’ı içten içe bölünmeler gerçekleştirebiliriz.

|  | extra small >576px | Small≥ 576px | Medium ≥ 768px | Large ≥992px | X-Large ≥ 1200px | XX-Large ≥ 1400px |
| --- | --- | --- | --- | --- | --- | --- |
| .container | 100% | 540px | 720px | 960px | 1140px | 1320px |
| .container-sm | 100% | 540px | 720px | 960px | 1140px | 1320px |
| .container-md | 100% | 100% | 720px | 960px | 1140px | 1320px |
| .container-lg | 100% | 100% | 100% | 960px | 1140px | 1320px |
| .container-xl | 100% | 100% | 100% | 100% | 1140px | 1320px |
| .container-xxl | 100% | 100% | 100% | 100% | 100% | 1320px |
| .container-fluid | 100% | 100% | 100% | 100% | 100% | 100% |

### GRID SİSTEMİ

gridleri belirli aralıklarla istediğimiz bir şekilde bölümleme yapabiliriz. Bunlar için aşağıdaki kodlara bakalım:

```html
<div class="container">
      <div class="row">
        <div class="col-sm-6 col-md-4 col-lg-3 col-xl-2 bg-primary">Lorem, ipsum dolor</div>
        <div class="col-sm-6 col-md-4 col-lg-3 col-xl-2 bg-secondary">Architecto, nulla aliquam.</div>
        <div class="col-sm-6 col-md-4 col-lg-3 col-xl-2 bg-info">Minima, minus exercitationem!</div>
        <div class="col-sm-6 col-md-4 col-lg-3 col-xl-2 bg-danger">Eveniet, mollitia iste.</div>
        <div class="col-sm-6 col-md-4 col-lg-3 col-xl-2 bg-warning">Ut, et blanditiis?</div>
        <div class="col-sm-6 col-md-4 col-lg-3 col-xl-2 bg-success">consectetur adipisicing.</div>
      </div>
    </div>
```

Burada “col-sm-6” özelliği ekstra küçük olan 12’li grid yapısını 6-6 olarak iki parçaya böler. Program büyük ekrana geçtiği zaman ekranı 6-6 olarak yan yana yazmaya başlar.

“col-md-4” özelliği ise medium tip ekranlarda grid yapısını 4’lü olarak böler. 

“col-xl-2” özelliği ise xl tip ekranlarda grid yapısını 2’li olarak böler. 

diğerleri ise renk özelliğidir.

İşte responsive tasarım bu şekilde oluşturulur. Daha fazla anlatım için [linke git](https://getbootstrap.com/docs/4.6/layout/grid/).

### ROW BLOKLARI

Rowlar, belirli alanları tekrar tekrar bölmemize olanak sağlayan bir yapıdır. Örneğin 8’ye ve 4’e böldüğümüz bir alan düşünelim. Sonrasında 8’li olan bu alanı kendi içerisinde de farklı sayılara bölmek gibi bir imkanımız olabilir.

Kodlara bakalım:

```html
<main class="container mt-3"> <!-- Articles -->
    <div class="row">
        <section class="col-sm-8">
          <article class="row mb-3">
            <div class="col-sm-8">
              <h2>Lorem ipsum dolor sit.</h2>
              <p>
                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti, quibusdam!
              </p>
            </div>
            <div class="col-sm-4">
              <img class="w-100" src="https://picsum.photos/id/22/400/300" alt="Article">
            </div>
          </article>
          <article class="row mb-3">
            <div class="col-sm-8">
              <h2>Lorem ipsum dolor sit.</h2>
              <p>
                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti, quibusdam!
              </p>
            </div>
            <div class="col-sm-4">
              <img class="w-100" src="https://picsum.photos/id/23/400/300" alt="Article">
            </div>
          </article>
          <article class="row mb-3">
            <div class="col-sm-8">
              <h2>Lorem ipsum dolor sit.</h2>
              <p>
                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti, quibusdam!
              </p>
            </div>
            <div class="col-sm-4">
              <img class="w-100" src="https://picsum.photos/id/24/400/300" alt="Article">
            </div>
          </article>
        </section>
        <aside class="col-sm-4 bg-secondary"> <!--Burası bir navigasyondur-->
          <ul>
            <li>Lorem, ipsum.</li>
            <li>Neque, officiis?</li>
            <li>Deserunt, ratione.</li>
            <li>Quasi, ex.</li>
          </ul>
        </aside>
    </div>
  </main>
```

Burada yapılmak istenen şudur: İlk olarak article olarak 8’li bir alanı oluşturmak sonrasında yanına navigasyon olarak 4’lü bir yapı oluşturmak. En sonunda ise bu 8’li article’ı kendi içerisinde tekrar 8’li ve 4’lü olmak üzere ikiye bölmek. İstenen tam anlamıyla budur.  

### Bootstrap - Renk Paletleri

Bootstrap’te renk paletleri kendiliğinden tanımlanmıştır. Primary- danger vs gibi tanımlamalar yapılan Bootstrap’te ola ki renkleri değiştirme gibi bir senaryo oluşturulduğunda Bootstrap’in kendi dosyasını indirerek kendi renk paletleri uygulama imkanı sunulmuştur.

Bootstrap’te renklere [buradan](https://getbootstrap.com/docs/4.6/utilities/colors/) ulaşabilirsin.

### Bootstrap - Tipografi Yapısı

Bootstrap’te aynı renklerde olduğu gibi yazı tipleri, listeler gibi özellikler de kendiliğinden tanımlanmıştır. Üzerinde değişiklik yapmaya gerek yok niteliğindedir. Çünkü hepsi birer standarttır. 

Bootstrap’te Tipografi yapılarına [buradan](https://getbootstrap.com/docs/4.6/content/typography/) ulaşabilirsin.

### Bootsrap - Margin ve Padding

Bootstrap’te marginler (kutu dışı) ve padding (kutu içi) yer ayarlamaları belirli bir standarta koyulmuştur. Bu standart listesi şu şekildedir:

m-      ⇒ margini ifade eder.

p-      ⇒ paddingi ifade eder.

- `t` - harfi  `margin-top` ve `padding-top` anlamına gelir.

> “top, üst demektir” kutulara üstten boşluk verir veya ayarlama yapar.
> 
- `b` - harfi `margin-bottom` ve `padding-bottom` anlamına gelir.

> “bottom, aşağı demektir. kutulara aşağıdan boşluk verir veya ayarlama yapar.
> 
- `l` - harfi `margin-left` ve `padding-left` anlamına gelir.

> “left, sol demektir.” kutuları verilen değere göre soldan hizalama veya ayarlama yapar.
> 
- `r` - harfi `margin-right` ve `padding-right` anlamına gelir.

> “right, sağ demektir.” kutulara verilen değere göre sağdan hizalama veya ayarlama yapar.
> 
- `x` - harfi `-left` ve `-right` üzerinden ayarlama yapar.

> sayfanın yatay konumda x ekseni olduğunu düşünürsek, hem sağdan hemde soldan bir kaydırma işlemi yapar.
> 
- `y` - harfi `-top` ve `-bottom`  üzerinden ayarlama yapar

> sayfanın dikey konumda y ekseni olduğunu düşünürsek, hem üstten hem de aşağıdan bir kaydırma veya boşluk verme işlemini sağlar.
> 
- blank - elementi `margin` ve `padding` dört tarafından da ayarlama yapar.

> sayfanın hem x ekseni hem de y ekseninde istenildiği aralıkta ayarlama yapar.
> 

Margin ve padding 1’den 5’e kadar ayarlama yapılabilir. Örneklere bakalım:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    <!-- MARGIN VE PADDING TOP -->
    <div class="mt-0 pt-0">
        <!-- margini ve paddingi 0 birim yukarıdan boşluk verir 
        en küçük değeridir aynı zamanda kullanmanın bir anlamı yoktur. -->
    </div>

    <div class="mt-1 pt-1">
        <!-- margini ve paddingi 1 birim yukarıdan boşluk verir 
         -->
    </div>

    <div class="mt-2 pt-2">
        <!-- margini ve paddingi 2 birim yukarıdan boşluk verir 
         -->
    </div>

    <div class="mt-3 pt-3">
        <!-- margini ve paddingi 3 birim yukarıdan boşluk verir 
         -->
    </div>

    <div class="mt-4 pt-4">
        <!-- margini ve paddingi 4 birim yukarıdan boşluk verir 
        -->
    </div>

    <div class="mt-5 pt-5">
        <!-- margini ve paddingi 5 birim yukarıdan boşluk verir 
        burası sınırdır en büyük verilecek margin ve padding değeri budur. -->
    </div>

    <!-- MARGIN ve PADDING BOTTOM -->
    <div class="mb-0 pb-0">
        <!-- margini ve paddingi 0 birim aşağıdan boşluk verir 
        en küçük değeridir aynı zamanda kullanmanın bir anlamı yoktur. -->
    </div>

    <div class="mb-1 pb-1">
        <!-- margini ve paddingi 1 birim aşağıdan boşluk verir 
         -->
    </div>

    <div class="mb-2 pb-2">
        <!-- margini ve paddingi 2 birim aşağıdan boşluk verir 
         -->
    </div>

    <div class="mb-3 pb-3">
        <!-- margini ve paddingi 3 birim aşağıdan boşluk verir 
         -->
    </div>

    <div class="mb-4 pb-4">
        <!-- margini ve paddingi 4 birim aşağıdan boşluk verir 
        -->
    </div>

    <div class="mb-5 pb-5">
        <!-- margini ve paddingi 5 birim aşağıdan boşluk verir 
        burası sınırdır en büyük verilecek margin ve padding değeri budur. -->
    </div>
    

</body>
</html>
```

Diğerleri de aynı şekilde kullanılır.

### Display özellikleri

Display özelliği ekranın boyutuna göre görünürlüğünü açıp kapatmamıza olanak sağlayan bir yapıdır. 

| Screen Size | Class |
| --- | --- |
| Hidden on all | .d-none |
| Hidden only on xs | .d-none .d-sm-block |
| Hidden only on sm | .d-sm-none .d-md-block |
| Hidden only on md | .d-md-none .d-lg-block |
| Hidden only on lg | .d-lg-none .d-xl-block |
| Hidden only on xl | .d-xl-none |
| Visible on all | .d-block |
| Visible only on xs | .d-block .d-sm-none |
| Visible only on sm | .d-none .d-sm-block .d-md-none |
| Visible only on md | .d-none .d-md-block .d-lg-none |
| Visible only on lg | .d-none .d-lg-block .d-xl-none |
| Visible only on xl | .d-none .d-xl-block |

burada `.d-none` ifadesi ekranlarda görünürlüğü kapatan bir elementtir. Bu element tek başına kullanılırsa bütün boyut ekranlarda görünürlük kaybolur.

`.d-none .d-sm-block` sınıfı ise, sadece XS boyutundaki ekranlarda görünürlüğü kapatır Diğer büyük boyutlarda görünürlük devam eder.

`.d-sm-none .d-md-block` sınıfı ise, sadece SM boyutundaki ekranlarda görünürlük kapatır. Diğer büyük ekranlarda görünürlük devam eder.

`.d-md-none .d-lg-block` sınıfı ise, sadece MD boyutundaki ekranlarda görünürlük kapatır. Diğer büyük veya küçük ekranlarda görünürlük devam eder.

`.d-lg-none .d-xl-block` sınıfı ise, LG boyutundaki ekranlarda görünürlük kapatır. Diğer büyük veya küçük ekranlarda görünürlük devam eder.

`.d-xl-none`  sadece XL boyutundaki ekranda görünürlük kapatılır. Diğer ekranlarda görünürlük devam eder. 

---

`.d-block` bütün boyut ekranlarda görünürlük açık.

`.d-block .d-sm-none` sadece XS ekranda görünürlük açıktır. Diğerlerinde kapalıdır. 

`.d-none .d-sm-block .d-md-none` sadece SM ekranda görünürlük açıktır. Diğerlerinde kapalıdır. 

`.d-none .d-md-block .d-lg-none` sadece MD ekranda görünürlük açıktır. Diğerlerinde kapalıdır. .

`.d-none .d-lg-block .d-xl-none` sadece LG ekranda görünürlük açıktır. Diğerlerinde kapalıdır. 

`.d-none .d-xl-block` sadece XL ekranda görünürlük açıktır. Diğerlerinde kapalıdır. 

Örnek kullanımı aşağıdaki gibidir:

```html
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>

<body>
    <h1 class="d-block d-sm-none bg-success">XS - Mobil Görünüm</h1>
    <!-- d-block d-sm-none ifadesi sırasıyla öncelikle XS ekranda gözüktürür SM ekran ve sonrasındaki büyük ekranlarda gözükmez (d-sm-none) ifadesini silersek diğer ekranlarda da görünmeye devam eder. -->
    <h1 class="d-none d-sm-block d-md-none bg-danger">SM - Tablet görünümü</h1>
    <!-- d-none d-sm-block d-md-none ifadesi sırasıyla öncelikle SM ekranda gözüktürür MD ekran ve sonrasındaki büyük ekranlarda gözükmez (d-md-none) ifadesini silersek diğer ekranlarda da görünmeye devam eder. -->
    <h1 class="d-none d-md-block d-lg-none bg-warning">MD - Laptop görünümü</h1>
    <!-- d-none d-md-block d-lg-none ifadesi sırasıyla öncelikle MD ekranda gözüktürür L ekran ve sonrasındaki büyük ekranlarda gözükmez (d-lg-none) ifadesini silersek diğer ekranlarda da görünmeye devam eder. -->
    <h1 class="d-none d-lg-block d-xl-none bg-info">LG - Monitör görünümü</h1>
    <!--d-none d-lg-block d-xl-none ifadesi sırasıyla öncelikle lg ekranda gözüktürür XL ekranda gözükmez (d-xl-none) ifadesini silersek XL Ekranda görünmeye devam eder. -->
    <h1 class="d-none d-xl-block bg-primary">XL - Projeksiyon görünümü</h1>
    <!-- d-none d-xl-block ifadesi sadece XL ekranda gözükmesini sağlar. -->

    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-4 col-lg-3 col-xl-2 bg-success">Lorem, ipsum dolor.</div>
            <div class="col-sm-6 col-md-4 col-lg-3 col-xl-2 bg-info">Cumque, suscipit doloremque.</div>
            <div class="col-sm-6 col-md-4 col-lg-3 col-xl-2 bg-danger">Ducimus, sint dolorum.</div>
            <div class="col-sm-6 col-md-4 col-lg-3 col-xl-2 bg-primary">Sint, error laudantium?</div>
            <div class="col-sm-6 col-md-4 col-lg-3 col-xl-2 bg-success d-lg-none d-xl-block">Natus, eum asperiores!</div>
            <!-- d-lg-none d-xl-block ifadeleri LG ekranda gösterme ama XL ekranda LG ekrandan küçük her bir boyut ekranda göster-->
            <div class="col-sm-6 col-md-4 col-lg-3 col-xl-2 bg-info d-lg-none d-xl-block">Sint, perferendis officiis?</div>
            <!-- d-lg-none d-xl-block ifadeleri LG ekranda gösterme ama XL ekranda ve LG ekrandan küçük her bir boyut ekranda göster -->
        </div>

    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    -->
</body>

</html>
```

Daha fazla örnek için [**buraya**](https://getbootstrap.com/docs/4.6/utilities/display/) tıklayınız.

### Offset Nedir

Web sayfalarımızı tasarlarken sütunlarda `col` sınıfına sahip div elementlerinde boşluk oluşturma amacıyla sutunun sağından ve solundan ittililmesi için offset sınıfı kullanılır. Bu grid yapısı 12 birimden oluşur, bundan dolayı yapıda taşma olmaması için offset sınıfı için verilecek değerde sütunun sahip olduğu grid yapısı da göz önüne alınmalıdır. Offset değer belirleme durumun daha iyi kavranabilmesi açısından örneklere bakalım:

Örneğin:

```html
<div class="container">
    <div class="row bg-secondary mt-5" style="height: 100px;">
        <div class="col-md-10 offset-md-1 bg-warning font-weight-bold text-center pt-4" style="font-size: 20px;">
            .col-md-10 .offset-md-1
        </div>
    </div>
</div>
```

Yukarıda verilen kodun çıktısı:

![img1.jpg](Bootstrap%20cb5c146e18d34620a0e3db2c3599a709/img1.jpg)

Yukarıdaki örnekte offset için sağdan ve soldan toplam iki birim ayrıldı. Eğer ki sütunun boyutu 8 birim olarak ayarlansaydı offset için verilebilecek en uygun değer 2 birim olurdu. (Yani 2 birim baştan boşluk 8 birim sütun boyutu ve 2 birimde sondan boşluk olacak şekilde toplam 12)

Örnek:

```html
<div class="container">
    <div class="row bg-dark " style="height: 100px;">
        <div class="col-md-10 offset-md-2 bg-danger font-weight-bold text-center pt-4">.col-md-10 .offset-md-2</div>
    </div>
</div>
```

Yukarıda verilen kodun çıktısı:

![img2.jpg](Bootstrap%20cb5c146e18d34620a0e3db2c3599a709/img2.jpg)

Yukarıdaki örnekte sütun genişliği 8 birim, offset değeri ise sağdan 4 birim ve soldan 4 birim olarak verilmiştir. Fakat verilen değerler toplamı Grid yapısının alabileceği maksimum değerden fazla olduğu için offset ile sütuna yalnızca sol taraftan bir itme uygulanmıştır. Bunun yanı sıra offset için eğer 4'ten fazla bir değer girilseydi de sağ taraftan yapı dışına bir taşma söz konusu olacaktı.

### Order - Sıralama Nedir?

Order yani sıralama belirli responsive özellikli nesneleri gerektiği yerlere göre sıralamamıza olanak sağlayan bir yapıdır. Bir öğeyi 12’li ızgara yapısına göre order-0, order-1,….,order-12’ye kadar sıralamak mümkündür.

Order’ı kullanma senaryolarına göre anlatırsak örneğin bir web sitesinde üçlü bir parçaya böldüğünüzü varsayalım navigasyonu sm ekranlarda aşağıda olmasını isterken, XL ekranlarda ise sağda gözükmesini isteyebiliriz. Bu tip senaryolarda tam olarak order kullanılır.

Gelin bunu koda dökelim:

```html
<div class="d-flex">
  <div class="p-2 ">1. İçeriğimiz</div>
  <div class="p-2 ">2. İçeriğimiz</div>
  <div class="p-2">3. İçeriğimiz</div>
</div>
```

Bu normal bir şekilde kurulan bir sitemiz.

Peki isteneni nasıl yapmamız gerekir.

```html
<div class="d-flex">
  <div class="order-sm-3 p-2">1. İçeriğimiz</div>
  <div class="order-sm-2 p-2">2. İçeriğimiz</div>
  <div class="order-sm-1 p-2">3. İçeriğimiz</div>
</div>
```

İşte burada  `order-sm-3` ifadesi burada 1. İçerik ifadesini üçüncü sıraya koyarken, `order-sm-2` ifadesi dolayısıyla 2. içerik yazısı aynı yerinde kalmaktayken, 3. İçeriğimiz yazısı ise `order-sm-3` yazısı dolayısıyla ilk sıraya gelerek görünüm sağlar.

Order’ın tek bir yapıyla kullanmak da söz konusu değildir. Aynı zamanda bunun için ayrı ayrı sınıflardan da söz etmek mümkündür. Bunlar şunlardır:

- order-first - XS Ekranda öncelikle gösterim yapar.
- order-last - XS Ekranda sonradan gösterim yapar.
- order-sm-first - SM Ekranda öncelikle gösterim yapar.
- order-sm-last -  SM Ekranda sonradan gösterim yapar.
- order-md-first - MD Ekranda öncelikle gösterim yapar.
- order-md-last - MD Ekranda sonradan gösterim yapar.
- order-lg-first - LG Ekranda öncelikli gösterim yapar.
- order-lg-last - LG Ekranda sonradan gösterim yapar.
- order-xl-first - XL Ekranda öncelikli gösterim yapar.
- order-xl-last - XL Ekranda sonradan gösterim yapar.
- order-xxl-first - XXL Ekranda öncelikli gösterim yapar.
- order-xxl-last - XXL Ekranda sonradan gösterim yapar.

Bunlar ise bazı order sınıflarıdır.

Daha fazla bilgi için [***tıklayınız.***](https://getbootstrap.com/docs/4.6/utilities/flex/#order)

GENEL BAKIŞ

# **Bootstrap Bileşenlerine(UI Components) Genel Bakış**

Bootstrap sizler için önceden tasarlanmış ve hazırlanmış birçok component sunuyor. Bu hazır component'ler ile sitelerinizi kolayca stillendirebilir hızlıca projeler çıkarabilirsiniz. Bu bölümde Bootstrap'ın bizlere sunmuş olduğu component'lere genel bir bakış atacağız.

**Not:** Bu doküman hazırlanırken Bootstrap 5.0 versiyonu baz alınmıştır. Componet'ler ile güncel dokümana **[burdan](https://getbootstrap.com/docs/5.0/components/accordion/)** ulaşabilirsiniz.

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled.png)

Accordion, Alerts, Badge, Breadcrumb, Buttons, Button group, Card, Carousel, Close button, Collapse, Dropdowns, List group, Modal, Navs & tabs, Navbar, Pagination, Popovers, Progress, Scrollspy, Spinners, Toasts, Tooltips

## **Accordion**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/accordion/)**

Sizlere açılır kapanır başlıklar yapmanıza olanak tanıyan bir component. Akordiyon müzik aletine benzediği için bu ismi almış.

Bu component temelde collapse component'i üzerine geliştirilerek yapılmıştır. O component'e de yazının ilerleyen bölümlerinde değineceğiz.

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Accordion.gif](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Accordion.gif)

```html
<div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        Accordion Item #1
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <strong>This is the first item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        Accordion Item #2
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        Accordion Item #3
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
</div>

```

**Not:** Component ile ilgili kodlara en güncel hali ile Bootstrap'in kendi dokümantasyonundan ulaşabilirsiniz.

## **Alerts**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/alerts/)**

Projenizdeki bildirimleri, uyarıları Bootstrap'in alert'leri ile gösterebilirsiniz. Buradaki resimde alert çeşitlerini görebilirsiniz.

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%201.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%201.png)

```html
<div class="alert alert-primary" role="alert">
  A simple primary alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-secondary" role="alert">
  A simple secondary alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-success" role="alert">
  A simple success alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-danger" role="alert">
  A simple danger alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-warning" role="alert">
  A simple warning alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-info" role="alert">
  A simple info alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-light" role="alert">
  A simple light alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-dark" role="alert">
  A simple dark alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>

```

## **Badge**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/badge/)**

Bu component'i bildirim sayısını göstermek ya da bir component'in ek bir öğe olarak kullanabilirsiniz.

Yine bu component'in de alert'lerde olduğu gibi renk seçenekleri mevcut.

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%202.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%202.png)

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%203.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%203.png)

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%204.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%204.png)

```html
<span class="badge bg-primary">Primary</span>
<span class="badge bg-secondary">Secondary</span>
<span class="badge bg-success">Success</span>
<span class="badge bg-danger">Danger</span>
<span class="badge bg-warning text-dark">Warning</span>
<span class="badge bg-info text-dark">Info</span>
<span class="badge bg-light text-dark">Light</span>
<span class="badge bg-dark">Dark</span>

```

## **Bredcrumb**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/breadcrumb/)**

Bu component sayesinde sayfalarınız arasında gezinirken kullanıcının kaybolmadan nerede olduğunu gösterebiliyorsunuz. Hansel ve Gretel masalında olduğu gibi :)

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%205.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%205.png)

```html
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item active" aria-current="page">Home</li>
  </ol>
</nav>

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item active" aria-current="page">Library</li>
  </ol>
</nav>

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item"><a href="#">Library</a></li>
    <li class="breadcrumb-item active" aria-current="page">Data</li>
  </ol>
</nav>

```

## **Buttons**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/buttons/)**

Bootstrap sizlere kullanabileceğiniz birçok buton çeşidi sunmakta.

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%207.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%207.png)

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%206.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%206.png)

```html
<button type="button" class="btn btn-primary">Primary</button>
<button type="button" class="btn btn-secondary">Secondary</button>
<button type="button" class="btn btn-success">Success</button>
<button type="button" class="btn btn-danger">Danger</button>
<button type="button" class="btn btn-warning">Warning</button>
<button type="button" class="btn btn-info">Info</button>
<button type="button" class="btn btn-light">Light</button>
<button type="button" class="btn btn-dark">Dark</button>

<button type="button" class="btn btn-link">Link</button>

```

## **Button group**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/button-group/)**

Bu butonları bu şekilde gruplayıp da kullanabilirsiniz.

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%208.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%208.png)

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%209.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%209.png)

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2010.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2010.png)

```html
<div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
  <input type="checkbox" class="btn-check" id="btncheck1" autocomplete="off">
  <label class="btn btn-outline-primary" for="btncheck1">Checkbox 1</label>

  <input type="checkbox" class="btn-check" id="btncheck2" autocomplete="off">
  <label class="btn btn-outline-primary" for="btncheck2">Checkbox 2</label>

  <input type="checkbox" class="btn-check" id="btncheck3" autocomplete="off">
  <label class="btn btn-outline-primary" for="btncheck3">Checkbox 3</label>
</div>

```

## **Cards**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/card/)**

Bootstrap'in kartları, birden çok varyant ve seçeneğe sahip esnek ve genişletilebilir bir içerik konteyneri sağlar.

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2012.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2012.png)

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2011.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2011.png)

```html
<div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>

```

## **Carousel**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/carousel/)**

Resimlerinizi göstermeye yarayan bir galeri component'i.

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/coursel.gif](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/coursel.gif)

```html
<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="..." class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
    </div>
  </div>
</div>

```

## **Close button**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/close-button/)**

**Kapatma tuşu**

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2013.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2013.png)

```html
<button type="button" class="btn-close btn-close-white" aria-label="Close"></button>
<button type="button" class="btn-close btn-close-white" disabled aria-label="Close"></button>

```

## **Collapse**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/collapse/)**

Açılır kapanır kartlar.

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/collapse.gif](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/collapse.gif)

```html
<p>
  <a class="btn btn-primary" data-bs-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Toggle first element</a>
  <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">Toggle second element</button>
  <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target=".multi-collapse" aria-expanded="false" aria-controls="multiCollapseExample1 multiCollapseExample2">Toggle both elements</button>
</p>
<div class="row">
  <div class="col">
    <div class="collapse multi-collapse" id="multiCollapseExample1">
      <div class="card card-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
      </div>
    </div>
  </div>
  <div class="col">
    <div class="collapse multi-collapse" id="multiCollapseExample2">
      <div class="card card-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
      </div>
    </div>
  </div>
</div>

```

## **Dropdowns**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/dropdowns/)**

Düşen menüler

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/dropdown.gif](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/dropdown.gif)

```html
<!-- Example single danger button -->
<div class="btn-group">
  <button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    Action
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Action</a></li>
    <li><a class="dropdown-item" href="#">Another action</a></li>
    <li><a class="dropdown-item" href="#">Something else here</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Separated link</a></li>
  </ul>
</div>

```

## **Navbar**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/navbar/)**

Genelde web sitelerinin en üstünü dolduran gezinti bölümünün Bootstrap tarafından özelleştirilmiş ve component haline getirlmiş hali.

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2014.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2014.png)

```html
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

```

## **Pagination**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/pagination/)**

Sayfada görüntüleceyeğiniz elemanlar yeterince çoğaldığında sayfada yapılan istekleri boyutlandırmak için pagination'ı kullanırız. Bu da Bootstrap'in pagination için hazırlamış olduğu component'leri

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2015.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2015.png)

```html
<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>

```

## **Popovers**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/popovers/)**

Butonlar üzerinde gösterdiğimiz açılan açıklamalar.

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/popovers.gif](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/popovers.gif)

```html
<button type="button" class="btn btn-lg btn-danger" data-bs-toggle="popover" title="Popover title" data-bs-content="And here's some amazing content. It's very engaging. Right?">Click to toggle popover</button>

```

## **Progress**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/progress/)**

İlerleme ifade eden bar'lar.

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2016.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2016.png)

```html
<div class="progress">
  <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
</div>

```

## **Spinners**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/spinners/)**

Yüklenme durumlarını ifade etmek için kullanılan component'ler.

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/spinners.gif](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/spinners.gif)

```html
<div class="spinner-border text-primary" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-border text-secondary" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-border text-success" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-border text-danger" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-border text-warning" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-border text-info" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-border text-light" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-border text-dark" role="status">
  <span class="visually-hidden">Loading...</span>
</div>

```

## **Toasts**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/toasts/)**

Toast component'i daha çok kullanıcıya bir bildirim göstermek için kullanılıyor.

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2017.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2017.png)

```html
<div aria-live="polite" aria-atomic="true" class="position-relative">
  <!-- Position it: -->
  <!-- - `.toast-container` for spacing between toasts -->
  <!-- - `.position-absolute`, `top-0` & `end-0` to position the toasts in the upper right corner -->
  <!-- - `.p-3` to prevent the toasts from sticking to the edge of the container -->
  <div class="toast-container position-absolute top-0 end-0 p-3">

    <!-- Then put toasts within -->
    <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
      <div class="toast-header">
        <img src="..." class="rounded me-2" alt="...">
        <strong class="me-auto">Bootstrap</strong>
        <small class="text-muted">just now</small>
        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
      </div>
      <div class="toast-body">
        See? Just like this.
      </div>
    </div>

    <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
      <div class="toast-header">
        <img src="..." class="rounded me-2" alt="...">
        <strong class="me-auto">Bootstrap</strong>
        <small class="text-muted">2 seconds ago</small>
        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
      </div>
      <div class="toast-body">
        Heads up, toasts will stack automatically
      </div>
    </div>
  </div>
</div>

```

## **Tooltips**

İlgili döküman sayfasına **[buradan ulaşabilirsiniz](https://getbootstrap.com/docs/5.0/components/tooltips/)**

Elementlerin üzerinde geldiğinizde size ipucu veren component'ler.

![https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2018.png](https://raw.githubusercontent.com/Kodluyoruz/taskforce/main/bootstrap/bootstrap-bilesenlerineui-components-genel-bakis/images/Untitled%2018.png)

```html
<button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" title="Tooltip on top">
  Tooltip on top
</button>
<button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="right" title="Tooltip on right">
  Tooltip on right
</button>
<button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tooltip on bottom">
  Tooltip on bottom
</button>
<button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="left" title="Tooltip on left">
  Tooltip on left
</button>

```

Bu yazımızda Bootstrap'in tüm arayüz bileşenlerinden bahsetmeye çalıştık. Daha çok bu bileşenlerin tanıtımı gibi oldu. Bunlardan birine ihtiyacınız var ise Bootstrap'in [kendi dökümantasyonuna](https://getbootstrap.com/docs/4.6/getting-started/introduction/) gidip bu component'leri kendi projelerinize nasıl dahil edeceğinize bakabilirsiniz.
