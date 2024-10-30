// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TransferListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Transfer News',
          style: TextStyle(
            fontFamily: 'LilitaOne',
            fontSize: 24,
            color: Color(0xFFFFED00), 
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color.fromARGB(255, 0, 45, 114), 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '  Fenerbahçe\'s completed transfers are being investigated by football fans. The 2024-2025 summer transfer period in the Trendyol Super League ends tonight. Fenerbahçe, which will compete in the UEFA Europa League in the new season, has added important names from teams such as Sevilla, Atletico Madrid, and Al-Ahli Fiorentina to its squad.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20.0),
              Text(
                'FENERBAHÇE ARRIVALS 2024-2025 SEASON',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Youssef En-Nesyri (Sevilla)'),
              Text('- Allan Saint Maximin (Al-Ahli)'),
              Text('- Oğuz Aydın (Alanyaspor)'),
              Text('- Sofyan Amrabat (Fiorentina)'),
              Text('- Levent Mercan (Karagümrük)'),
              Text('- Cenk Tosun (Beşiktaş)'),
              Text('- Filip Kostic (Juventus)'),
              SizedBox(height: 20.0),
              Text(
                'FENERBAHÇE DEPARTURES 2024-2025 SEASON',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Ferdi Kadıoğlu (Brighton)'),
              Text('- Umut Nayir (Konyaspor)'),
              Text('- Melih Bostan (Konyaspor)'),
              Text('- Michy Batshuayi (Galatasaray)'),
              Text('- Rade Krunic (Red Star)'),
              Text('- Miguel Crespo (Başakşehir)'),
              Text('- Joshua King (Toulouse)'),
              Text('- Luan Peres (Santos)'),
              Text('- Miha Zajc (Toulouse)'),
            ],
          ),
        ),
      ),
    );
  }
}
