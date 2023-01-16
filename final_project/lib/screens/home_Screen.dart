import 'package:final_project/provider/getdata_provider.dart';

import 'product_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
     Provider.of<GetData>(context,listen: false).getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double Wdith = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My shop'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Consumer<GetData>(
        builder: ((_, value, __) {
          if(value.loaded==true){
            return const Center(child:  CircularProgressIndicator());
          }
          return ListView.builder(
        itemCount: value.categoriesData.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Productscreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                height: height * 0.1,
                width: Wdith,
                child: Center(
                    child: Text(
                value.categoriesData[index].name.toString(),
                  style: const TextStyle(fontSize: 50),
                )),
              ),
            ),
          );
        },
      );
        }),
      )
    );
  }
}
