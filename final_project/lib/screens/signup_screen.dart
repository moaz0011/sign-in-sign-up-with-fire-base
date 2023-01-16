import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/auth_provider.dart';
import 'login_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
 // ignore: non_constant_identifier_names
  final fullname = TextEditingController();
  final _fireStore = FirebaseFirestore.instance;

   Future signUp() async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email.text.trim(),
       password: password.text.trim());
  }
  bool icon_password=true;
  final password = TextEditingController();
final email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                  const CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.red,
                                  child: CircleAvatar(radius: 28, backgroundColor: Colors.white, 
                                  child: Text('R',style: TextStyle(color: Colors.red,fontSize: 40),),)),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 15),
                                    child: Text('Sign Up Now',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                  ),
                                  
                                  const Text('Please fill the details and create account '),
                                  const SizedBox(height: 35,),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(vertical: 5),
                                     child: TextFormField(
                                      style: const TextStyle(color: Colors.grey),
                                      controller: fullname,
              // ignore: prefer_const_constructors
              decoration:
               const InputDecoration(
                                    focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                border: OutlineInputBorder(),
                hintText: 'Full NAME',
              ),
        ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(vertical: 5),
                                     child: TextFormField(
                                      style: const TextStyle(color: Colors.grey),
                                      controller: email,
              // ignore: prefer_const_constructors
              decoration:
        
               const InputDecoration(
                                    focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                border: OutlineInputBorder(),
                hintText: 'Email',
              ),
        ),
                                   ),
              
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 5),
           child: TextFormField(
                                      style: const TextStyle(color: Colors.grey),
                                      controller: password,
                                      obscureText: icon_password,
                // ignore: prefer_const_constructors
                decoration:
                  InputDecoration(
                    focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  border: const OutlineInputBorder(),
                  hintText: 'Password',
                  suffix: InkWell(
                    onTap: () {
                      icon_password=!icon_password;
                      setState(() {});
                    },
                    child: Icon(icon_password!=true?Icons.visibility:Icons.visibility_off,))),
                ),
         ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text('Password must be more than 6 chartchar',
                  style: TextStyle(color:Colors.grey,fontWeight: FontWeight.w700,fontSize: 14),),
                ),
              ),
              Column(
                 children: [
                //   Consumer<Authprovider>(builder: (_, value, __) {
                //     if(value.loaded==true )
                //  // ignore: curly_braces_in_flow_control_structures
                //  return
                    
                   Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: InkWell(
                               onTap: () {
                                  signUp();
                                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  LoginScreen()),
                  );
                               },
                               //() async {
                        //           // Provider.of<Authprovider>(context,listen: false).Login(fullname,password);
                        //           // value.Login(email.value.text, password.value.text,context);
                        //         await _fireStore.collection("Regester").add({
                        //           "fullname":fullname.value.text,
                        //           "Email":email.value.text,
                        //           "Password":password.value.text,
                                 
                        // });
                        //       },
                              child: Container( height: 70,
                              width: double.infinity,color: const Color.fromARGB(255,251,77,102), 
                              child: const Center(child: Text('Regester',
                                                       style: TextStyle(fontSize: 20,color: Colors.white),)),),
                            ),),
                  // return Center(child: CircularProgressIndicator()),
                  
                           Row( mainAxisAlignment: MainAxisAlignment.center,
                             children:  [
                               const Text('Already have an account ?   ',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
                               InkWell(
                                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  LoginScreen()),
                  ),
                                child: const Text('Login In',style: TextStyle(color: Colors.red),)),
                               
                             ],
                           ),
                           const SizedBox(height: 15,),
                            const Text('Or connect with',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
                            const SizedBox(height: 15,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal:50),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage:
                    AssetImage('assets/facebookImage.png') 
                    ),
                                CircleAvatar(
                    radius: 25,
                    backgroundImage: 
                   AssetImage('assets/google.png')
                   ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                    radius: 25,
                    backgroundImage: 
                    AssetImage('assets/twitterImage.png')),
                 ],),
               )
                 ],
               ),  
            ],
          ),
        ),
      ),
    );
  }
}