import 'package:flutter/material.dart';
import 'package:first_project/widgets/bold_text.dart';
import 'package:first_project/widgets/button.dart';
import 'package:first_project/widgets/password_field.dart';
 import 'package:first_project/widgets/app_validators.dart';
class Changepassword extends StatefulWidget {
const Changepassword({super.key});

  @override
  State<Changepassword> createState() => _ChangepasswordState();
  
}

class _ChangepasswordState extends State<Changepassword> {
  final _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  
 


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey,
    
      body:SafeArea(
        child:Padding(
          padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 60),
          child: Form( //warp column with widget
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
            
                      Boldtext(text: "Change Password !"),
                      const SizedBox(
                        height: 20,
                      ),
                
                  Passwordfield(
                    controller: passwordController, 
                    validator: (v)=> Appvalidaors.StrongPassword(v)),
            
                const SizedBox(
                          height: 15,
                         ), 
                
                  Passwordfield(
                  title: 'Confirm Password', 
                  controller: confirmPasswordController, 
                  matchController: passwordController,
                  isConfirm: true,
                  validator: (v) => Appvalidaors.matchPassword(
                     passwordController.text,v,),
                  
                  
                  ),
            
                  const SizedBox(
                          height: 15,
                         ), 
                
                my_buttonState(
                            buttonText: "Password change",  //calling button validator
                           
                            onValidSubmit: () { 
                              // Show success message
                              if(_formKey.currentState!.validate()){    
                    
                              Navigator.pushNamed(context, '/login' );
                              }
                             }, text: '',  //
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
