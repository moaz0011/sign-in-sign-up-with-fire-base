import 'package:final_project/screens/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/get_product_provider.dart';
import '../provider/getdata_provider.dart';

class Productscreen extends StatefulWidget {
 // String productID;
   Productscreen();

  @override
  State<Productscreen> createState() => _Productscreen();
}
class _Productscreen extends State<Productscreen> {
  @override
  String? listname;
  void initState() {
    super.initState();
     Provider.of<Getpruduct>(context,listen: false).getData();
  }
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title:  Text('man'),
        centerTitle: true,
        backgroundColor: Colors.red,),
      body: Consumer<Getpruduct>(builder: (_, value, __) {
        if (value.loaded==false) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              shrinkWrap: true,
        itemCount: value.woman.length ,
        itemBuilder: (context, index) {
        return
        Card(
          shape: RoundedRectangleBorder(
    side: const BorderSide(
      color: Colors.red,
    ),
    borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
  ),
            child:
            Column(children: [
               Image.network(value.woman[index].image!,fit: BoxFit.cover,),
               Padding(
                 padding: const EdgeInsets.all(8),
                 child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(value.woman[index].titel!),
                     Text(value.woman[index].price!),
                     const Icon(Icons.add_shopping_cart,color: Colors.red,),
                   ],
                 ),
               ),
            ],),
        );
       }
         ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }
    ));
  }
}
