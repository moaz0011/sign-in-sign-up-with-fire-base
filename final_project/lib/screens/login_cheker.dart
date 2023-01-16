
// import 'package:final_project/screens/splashscreen.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'home_scree.dart';
// class Cherker extends StatelessWidget {
//   const Cherker({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context, snapshot) {
        
//         if(snapshot.hasData){
          
//            Navigator.push(
            
//                     context,
//                     MaterialPageRoute(builder: (context) =>  Homescreen1()));
//                     return Homescreen1() ;
//         }
//         else{
          
//           return SplashScreen();
//         }
//       },
//       )
//     );
//   }
// }