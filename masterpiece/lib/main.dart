import 'package:flutter/material.dart';
import 'splash.dart'; // استدعاء شاشة السبلاش
import 'signup.dart'; 
import 'login.dart';
import 'home.dart'; 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Demo',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      
      routes: {
        '/signup': (context) => Signup(),
        '/login': (context) => Login(),
        '/home': (context) => HomeScreen(),
        
      }, // أول شاشة تظهر
    );
    
  }

}
