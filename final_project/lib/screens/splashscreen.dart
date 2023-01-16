import 'package:flutter/material.dart';
import 'login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 

      void initState() {
    navigation();
    super.initState();
  }
   @override
  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: Center(
          child:CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.red,
                              child: CircleAvatar(radius: 28, backgroundColor: Colors.white, 
                              child: Text('R',style: TextStyle(color: Colors.red,fontSize: 40),),)), 
        ),
      ),
    );
  }

  navigation() {
    Future.delayed(
        const Duration(milliseconds: 3000),
        () => Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) =>   LoginScreen())));
  }
}