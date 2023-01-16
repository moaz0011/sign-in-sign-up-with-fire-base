// ignore: depend_on_referenced_packages
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/models/categories_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
class GetData extends ChangeNotifier{
bool loaded=false;
 List<categoryModel> categoriesData=[];
 Future getData ()async{
   categoriesData=[];
    loaded=true;
  //final snapsshot=await _fireStore.collection().get();
  // ignore: unused_local_variable
  final category = await FirebaseFirestore.instance.collection('category').get();
  for (var i in category.docs){
    categoriesData.add(categoryModel.fromJson(i.data()));
  }
 loaded=false;
  notifyListeners();
   }
}
//   print('gg');
//   // print(category.docs[0].data()["id"]);
//   if(collectionName=='man'){
//     id=1;
//   }
//   else{
//     id=2;
//   }
//   print(id);
//     final snapshot = await FirebaseFirestore.instance.collection('product').get();
//       len=snapshot.docs.length;

// print(snapshot);
// //   print('ggggggggggggggggggggggggggggg');
// //  print(snapshot.docs[0].data()['image']);
// //  collectionName=snapshot.docs[0].data()['image'];
// //  image22=snapshot.docs[0].data()['image'];
// Data=snapshot.docs;
//  // ignore: avoid_print
// //  print('image22');
// //  print(image22);
