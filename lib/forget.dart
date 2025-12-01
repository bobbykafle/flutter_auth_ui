import 'package:flutter/material.dart';
import 'package:first_project/widgets/app_validators.dart';
import 'package:first_project/widgets/bold_text.dart';
import 'package:first_project/widgets/button.dart';
import 'package:first_project/widgets/component.dart';


// ignore: camel_case_types
class myPasswordState extends StatefulWidget {
  const myPasswordState({super.key});

  @override
  State<myPasswordState> createState() => _myPasswordStateState();
}

// ignore: camel_case_types
class _myPasswordStateState extends State<myPasswordState> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 60),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Center(
                child: 
                const SizedBox(
                  height: 50,
                ),
              ),
            
                      Boldtext(text:
                       "Forgot Password? \n",
                       size: 18,
                       ),
                      const SizedBox(
                        height: 30,
                      ),
            
                      Boldtext(text: "Enter Email or Phone no.",
                      size: 14,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      //call myform from component widget for email and password
                        
                        myForm(controller: emailController, 
                        label: Icon(Icons.email), 
                        title: "Enter your valid email",
                        icon: Icons.email_outlined, 
                        validator: (v) => Appvalidaors.email(v),
                        ), 
            
                         const SizedBox(
                          height: 14,
                         ),
                         //for OTP
                        my_buttonState(
                            buttonText: "Send OTP code.",
                            
                            onValidSubmit: () { 
                              if(_formKey.currentState!.validate()){
                                Navigator.pushNamed(context, '/confirm_otp',
                                arguments: {"email": emailController.text}
                                );
                              }
                              
                              
                             },
                            ),
            
                ],
            ),
          ),
        )),
    );
  }
}
