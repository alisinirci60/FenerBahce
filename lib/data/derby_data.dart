class DerbyData {
  final String name;
  final String years;
  final String imageUrl;
  final String? secondImageUrl; // İkinci resim alanı eklendi
  final String order;

  DerbyData({
    required this.name,
    required this.years,
    required this.imageUrl,
    this.secondImageUrl, // Bu opsiyonel (nullable) olabilir
    required this.order,
  });
}


List<DerbyData> derbyDataList = [
  DerbyData(
    name: 'Fenerbahçe vs Manchester United',
    years: '2023',
    imageUrl: 'assets/images/w.jpg',
    secondImageUrl: 'assets/images/new_image.jpg',
    order: '1st Match',
  ),
 
];
