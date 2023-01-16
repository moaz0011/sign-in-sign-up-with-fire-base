// getdata() async {
//                     String emaillogin = _emaillogin.value.text;
//                     String passwordlogin = _emaillogin.value.text;
//                    final snapshot = await _fireStore.collection("users").get();//child('users/$userId').get();
                     
//                       // print(snapshot.docs.length);
//                       for ( var item in snapshot.docs){
//                         print(item.data()['password']);
//                         if(item.data()['password'].toString()==passwordlogin&&
//                             item.data()['email'].toString()==emaillogin
//                         ){
//                            Navigator.push(context, MaterialPageRoute(builder: (context){
//                             return HomeScreen();
//                           }
//                           ),
//                           );
//                           print("if");
//                              }
//                         else{
//                           print("else");
//                         }
//                                 print(item.data());
//                       }
//                       }