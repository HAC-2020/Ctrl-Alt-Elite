import 'package:HAC/navigation_home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:HAC/homeactivity.dart';
import 'package:HAC/main.dart';
//import 'package:HAC/services/database.dart';

//import 'package:HACkathon/temp.dart';
import 'package:HAC/models/user.dart';
import 'package:HAC/screen/login_form.dart';
import 'package:HAC/screen/login_screen.dart';
import 'package:HAC/screen/register_form.dart';
import 'package:HAC/screen/welcome.dart';
import 'package:provider/provider.dart';
import 'package:HAC/custom_drawer/home_drawer.dart';
import '../navigation_home_screen.dart';
import '../services/database.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    if (user == null) {
      return LoginScreen();
    } else {
        return NavigationHomeScreen();
      // return StreamProvider<QuerySnapshot>.value(
      //     value: DatabaseService().users,
      //     child: Temp(
      //       id: user.uid,
      //     ));
    }
  }
}
