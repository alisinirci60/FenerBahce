import 'package:flutter/material.dart';
import 'presidents_data.dart'; // Verilerin tutulduğu dosyayı dahil ediyoruz

class Presidents extends StatefulWidget {
  @override
  _PresidentsState createState() => _PresidentsState();
}

class _PresidentsState extends State<Presidents> {
  // Görselin hareket edip etmeyeceğini kontrol eden değişken
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 45, 114),
        centerTitle: true,
        title: const Text(
          "Our Presidents",
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
      body: ListView.builder(
        itemCount: presidents.length,
        itemBuilder: (context, index) {
          final president = presidents[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                GestureDetector(
                  onTapDown: (details) {
                    setState(() {
                      _isTapped = true;
                    });
                  },
                  onTapUp: (details) {
                    setState(() {
                      _isTapped = false;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    transform: _isTapped
                        ? Matrix4.translationValues(0, -10, 0) // Yukarı hareket ettir
                        : Matrix4.identity(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        president.imageUrl,
                        fit: BoxFit.cover,
                        height: 350,
                        width: 300,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  president.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(president.order),
                Text(president.years),
              ],
            ),
          );
        },
      ),
    );
  }
}
