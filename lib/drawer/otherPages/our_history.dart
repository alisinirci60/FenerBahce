import 'package:fenerbahce/screens/home_screen.dart';
import 'package:flutter/material.dart';

class OurHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Our History',
          style: TextStyle(
            color: Color(0xFFFFED00),
            fontFamily: 'LilitaOne',
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 45, 114),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Foundation of Fenerbahçe',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 45, 114),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Fenerbahçe Sports Club was founded in 1907 in Istanbul. '
                'With its iconic yellow and navy blue colors, the club has achieved countless successes in Turkish sports.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Image.asset('assets/images/fenerbahce_1907.jpg'), 
              const SizedBox(height: 16),
              const Text(
                'Early Achievements',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 45, 114),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Shortly after its establishment, the club started achieving success. '
                'The first championship was won in 1912, followed by numerous trophies in subsequent years.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Image.asset('assets/images/ilk_basari.jpg'), 
              const SizedBox(height: 16),
              const Text(
                'European Adventures',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 45, 114),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Fenerbahçe also made a name for itself in European competitions, '
                'notably reaching the quarter-finals of the UEFA Champions League in 2008, marking a significant achievement.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Image.asset('assets/images/avrupa_macera.jpg'), 
              const SizedBox(height: 16),
              const Text(
                'Fenerbahçe Today',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 45, 114),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Beyond football, Fenerbahçe competes successfully in basketball, volleyball, and various other sports. '
                'The club continues to bring pride to its dedicated fans.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Image.asset('assets/images/gunumuz_fenerbahce.jpg'), 
            ],
          ),
        ),
      ),
    );
  }
}
