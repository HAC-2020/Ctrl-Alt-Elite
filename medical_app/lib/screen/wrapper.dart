//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/homeactivity.dart';
//import 'package:medical_app/main.dart';
//import 'package:medical_app/services/database.dart';

//import 'package:hackathon/temp.dart';
import 'package:medical_app/models/user.dart';
//import 'package:medical_app/screen/login_form.dart';
import 'package:medical_app/screen/login_screen.dart';
//import 'package:medical_app/screen/register_form.dart';
//import 'package:medical_app/screen/welcome.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    if(user==null){
      return LoginScreen();
    }else{
      return HomeScreen();
    }
    
  }
  
}