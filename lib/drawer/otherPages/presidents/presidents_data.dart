class President {
  final String name;
  final String years;
  final String imageUrl;
  final String order;

  President({
    required this.name,
    required this.years,
    required this.imageUrl,
    required this.order,
  });
}

final List<President> presidents = [
  President(
    name: 'Nurizade Ziya Songülen',
    years: '1907 - 1908',
    imageUrl: 'assets/images/presidents/ziya.jpeg',
    order: '1st President',
  ),

   President(
    name: 'Şükrü Saracoğlu',
    years: '1934 - 1950',
    imageUrl: 'assets/images/presidents/şükrü.jpg',
    order: '14th President',
  ),
   President(
    name: 'Zeki Riza Sporel',
    years: '1955 - 1958',
    imageUrl: 'assets/images/presidents/zeki.jpeg',
    order: '17th President',
  ),
  President(
    name:"Hasan Kamil Sporel" , 
    years: "1960-1961", 
    imageUrl: "assets/images/presidents/hasan.jpeg", 
    order:"21st President",
    ),
   President(
    name: 'Ali Şen',
    years: '1981 - 1983',
    imageUrl: 'assets/images/presidents/ali.jpeg',
    order: '28th President',
  ),
   President(
    name: 'Faruk Ilgaz',
    years: '1966 - 1974',
    imageUrl: 'assets/images/presidents/Faruk_Ilgaz.jpg',
    order: '24th President',
  ),
   President(
    name: 'Aziz Yildirim',
    years: '1998 - 2018',
    imageUrl: 'assets/images/presidents/aziz.jpg',
    order: '32nd President',
  ),
   
  
];
