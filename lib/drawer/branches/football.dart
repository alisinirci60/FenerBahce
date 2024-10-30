import 'package:fenerbahce/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Football extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Football',
          style: TextStyle(
              color: Color(0xFFFFED00), fontFamily: 'LilitaOne', fontSize: 24),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 45, 114),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen())
            );
          },
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('football').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text("Bir hata oluştu!"));
          }

          final players = snapshot.data!.docs;

          return ListView.builder(
            itemCount: players.length,
            itemBuilder: (context, index) {
              var playerData = players[index].data() as Map<String, dynamic>;
              return ListTile(
                leading: CircleAvatar(child: Text(playerData['number'].toString())),
                title: Text(playerData['name']),
                subtitle: Text(
                  "Pozisyon: ${playerData['position']}, Yaş: ${playerData['age']}",
                ),
              );
            },
          );
        },
      ),
    );
  }
}
   //denemee