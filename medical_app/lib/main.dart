import 'package:flutter/material.dart';
import 'package:medical_app/models/user.dart';
import 'package:medical_app/screen/login_screen.dart';
import 'package:medical_app/screen/wrapper.dart';
import 'package:medical_app/services/auth.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
          child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
       home: Wrapper(),
      
      ),
    );
  }
}
