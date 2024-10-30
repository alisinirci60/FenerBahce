import 'package:flutter/material.dart';

class PresidentMessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 45, 114),
        centerTitle: true,
        title: const Text(
          "Message from Our President",
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/aziz.jpeg', 
                  fit: BoxFit.fill,
                  height: 300,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 20),

              
              const Text(
                'Dear Fenerbahçe Fans,',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 45, 114),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                '  As we embark on this season, both in the league and in Europe, our aim is to achieve great success. With immense enthusiasm and determination, we have entered this new season. With the unwavering support of our fans, we are working tirelessly to bring Fenerbahçe the victories it deserves.',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 10),

              const Text(
                '  Today, I want to emphasize once again that as the Fenerbahçe family, we are united. On the field, we always play to win, but without the support of our fans, these victories would feel incomplete.',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 10),

              const Text(
                '  We have strengthened our squad with new transfers, and this team will be our greatest asset in achieving the long-dreamed successes. With your support, we will take Fenerbahçe to even greater heights.',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 10),

              const Text(
                '  Remember, we are a big family, and as long as we maintain this unity, success will always be with us. I thank each of you for your support and belief. We are marching confidently towards our goal of becoming champions.',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 20),

              const Text(
                'With deepest love and respect,',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 8),

              const Text(
                'President of Fenerbahçe Sports Club',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 45, 114)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
