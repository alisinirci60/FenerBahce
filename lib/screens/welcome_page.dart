

import 'package:fenerbahce/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      
      Navigator.of(context).pushReplacement(
        _createRoute(), 
      );
    });
  }

  
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0); 
        const end = Offset.zero;
        const curve = Curves.easeInOut; 

        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        final offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 1200), 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 0, 45, 114), 
      body: Stack(
        children: const [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Together We Stand, United for Victory!',
                  style: TextStyle(
                    color: Color(0xFFFFED00),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'LilitaOne',
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFFFED00),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
