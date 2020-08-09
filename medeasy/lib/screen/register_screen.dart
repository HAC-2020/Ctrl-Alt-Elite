import 'package:flutter/material.dart';
import 'package:HAC/screen/register_form.dart';
import 'package:HAC/widgets/curved_widget.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                  child: Container(
                padding: const EdgeInsets.only(top: 100, left: 50),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue, Colors.blue.withOpacity(.4)],
                  ),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              )),
              Container(
                margin: const EdgeInsets.only(top: 230),
                child: RegisterForm(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
