// ignore_for_file: depend_on_referenced_packages
import 'package:final_project/screens/splashscreen.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'provider/get_product_provider.dart';
import 'provider/getdata_provider.dart';
import 'screens/home_Screen.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Notification with Firebase
  await Firebase.initializeApp();
  runApp( 
   const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
     MultiProvider(providers: [ChangeNotifierProvider<GetData>(create: (_) => GetData(),),
     ChangeNotifierProvider<Getpruduct>(create: (_) => Getpruduct(),),
     ],
        child:
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  SplashScreen(),
      debugShowCheckedModeBanner: false,
    ));
  }
}
