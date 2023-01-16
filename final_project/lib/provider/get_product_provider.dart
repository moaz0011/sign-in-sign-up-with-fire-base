import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/models/categories_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../models/products_model.dart';
// ignore: camel_case_types
class Getpruduct extends ChangeNotifier{
  String? collectionid;
  bool loaded=false;
  List<Productmodel>man=[];
    List<Productmodel>woman=[];
  
  Future getData ()async{
      man=[];
      woman=[];
    loaded=true;
  //final snapsshot=await _fireStore.collection().get();
  // ignore: unused_local_variable
  final product = await FirebaseFirestore.instance.collection('product').get();
  for (var i in product.docs){
    if(i.data()['id']==1){
          man.add(Productmodel.fromJson(i.data()));
          print(man);
    }
    else{
       woman.add(Productmodel.fromJson(i.data()));
    }
  }
 loaded=false;
 print(woman.length);
  notifyListeners();
   }
}  
// image22=snapshot.docs[0].data()['image'];