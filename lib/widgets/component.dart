import 'package:flutter/material.dart';
import 'package:first_project/widgets/icon_with_text.dart';



// ignore: must_be_immutable
class myForm extends StatefulWidget {
  final TextEditingController controller;
  TextInputAction? textInputAction; 
  final TextInputType textInputType;
  final Widget label;
  final String title;
  final IconData icon;
  final IconData? iconData;
  Function()? onIconButtonPressed;
  bool obscureText;
  final String? Function(String?)? validator;


   myForm({
    super.key,
    required this.controller,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.obscureText = false, 
     required this.label, 
    required this.title, 
    required this.icon,
     this.iconData,
     this.onIconButtonPressed, 
     this.validator,
   // defult valuue is flase
    });

  @override
  State<myForm> createState() => _myFormState();
}

// ignore: camel_case_types
class _myFormState extends State<myForm> {
 
   
   

  @override
  Widget build(BuildContext context) {
    return   TextFormField(
                            controller: widget.controller,
                            obscureText: widget.obscureText,
                            maxLines: 1,
                            textInputAction: widget.textInputAction,
                            keyboardType: widget.textInputType,
                            validator: widget.validator,
                            decoration: InputDecoration(
                                 suffixIcon:IconButton(
                                  onPressed: ()=> widget.onIconButtonPressed!(),
                                   icon: Icon(
                                    widget.iconData,
                                   ),
                                   )  ,
                                 label: Iconwithtext(
                                  icon: widget.icon,
                                  text:widget.title,
                                  sizeIcon: 11,
                                  sizeText: 11,
                                  ),
                                
                                   border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                         ),
                            
                               ),
                               );
  }
}
