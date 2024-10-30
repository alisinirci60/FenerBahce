import 'package:fenerbahce/drawer/my_drawer.dart';
import 'package:fenerbahce/screens/derby.dart';
import 'package:fenerbahce/screens/login_page.dart';
import 'package:fenerbahce/screens/president.dart';
import 'package:fenerbahce/screens/signup_page.dart';
import 'package:fenerbahce/screens/transfer_news.dart';
import 'package:fenerbahce/search/news_search_delegate.dart';
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
            SizedBox(height: 0),
            CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                viewportFraction: 1.0,
                autoPlay: true,
              ),
              items: [
                'assets/images/CarouselSlider/3243e26eed3f15367281032f886acfda.jpg',
                'assets/images/CarouselSlider/ad37d6ff980bac6d7f463ccc36da9cc6.jpg',
                'assets/images/CarouselSlider/c.jpg',
                'assets/images/CarouselSlider/u.jpg'
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.asset(
                      i,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Breaking News',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 45, 114), 
        ),
      ),
      SizedBox(height: 10),
      NewsCard(
        title: 'Fenerbahce faces tough match in UEL',
        
        description: 'Click for the latest updates.',
        titleStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 45, 114), 
        ),
        descriptionStyle: TextStyle(
          color: Color.fromARGB(255, 0, 45, 114), 
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Derby(),
            ),
          );
        },
      ),
      NewsCard(
        title: 'Message from the President',
        description: 'New season goals announced.',
        titleStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 45, 114), 
        ),
        descriptionStyle: TextStyle(
          color: Color.fromARGB(255, 0, 45, 114), 
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PresidentMessagePage(),
            ),
          );
        },
      ),
      NewsCard(
        title: 'Transfer News',
        description: 'Fenerbahce announced its new stars!',
        titleStyle: TextStyle(
          color: Color.fromARGB(255, 0, 45, 114), 
          fontWeight: FontWeight.bold,
        ),
        descriptionStyle: TextStyle(
          color: Color.fromARGB(255, 0, 45, 114), 
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TransferListPage(),
            ),
          );
        },
      ),
    ],
  ),
),

            
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Text(
                    'Next Match',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 45, 114),
                      
                      fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16.0),
                  Card(
                    borderOnForeground: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/logo.png', 
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    'Fenerbahçe',
                                    style: TextStyle(color:Color.fromARGB(255, 0, 45, 114), fontSize: 16),
                                  ),
                                ],
                              ),
                              Spacer(),
                              
                              Column(
                                children: [
                                  Text(
                                    ' 22:00',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 45, 114),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/manu_logo.png', 
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    'Manchester United',
                                    style: TextStyle(color: Color.fromARGB(255, 0, 45, 114), fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 16.0),
                         
                          Row(
                            children: [
                              Icon(Icons.sports_soccer, color: Color.fromARGB(255, 0, 45, 114)),
                              SizedBox(width: 8.0),
                              Text(
                                'UEFA Europa League',
                                style: TextStyle(color: Color.fromARGB(255, 0, 45, 114)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 0, 45, 114),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Color(0xFFFFED00)),
                        ),
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
                            MaterialPageRoute(builder: (context) => SignUpPage()),
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
                          final Uri url = Uri.parse('https://www.facebook.com/fenerbahce/');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url, mode: LaunchMode.externalApplication);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.instagram),
                        onPressed: () async {
                          final Uri url = Uri.parse('https://instagram.com/Fenerbahce');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url, mode: LaunchMode.externalApplication);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.twitter),
                        onPressed: () async {
                          final Uri url = Uri.parse('https://www.facebook.com/fenerbahce/');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url, mode: LaunchMode.externalApplication);
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

// NewsCard Widget
class NewsCard extends StatelessWidget {
  final String title;
  final String description;
  final TextStyle? titleStyle;
  final TextStyle? descriptionStyle;
  final VoidCallback onTap;

  const NewsCard({
    required this.title,
    required this.description,
    required this.onTap,
    this.titleStyle,
    this.descriptionStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          title,
          style: titleStyle ?? TextStyle(fontWeight: FontWeight.bold), 
        ),
        subtitle: Text(
          description,
          style: descriptionStyle ?? TextStyle(), 
        ),
        trailing: Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}


