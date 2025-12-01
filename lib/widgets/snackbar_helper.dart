// ignore_for_file: unused_label

import 'package:flutter/material.dart';


enum SnackbarState { neutral, success,failure, error}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackbar(
  BuildContext context, 
   String message,{
    SnackbarState state = SnackbarState.neutral,
  }){
    return
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
            color: state == SnackbarState.neutral?
             Colors.black : Colors.white, 
          ),
          ),
           backgroundColor: _getSnackbarColor(state),
          duration: const Duration(seconds: 3),
          ),
          );
  }
  
  Color? _getSnackbarColor(SnackbarState state) {
    switch (state){
      case SnackbarState.neutral:
      return Colors.blueGrey;
      case SnackbarState.success:
      return Colors.green.shade300;
      case SnackbarState.failure:
      case SnackbarState.error:
      return Colors.red.shade400;
     
    }
   
  }
  

  
