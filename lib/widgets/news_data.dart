class NewsItem {
  final String title;
  final String description;
  final String imageUrl;

  NewsItem({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

final List<NewsItem> newsData = [
  NewsItem(
    title: "Samsunspor maçının deplasman tribünü biletleri satışa çıkıyor",
    description: "Trendyol Süper Lig’in 9. hafta maçında 20 Ekim 2024 Pazar günü saat 19.00’da Samsunspor’a konuk olacağı maçın misafir tribünü biletleri satışa çıkıyor.",
    imageUrl: "https://i.tgrthaber.com/images/haberler/24-10/14/samsunspor-fenerbahce-macinin-biletlerinin-ne-zaman-satisa-cikacagi-henuz-aciklanmadi-17288867691673.jpg",
  ),
  NewsItem(
    title: "Fenerbahçe Beko, Kızılyıldız’ı konuk ediyor",
    description: "Yeni transferlerin tanıtımı bu hafta yapılacak.",
    imageUrl: "https://img.kontraspor.com/storage/files/images/2024/10/15/fenerbahce-beko-kizilyildiz-maci-ne-zaman-saat-kacta-ve-hangi-kanalda-canli-yayinlanacak-thy-euroleague-wwy0.jpg",
  ),
  NewsItem(
    title: "Avrupa Ligi'nde Yeni Rakip!",
    description: "Fenerbahçe'nin Avrupa Ligi'ndeki yeni rakibi belli oldu.",
    imageUrl: "https://www.timeturk.com/resim/detay/169/1695761.jpg",
  ),
  NewsItem(
    title: "Fenerbahçe Medicana - Eczacıbaşı Dynavit: 3-1 (MAÇ SONUCU)",
    description: "Fenerbahçe Medicana, 2024 Kadınlar AXA Sigorta Şampiyonlar Kupası maçında Eczacıbaşı Dynavit'i 3-1 mağlup ederek şampiyon oldu.",
    imageUrl: "https://arsavev.com.tr/wp-content/uploads/2023/11/superbasin1_47109_7518248.jpg",
  ),
  NewsItem(
    title: "MİLLİLER İZLANDA'DA TARİH YAZDI! İzlanda - Türkiye maçı canlı sonucu: 2-4",
    description: "A Milli Futbol Takımımız, UEFA Uluslar Ligi'nde deplasmanda İzlanda ile karşı karşıya geldi. Maçı 4-2 kazandık.",
    imageUrl: "https://image.fanatik.com.tr/i/fanatik/75/665x369/670d84fccc42858facd552c7.jpg",
  ),
  NewsItem(
    title: "Norwich Teknik Direktörü Palmer'dan Osayi Samuel açıklaması",
    description: "İngiliz ekibi, Fenerbahçe ile olan sözleşmesi sezon sonunda bitecek olan Nijeryalı yıldızla ilgili transfer açıklaması yaptı.",
    imageUrl: "https://image.milimaj.com/i/milliyet/75/869x477/670a32dbac0e445b223663b0.jpg",
  ),
];
