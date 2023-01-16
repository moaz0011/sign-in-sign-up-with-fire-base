// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:fluttertoast/fluttertoast.dart';

// import '../screens/home_Screen.dart';
// // ignore: camel_case_types
// class Authprovider extends ChangeNotifier{
//    bool loaded=true;
//     late int len ;
//     Future Login(var email,var password,BuildContext context)async{
//     loaded = false;
//     notifyListeners();
//     const uri="https://oscarpetshopegy.com/api/login?lang=ar";
// // ignore: prefer_collection_literals
// var map =  Map<String, dynamic>();
// map['email']=email;
// map['password']=password;
// map['device_id']='123';
// // ignore: unused_local_variable
// var gg = await http.post(
//     Uri.parse(uri),
//     body: map,
// );
// if(jsonDecode(gg.body)["status"]==true){
// // ignore: use_build_context_synchronously
// Navigator.push(
//           context, MaterialPageRoute(builder: ((context) => const HomeScreen())));
// }
// else{
// Fluttertoast.showToast(
//       msg: "This is Center Short Toast",
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.CENTER,
//       timeInSecForIosWeb: 1,
//       backgroundColor: Colors.red,
//       textColor: Colors.white,
//       fontSize: 16.0
//   );
// }
// loaded=true;
//   notifyListeners();
//   print(gg.body);
//   }
// }