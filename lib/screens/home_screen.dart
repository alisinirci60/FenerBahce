import 'package:fenerbahce/drawer/my_drawer.dart';
import 'package:fenerbahce/screens/login_page.dart';
import 'package:fenerbahce/screens/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 45, 114),
        centerTitle: true,
        title: Text(
          'FENERBAHÇE',
          style: TextStyle(
            color: Color(0xFFFFED00),
            fontFamily: 'LilitaOne',
            fontSize: 24,
          ),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              showSearch(
                context: context,
                delegate: NewsSearchDelegate(),
              );
            },
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            CarouselSlider(
  options: CarouselOptions(
    height: 300.0, // Görsellerin boyunu uzatıyoruz (örneğin 300 piksel)
    viewportFraction: 1.0, // Görsellerin ekranı tamamen kaplaması için
    autoPlay: true, // Otomatik geçiş
  ),
  items: [
    'assets/images/CarouselSlider/1d36ff6bb33277af7cbf13c61ce72db3.jpg',
    'assets/images/CarouselSlider/9b8551ea7d02ef27ce3fdc6c64d07517.jpg',
    'assets/images/CarouselSlider/82bda8eb10d7d9897204fd7a459829e2.jpg',
    'assets/images/CarouselSlider/893eb0d38fbf37c9aa13c9533d3b230e.jpg',
    'assets/images/CarouselSlider/3243e26eed3f15367281032f886acfda.jpg',
    'assets/images/CarouselSlider/ad37d6ff980bac6d7f463ccc36da9cc6.jpg',
    'assets/images/CarouselSlider/c0feb31e8d67189b2c54702b8ed905eb.jpg',
     'assets/images/CarouselSlider/k.jpg',
     'assets/images/CarouselSlider/l.jpg',
     'assets/images/CarouselSlider/q.jpg',
  ].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Image.asset(
          i,
          fit: BoxFit.cover, // Görselin boyutunu ekranı kaplayacak şekilde ayarlıyoruz
          width: double.infinity, // Ekranı tam kaplaması için genişlik
        );
      },
    );
  }).toList(),
),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Son Haberler',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  NewsCard(
                      title: 'Fenerbahçe Galatasaray Derbisi',
                      description: 'Son dakika gelişmeleri için tıklayın.'),
                  NewsCard(
                      title: 'Başkanın Mesajı',
                      description: 'Yeni sezon hedefleri açıklandı.'),
                  NewsCard(
                      title: 'Transfer Haberleri',
                      description: 'Fenerbahçe yeni yıldızını açıkladı!'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text('Login'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account yet? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.facebook),
                        onPressed: () async {
                          final Uri url =
                              Uri.parse('https://www.facebook.com/fenerbahce/');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.twitter),
                        onPressed: () async {
                          final Uri url =
                              Uri.parse('https://www.x.com/fenerbahce/');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.instagram),
                        onPressed: () async {
                          final Uri url = Uri.parse(
                              'https://www.instagram.com/fenerbahce/');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String description;

  const NewsCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          // Haber detayına git
        },
      ),
    );
  }
}

class NewsSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text("Arama Sonucu: $query"),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Arama önerileri
    List<String> suggestions = [
      'Fenerbahçe Galatasaray Derbisi',
      'Başkanın Mesajı',
      'Transfer Haberleri',
    ];

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}
