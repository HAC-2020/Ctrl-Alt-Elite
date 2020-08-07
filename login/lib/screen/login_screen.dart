import 'package:flutter/material.dart';
import 'package:medical_app/screen/login_form.dart';
import 'package:medical_app/widgets/curved_widget.dart';

class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body:Container(
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffffffff), Color(0xffffffff)],
          ),
          ),
      child: SingleChildScrollView(
              child: Stack(
          children: <Widget>[
            CurvedWidget(
              child:Container(
                padding: const EdgeInsets.only(top:100,left:50),
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue,Colors.blue.withOpacity(.4)],
                    ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                  ),
              )
            ),
            Container(
              margin: const EdgeInsets.only(top:230),
              child:LoginForm(),
            )
          ],
        ),
      ),
    ),
  );
  }
  }
