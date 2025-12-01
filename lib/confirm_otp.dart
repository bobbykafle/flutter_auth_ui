// ignore: file_names';

import 'package:first_project/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:first_project/widgets/bold_text.dart';
import 'package:pinput/pinput.dart';

 class ConfirmOtp extends StatefulWidget {
  const ConfirmOtp({super.key});

  @override
  State<ConfirmOtp> createState() => _ConfirmOtpState();
}

class _ConfirmOtpState extends State<ConfirmOtp> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String validPin ='1234';
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:  Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 60),
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
                     "Confirm OTP \n",
                     size: 18,
                     ),
                    const SizedBox(
                      height: 50,
                    ),

                    Boldtext(text: "Enter the OTP sent in your email id",
                    size: 14,
                    
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                  _pinInputForm(),
           ]  
        ),
      ),
    ),
    );
  }



  _pinInputForm() {
    return Form(
      key: formkey,
      child: Column(
      children: [Pinput(
        length:4,
        validator: (value){
          if(value == validPin){
            return null;
          }
          else{
            return "PIN is incorrect";
          }
        },

       onCompleted: (pin){
        if(pin == validPin){
         //optional auto-submit 
        }
       },

      ),
      const SizedBox(
        height: 20,
      ),

      my_buttonState
      (buttonText: 'change password', 
      onValidSubmit:() {
        if(formkey.currentState!.validate()){
          Navigator.pushNamed(context, "/change_password");
          
        }
      },
      )
      
        ],
    ),
    );
  }
  }
