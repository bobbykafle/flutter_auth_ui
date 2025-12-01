// ignore_for_file: unused_field


import 'package:flutter/material.dart';
import 'package:first_project/widgets/app_validators.dart';
import 'package:first_project/widgets/password_field.dart';
import 'package:first_project/forget.dart';
import 'package:first_project/widgets/bold_text.dart';
import 'package:first_project/widgets/button.dart';
import 'package:first_project/widgets/component.dart';




class Login extends StatefulWidget {
   const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
    final _formKey = GlobalKey<FormState>();
  //text eiditing controllers 
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool show = false;
 //calling
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
    
      body:SafeArea(
        child:Padding(
          padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 60),
          child: Form(
            key: _formKey,
            child:SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
              Center(
                child: 
                const SizedBox(
                  height: 30,
                ),
              ),
            
                      Boldtext(text: "Welcome"),
                      const SizedBox(
                        height: 20,
                      ),
                      //call myform from component widget for email and password
                        myForm(
                          controller: emailController, 
                        label: Icon(Icons.email), 
                        title: "Email ", 
                        icon: Icons.email_outlined,
                        validator: (v)=> Appvalidaors.email(v),  
                        ), 
            
                         const SizedBox(
                          height: 17,
                         ),
                            
                         Passwordfield(
                          controller: passwordController,
                           validator: (v) => Appvalidaors.StrongPassword(v),
                         ),
                          
                         const SizedBox(
                          height: 13,
                         ),
                        
                         //for  Forgot password and Remember me with checkbox
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadiusGeometry.circular(3),
                                      ),
                                    
                                      value: show,
                                     onChanged: (value){
                                      setState(() { //responding checkbox
                                        show = !show;
                                      },
                                      );
                                     },
                                     ),
                                     Boldtext(
                                      text: "Remember me",
                                      size: 11,
                                     ),
                                  ],
                                  
                                ),
                                TextButton(
                                   onPressed: () {
                                    Navigator.push(context,
                                         MaterialPageRoute(
                                          builder: (_) => myPasswordState(), //Password
                                          ),
                                      );
                                     },
                                   child: Boldtext(
                                    text: "Forgot Password",
                                    size: 11,
                                    color: Colors.indigo,
                                   ),
                                ),
                              ],
                            ),
                              const SizedBox(
                                    height: 12,
                                     ),
                         
                         
                         // For Sign in button
                           my_buttonState(
                            buttonText: "Sign in", 
            
                            onValidSubmit: (){
                              if(_formKey.currentState!.validate()){
                              
                              Navigator.pushNamed(
                                context, 
                                "/dashboard");
                              }
                              else{
                                return;
                              }
            
                            },
                              
                             
                            ),
                             const SizedBox(
                              height: 15,
                             ),
                          // diving the part   
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                               child: Row(
                                 children: [
                                   Expanded(
                                     child: Divider(
                                      
                                      color: const Color.fromARGB(255, 20, 41, 52),
                                     ),
                                   ),
                                   Boldtext(
                                    text: "Or continue with",
                                    size: 11,),
                               
                                     Expanded(
                                     child: Divider(
                                      color: const Color.fromARGB(255, 20, 41, 52),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                             const SizedBox(
                                        height: 15,
                             ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               // squreTile(
                                 // imagePath: 'assets/images/icons8-google-100.png'),
                                 /// const SizedBox( width:10,),

                              // squreTile(
                                //  imagePath: 'assets/images/icons8-apple-inc-100.png'),                             
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
            
            
                           Center(
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Boldtext(
                                  text: "Don't have an account?",
                                  size:11,
                                  color: Colors.black,),
                             
                                  
                                  TextButton(
                                     onPressed: () { 
                                     Navigator.pushNamed(
                                      context,
                                      "/register"
                                     );
                                      },
            
                                      
                                     child: Boldtext(
                                      text: "Register now",
                                      size: 11,
                                      color: Colors.indigo,
                                     ),
                                  ),
                              ],
                             ),
                           ),
            
            
                          ],
                      ),
          ),
                  ),
                ),
         ),
              );
}
  
  
}
