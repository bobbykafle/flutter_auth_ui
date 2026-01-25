// ignore_for_file: unused_element_parameter

import 'package:flutter/material.dart';
import 'package:first_project/widgets/bold_text.dart';

// ignore: camel_case_types
 class my_buttonState extends StatelessWidget {
    final String buttonText;
    final  Function() onValidSubmit; //click after validate 
  
    
  const my_buttonState({
       super.key,
       required this.buttonText,
       required this.onValidSubmit, required String text,
       

   });

  
   //calling widget validator
  @override
  Widget build(BuildContext context) {
// ignore: unused_local_variable
final colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      color: colorScheme.primary, // background adapts theme
                 child: InkWell(
                  onTap: () =>  onValidSubmit(),
                   child: Container( 
                    padding:EdgeInsets.symmetric(horizontal: 7,vertical: 10,
                    ),
                    decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(7),
                    color: const Color.fromARGB(255, 65, 91, 139),
                    ),  
                    width: MediaQuery.of(context).size.width,
                   child: Align(
                   alignment: Alignment.center,
                    child: Boldtext(
                     text: buttonText,
                       size: 13, // font text
                              
                                   ),
                                  
                                  ),
                                  ),
                 ),
           );
  }
}
