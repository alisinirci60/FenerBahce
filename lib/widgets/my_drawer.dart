// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120, // DrawerHeader'ın yüksekliğini buradan ayarlıyoruz
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 45, 114), // Drawer başlığı rengi
            ),
            child: const DrawerHeader(
              padding: EdgeInsets.symmetric(),
              child: Center( // Başlığı ortalamak için Center kullanıyoruz
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Expanded( // ListView'u genişletmek için Expanded kullanıyoruz
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                ListTile(
                  title: const Text('Ana Sayfa'),
                  trailing: const Icon(Icons.home),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ExpansionTile(
                  title: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Branşlar'),
                    ],
                  ),
                  children: <Widget>[
                    ListTile(
                      title: const Text('Futbol'),
                      trailing: const Icon(Icons.sports_soccer),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: const Text('Basketbol'),
                      trailing: const Icon(Icons.sports_basketball),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: const Text('Voleybol'),
                      trailing: const Icon(Icons.sports_volleyball),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  title: const Text('Tarihimiz'),
                  children: <Widget>[
                    ListTile(
                      title: const Text('Tarihimiz ile ilgili bilgi.'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  title: const Text("Başkanlarımız"),
                  children: <Widget>[
                    ListTile(
                      title: const Text('Vizyonumuz ile ilgili bilgi.'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  title: const Text('Haberler'),
                  children: <Widget>[
                    ListTile(
                      title: const Text('Misyonumuz ile ilgili bilgi.'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
