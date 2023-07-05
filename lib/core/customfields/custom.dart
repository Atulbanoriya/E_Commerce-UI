import 'package:flutter/material.dart';

class Dialogs{

  static void showSnackbar(context , String msg){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg),
      backgroundColor: const Color(0xFF4C53A5).withOpacity(.8),

      behavior: SnackBarBehavior.floating,));
  }

  static void showProgressBar(context){
    showDialog(context: context,
        builder: (_)=> const Center(child: CircularProgressIndicator()));
  }





}