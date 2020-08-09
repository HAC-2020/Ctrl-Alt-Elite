import 'package:med_easy/navigation_home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:med_easy/homeactivity.dart';
import 'package:med_easy/main.dart';
//import 'package:med_easy/services/database.dart';

//import 'package:med_easykathon/temp.dart';
import 'package:med_easy/models/user.dart';
import 'package:med_easy/screen/login_form.dart';
import 'package:med_easy/screen/login_screen.dart';
import 'package:med_easy/screen/register_form.dart';
import 'package:med_easy/screen/welcome.dart';
import 'package:provider/provider.dart';
import 'package:med_easy/custom_drawer/home_drawer.dart';
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
