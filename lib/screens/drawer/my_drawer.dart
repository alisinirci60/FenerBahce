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
                
                ListTile(
                  title: const Text('Branches'),
                  trailing: const Icon(Icons.arrow_drop_down),
                  onTap: () {
                    
                  },
                ),
                const Divider(), 
                ListTile(
                  title: const Text('Football'),
                  trailing: const Icon(Icons.sports_soccer),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Basketball'),
                  trailing: const Icon(Icons.sports_basketball),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Volleyball'),
                  trailing: const Icon(Icons.sports_volleyball),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(), 
                ListTile(
                  title: const Text('Our History'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text("Presidents"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('News'),
                  onTap: () {
                    Navigator.pop(context);
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
