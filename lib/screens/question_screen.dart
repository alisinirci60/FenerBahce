// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:fenerbahce/screens/home_screen.dart'; // HomeScreen'i import et

class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lütfen soruyu cevaplayınız',
        
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          ),
          ),
        backgroundColor:Color.fromARGB(255, 0, 5, 101),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '2010-2011 şampiyonu kimdir?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Doğru cevap seçildi, HomeScreen'e yönlendir
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('Fenerbahçe',
              style: TextStyle(
                color: Colors.black,
                ),
                ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
            ),
             ElevatedButton(
              onPressed: () {
                
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Yanlış Cevap"),
                      content: Text("Yanlış cevap verdiniz, uygulamaya giriş yapamazsınız."),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Tamam"),
                        )
                      ],
                    );
                  },
                );
              },
              child: Text('Trabzonspor',
              style: TextStyle(
                color: Colors.black,
                ),
                ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
