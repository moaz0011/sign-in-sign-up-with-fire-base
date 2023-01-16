// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class SaveItems extends StatelessWidget {
//   bool? saved;
//   String? textImagee;
//    SaveItems(this.saved,this.textImagee);
//   List<String>index=[];
  
//   @override
//   Widget build(BuildContext context) {
//     index.add(textImagee!);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: const Text('saved items'),
//       ),
//       body: ListView.builder(
//         itemCount: 3,
//         itemBuilder:
//          (context, index) {
//         return
//         // ignore: prefer_const_constructors
//        index==true?
//         Card(
//           child:
//           Text(textImagee!)
//         ):const Text('');
//       },),
//     );
//   }
// }