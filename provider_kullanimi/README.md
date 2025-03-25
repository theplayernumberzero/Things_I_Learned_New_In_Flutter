# provider_kullanimi

A new Flutter project for understanding to usage of Provider.

## Getting Started

Projemizde ürünlerin bulunduğu ve checkbox ile seçebileceğimiz bir ekran ve seçtiğimiz ürünleri görüntüleyebileceğimiz bir cart ekranı bulunuyor. Provider yapısı kullanarak seçtiğimiz elementler bir değişkende kaydediliyor ve sayfa değişirsek dahi bu verinin bozulmamış haline ulaşabiliyoruz. Peki Provider yapısını projeye nasıl dahil ederiz:

###1-Provider class oluşturun
Oluşturduğumuz class ChangeNotifier classını extends etmeli. Ardından bu class içinde değişkenimizi ve değişkeni manipüle edeceğimiz metodlarımızı yazıyoruz. Eğer değişkenimiz manipüle edildiyse notifyListeners() kullanmamız lazım. Bu metod değişkende değişiklik olduğunda bu provider dinleyen widgetlara değişkenin değiştiğini bildirecek.

###2-Provider ın Widget ağacına eklenmesi
Provider daki değişiklikleri dinlemesi için widget ağacındaki bir widgeta ChangeNotifierProvider ile iliştirmemiz lazım. Ağacın ne kadar üstündeki widget seçilirse etki ettiği widget sayısı o kadar fazla olacaktır. create: (context) => CartProvider() ile hangi provider implemente edilecek seçiyoruz.

###3-Consumer kullanımı
Provider datasının içinde değişiklik olduğu zaman widgetın yenilenmesi için wraplediğimiz widget ismi Consumer. Kullanımı da 
Consumer<CartProvider>(
        builder: (context, provider, _) {
          return ...

şeklinde. Burada <> içine hangi provider kullanılacak onu giriyoruz ve provider ile provider içindeki verilere erişim sağlıyoruz

Provider kullanımı bu şekilde. Afiyet olsun
