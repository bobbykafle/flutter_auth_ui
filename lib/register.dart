import 'package:flutter/material.dart';
import 'package:first_project/widgets/app_validators.dart';
import 'package:first_project/widgets/bold_text.dart';
import 'package:first_project/widgets/button.dart';
import 'package:first_project/widgets/component.dart';
import 'package:first_project/widgets/password_field.dart';
import 'login.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {

final _formKey = GlobalKey<FormState>();

final userController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();
final confirmPasswordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey ,

       body:SafeArea(
        child:Padding(
          padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 60),
          child: Form(
            key:_formKey,
            child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
              Center(
                child: 
                const SizedBox(
                  height: 20,
                ),  
              ),
            
              Boldtext(
                text: "Welcome !",
                ),
                const SizedBox(
                  height: 20,
                ),
                 //calling myForm for user, password , email , phoneno 
                 myForm(
                  controller: userController, 
                  label: Icon(Icons.person), 
                  title: "Username", 
                  icon: Icons.person_2_outlined, 
                  validator: (v) => Appvalidaors.empty(v, 'username'),
                  ),
                  const SizedBox(
                          height: 15,
                         ),
            
                myForm(controller: emailController, 
                label: Icon(Icons.email), 
                title: "Email", 
                icon: Icons.email_outlined, 
                validator:(v) => Appvalidaors.email(v),
                ),
                const SizedBox(
                          height: 15,
                         ),
                      Passwordfield(
                        controller: passwordController,
                        validator: (v) => Appvalidaors.StrongPassword(v),
                         
                      ),
            
                const SizedBox(
                          height: 15,
                         ), 
                
                         Passwordfield( 
                          title:"Confirm Password",
                          controller: confirmPasswordController,
                          matchController: passwordController,
                          isConfirm: true, 
                           validator: (v)=> Appvalidaors.matchPassword(
                          passwordController.text,v,
                              ),
                          ), 
                          
                          const SizedBox(
                            height:15,
                          ),
            
                          my_buttonState(
                            buttonText: "Register",
                             
                            //calling button validator 
                
                            onValidSubmit: () {
                             if (_formKey.currentState!.validate()){   
                              Navigator.pushNamed(context, "/dashboard",);
                             } 
                             
                            },
                          ),
                          const SizedBox(
                              height: 10,
                            ),
            
            
                           Center(
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Boldtext(
                                  text: "Already have an account",
                                  size:11,
                                  color: Colors.black,),
                             
                                  
                                  TextButton(
                                     onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_)=> Login(),
                                          ),
                                         );
                                     },
                                     child: Boldtext(
                                      text: "Sign in",
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
 
