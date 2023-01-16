import 'package:flutter/material.dart';
import 'home_Screen.dart';
import 'signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
 final email = TextEditingController();
 bool test=false;
  final password = TextEditingController();

  // ignore: non_constant_identifier_names
  bool icon_password=true;
 Future signIn()async{
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email.text.trim(),
     password: password.text.trim());
     if(FirebaseAuth.instance.currentUser!=null){
       // ignore: use_build_context_synchronously
Navigator.pushAndRemoveUntil(context, 
  MaterialPageRoute(builder: (_) => const HomeScreen()), (route) => false);
     }
     else{
      // ignore: use_build_context_synchronously
      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>LoginScreen()));
     }
 }
 @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        // ignore: prefer_const_literals_to_create_immutables
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35,horizontal: 15),
          child: SingleChildScrollView(
            child: 
                Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.red,
                                    child: CircleAvatar(radius: 28, backgroundColor: Colors.white, 
                                    child: Text('R',style: TextStyle(color: Colors.red,fontSize: 40),),)),
                                    // ignore: prefer_const_constructors
                                    SizedBox(
                                      height: 20,
                                    ),
                                    // ignore: prefer_const_constructors
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10),
                                      child: const Text('Log In Now',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                    ),
                                    const Text('Please login to continue using our app'),
                                    const SizedBox(height: 25,),
                                     Padding(
                                       padding: const EdgeInsets.symmetric(vertical: 10),
                                       child: TextFormField(
                                        style: const TextStyle(color: Colors.grey),
                                        controller: email,
                // ignore: prefer_const_constructors
                decoration:
          
                 const InputDecoration(
                                      focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
          ),
                                     ),
                
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 15),
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
                // ignore: prefer_const_constructors
                Align(
                  alignment: Alignment.centerRight,
                  child: const Text('Forget Pasword?',
                  style: TextStyle(color:Colors.grey,fontWeight: FontWeight.w700,fontSize: 15),),
                ),
                  const SizedBox(height: 50,),
                
               
                InkWell(
                  onTap: () {
                    signIn();
                    
                    },
                  child: Container( height: 70,
                  width: double.infinity,color: const Color.fromARGB(255,251,77,102), 
                  // ignore: prefer_const_constructors
                  child: Center(
                    child: const Text('Login In',
                                             style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),),
                ),
                SizedBox(height: 25,),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            const Text('Donot have account ?   ',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
                            InkWell(
                             onTap: () {
                               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) =>  const SignUpScreen()),
                               );
                             },
                             child: const Text('Sign Up',style: TextStyle(color: Colors.red),)),
                            
                          ],
                        ),
                        SizedBox(height: 35,),
                         const Text('Or connect with',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
                         SizedBox(height: 25,),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal:50),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: 
                      AssetImage('assets/facebookImage.png') ),
                             CircleAvatar(
                      radius: 25,
                      backgroundImage: 
                      AssetImage('assets/google.png')),
                             CircleAvatar(
                               backgroundColor: Colors.white,
                      radius: 25,
                      backgroundImage: 
                                 AssetImage('assets/twitterImage.png')),
                   ],),
                 ),  
               ],
                ),
          ),
        ),
      ),
    );
  }
}