import 'package:flutter/material.dart';

class Derby extends StatefulWidget {
  @override
  _DerbyState createState() => _DerbyState();
}

class _DerbyState extends State<Derby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 45, 114),
        centerTitle: true,
        title: const Text(
          "UEL NIGHT",
          style: TextStyle(
            color: Color(0xFFFFED00),
            fontFamily: 'LilitaOne',
            fontSize: 24,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        
        child: Padding(
          
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Fenerbahce vs Manchester United',style: TextStyle(fontFamily: 'LilitaOne',fontSize: 25,color: Color.fromARGB(255, 0, 45, 114)),),
              
              const Text(
                '   Fenerbahçe to face English giants Manchester United: Possible starting 11s. The match of the day in the UEFA Europa League will be played in Kadıköy. Fenerbahçe will host manager Jose Mourinho\'s former team Manchester United at 22:00. Here are the details and Fenerbahçe possible starting 11s...',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 45, 114),
                ),
              ),
              const SizedBox(height: 10),

              
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/w.jpg', 
                  fit: BoxFit.cover,
                  height: 250,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 10),

              
              const Text(
                '   Coach Jose Mourinho, who will face his former team, gave a message to the fans before the critical match. Mourinho said, "I don\'t see any reason for Manchester United to be afraid of us, but they know the match won\'t be easy."',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 45, 114),
                ),
              ),
              const SizedBox(height: 10),

              
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/x.jpg', 
                  fit: BoxFit.cover,
                  height: 250,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 10),

              
              const Text(
                'This derby match will be remembered for years, as both teams aim to secure a place in the UEFA Europa League finals.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 45, 114),
                ),
              ),
              const SizedBox(height: 10),

              
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/f.jpg', 
                  fit: BoxFit.cover,
                  height: 250,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 20),

              
              const Text(
                'FENERBAHÇE:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 45, 114),
                ),
              ),
              const SizedBox(height: 7),

              const Text('- Livakovic'),
              const Text('- Osayi'),
              const Text('- Çağlar'),
              const Text('- Djiku'),
              const Text('- Mert'),
              const Text('- Fred'),
              const Text('- Amrabat'),
              const Text('- Tadic'),
              const Text('- Szymanski'),
              const Text('- Maximin'),
              const Text('- En Nesyri'),
              const SizedBox(height: 20),

              const Text(
                'MANCHESTER UNITED:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 45, 114),
                ),
              ),
              const SizedBox(height: 7),

              const Text('- Onana',),
              const Text('- Mazraoui'),
              const Text('- De Ligt'),
              const Text('- Martinez'),
              const Text('- Dalot'),
              const Text('- Casemiro'),
              const Text('- Ugarte'),
              const Text('- Garnacho'),
              const Text('- Eriksen'),
              const Text('- Rashford'),
              const Text('- Höjlund'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
