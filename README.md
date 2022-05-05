# NasaPhoto



Verileri çektiğim api'leri kullanabilmek için öncelikle bir adet liste kullandım. Çekeceğim verileri 'NasaModel' adında model dosyasını oluşturdum ve network katmanınıda sorunsuz bir şekilde oluşturduktan sonra verileri çektim. Her bir araç için bir view oluşturmak yerine apide araç ismini değiştirdim ve tek bir viewde 3 aracıda gösterdim.

<img width="322" alt="Screen Shot 2022-05-04 at 20 56 56" src="https://user-images.githubusercontent.com/62101026/166898074-3b4a4644-d95c-40de-85b3-6128684d1bf3.png"><img width="322" alt="Screen Shot 2022-05-04 at 20 57 33" src="https://user-images.githubusercontent.com/62101026/166898097-64c079b2-fc7a-4bee-a33e-b85cc6f66593.png"><img width="322" alt="Screen Shot 2022-05-04 at 20 57 30" src="https://user-images.githubusercontent.com/62101026/166898105-74377ba4-569c-4336-bd4f-5cfdcc5800a5.png">

## ----------------------------------------------------------------------------

Sonrasında verileri filtreleyebileceğim bir menü oluşturdum burada kamera türlerine göre araçları filtreleyebileceğiz ve istediğimiz sonuçlara varabileceğiz. Sondaki fotoğrafta eğer istenilen aramayla alakalı bir sonuç bulunamazsa bize gösterilecek ekran. AllImages seçeneğini seçtiğimizde ise bize filtrelenmemiş halini getirecektir.


<img width="322" alt="Screen Shot 2022-05-04 at 20 57 03" src="https://user-images.githubusercontent.com/62101026/166899058-ee98b5c8-dde8-494c-b50c-f8bcd9ee90e7.png"><img width="322" alt="Screen Shot 2022-05-04 at 20 57 12" src="https://user-images.githubusercontent.com/62101026/166899071-3072ad6c-ce64-4590-9053-386efda7215a.png"><img width="322" alt="Screen Shot 2022-05-04 at 20 57 25" src="https://user-images.githubusercontent.com/62101026/166899669-b9628a77-33e2-4fff-83d1-389d44b3cee2.png">

## ----------------------------------------------------------------------------

Listede gördüğümüz bir fotoğrafa tıkladığımız zaman bize o fotoğraf ile ilgili genel bilgileri vermektedir.

<img width="322" alt="Screen Shot 2022-05-05 at 11 31 37" src="https://user-images.githubusercontent.com/62101026/166900664-ad25e3e3-6619-49e4-b8ac-37c81e1864f8.png">

## ----------------------------------------------------------------------------

Son olarak çektiğim veride çok fazla içerik olduğu için hepsini bir anda yüklemek yerine pagination ile daha verimli bir şekilde gösterdim.

https://user-images.githubusercontent.com/62101026/166901484-ce696800-d798-43ae-bde4-0661400ec501.mov

## Pods
```
target 'Appcent' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Appcent
 pod 'Kingfisher', '~> 7.0'

```

## MVVM Mimarisine uyularak geliştirilme yapılmıştır.









