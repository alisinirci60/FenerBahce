// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fenerbahce/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  
  String? _name;
  String? _surname;
  String? _email;
  String? _password;
  String? _captchaInput;
  int _num1 = 0;
  int _num2 = 0;
  int _captchaResult = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _generateMathCaptcha();
  }

  void _generateMathCaptcha() {
    final random = Random();
    _num1 = random.nextInt(10) + 1;
    _num2 = random.nextInt(10) + 1;
    _captchaResult = _num1 + _num2; 
  }

  void _refreshCaptcha() {
    setState(() {
      _generateMathCaptcha(); 
    });
  }

  Future<void> _signUp() async {
    setState(() {
      _isLoading = true;
    });

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _email!,
        password: _password!,
      );
      
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
      
    } on FirebaseAuthException catch (e) {
      String errorMessage;
      if (e.code == 'email-already-in-use') {
        errorMessage = 'The account already exists for that email.';
      } else if (e.code == 'invalid-email') {
        errorMessage = 'The email address is not valid.';
      } else if (e.code == 'weak-password') {
        errorMessage = 'The password is too weak.';
      } else {
        errorMessage = 'An error occurred. Please try again.';
      }
      // Hata mesajını göster
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 45, 114),
        title: Text(
          'Sign Up',
          style: TextStyle(
            color: Color(0xFFFFED00),
            fontSize: 24,
            fontFamily: 'LilitaOne'
          ),
        ),
        leading: IconButton( 
          icon: Icon(Icons.arrow_back, color: Colors.white), 
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) => _name = value,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Surname'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your surname';
                    }
                    return null;
                  },
                  onSaved: (value) => _surname = value,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                  onSaved: (value) => _email = value,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters long';
                    }
                    return null;
                  },
                  onSaved: (value) => _password = value,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Captcha: $_num1 + $_num2 = ?',
                      style: TextStyle(fontSize: 18),
                    ),
                    IconButton(
                      icon: Icon(Icons.refresh),
                      onPressed: _refreshCaptcha, 
                    ),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Enter Captcha Result'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please solve the captcha';
                    }
                    if (int.tryParse(value) != _captchaResult) {
                      return 'Captcha is incorrect';
                    }
                    return null;
                  },
                  onSaved: (value) => _captchaInput = value,
                  keyboardType: TextInputType.number, 
                ),
                SizedBox(height: 20),
                _isLoading
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            _signUp();
                          }
                        },
                        child: Text('Sign Up'),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
