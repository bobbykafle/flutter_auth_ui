import 'package:flutter/material.dart';
import 'package:first_project/widgets/component.dart';

import 'package:first_project/widgets/app_validators.dart';

class Passwordfield extends StatefulWidget {
   final String title;
   final TextEditingController controller;
   final TextEditingController? matchController;
   final bool isConfirm;
   final String? Function(String?)? validator;

   const Passwordfield({
    super.key,
    this.title ='Password' ,
    required this.controller,
     this.matchController,
    this.isConfirm =false,
   this.validator,

    });

  @override
  State<Passwordfield> createState() => _PasswordfieldState();
}

class _PasswordfieldState extends State<Passwordfield> {
 
 final passwordController = TextEditingController();
  bool obscureText = true;
  bool show = false;


  @override
  Widget build(BuildContext context) {
    return myForm(
                  controller: widget.controller, 
                        label:Icon(Icons.lock), 
                        title: widget.title, 
                        icon: Icons.lock_outlined,
                        obscureText: obscureText,
                        textInputAction: TextInputAction.done,
                        iconData: Icons.remove_red_eye,
                        onIconButtonPressed: (){
                          _onPasswordIconClicked(); //calling function 
                        },
                        validator: widget.isConfirm ?(val)=>
                        Appvalidaors.matchPassword(widget.matchController?.text,val)
                        :widget.validator, // Pass validator to myForm
                             
                        );
  }
  
  void _onPasswordIconClicked() { 
    setState(() {
       obscureText = !obscureText;
  },
  
  );
  }
} 

