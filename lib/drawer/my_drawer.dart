// ignore_for_file: prefer_const_constructors

import 'package:fenerbahce/drawer/branches/basketball.dart';
import 'package:fenerbahce/drawer/branches/football.dart';
import 'package:fenerbahce/drawer/branches/volleyball.dart';
import 'package:fenerbahce/drawer/otherPages/news.dart';
import 'package:fenerbahce/drawer/otherPages/our_history.dart';
import 'package:fenerbahce/drawer/otherPages/our_stadium.dart';
import 'package:fenerbahce/drawer/otherPages/presidents/presidents.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 45, 114),
            ),
            child: const DrawerHeader(
              padding: EdgeInsets.symmetric(),
              child: Center(
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
          
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                ListTile(
                  title: const Text('Home Page'),
                  trailing: const Icon(Icons.home),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ExpansionTile(
                  title: const Text('Branches'),
                  trailing: const Icon(Icons.arrow_drop_down),
                  children: <Widget>[
                    ListTile(
                      title: const Text('Football'),
                      trailing: const Icon(Icons.sports_soccer),
                      onTap: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Football()),
                    );
                      },
                    ),
                    ListTile(
                      title: const Text('Basketball'),
                      trailing: const Icon(Icons.sports_basketball),
                      onTap: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Basketball()),
                    );
                      },
                    ),
                    ListTile(
                      title: const Text('Volleyball'),
                      trailing: const Icon(Icons.sports_volleyball),
                      onTap: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Volleyball()),
                    );
                      },
                    ),
                  ],
                ),
               
                ListTile(
                  title: const Text('Our History'),
                  trailing: const Icon(Icons.history_edu),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OurHistory()),
                    );
                  },
                ),

                ListTile(
                  title: const Text("Presidents"),
                  trailing: const Icon(Icons.person_2_outlined),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Presidents()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('News'),
                  trailing: const Icon(Icons.newspaper),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => News()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Our Stadium'),
                  trailing: const Icon(Icons.stadium),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OurStadium()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
