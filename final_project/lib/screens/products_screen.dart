import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class productS extends StatefulWidget {
  String itemsName;
   productS(this.itemsName, {super.key});

  @override
  State<productS> createState() => _productSState();
}

class _productSState extends State<productS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.itemsName),
      centerTitle: true,),
     
    );
  }
}