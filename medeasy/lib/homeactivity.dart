import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:HAC/services/auth.dart';
import 'package:HAC/widgets/gradient_button.dart';

class HomeScreen extends StatelessWidget {
  
  final AuthService _auth = AuthService();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formkey,
        child: Column(
          children: <Widget>[
            // TextField(
            //     decoration: InputDecoration(
            //       contentPadding: EdgeInsets.only(top: 20,bottom: 20),
            //       prefixIcon: Padding(
            //         padding: const EdgeInsets.only(left:20,right:20),
            //         child: Icon(Icons.email),
            //       ),
            //     ),
            // ),
            SizedBox(
              height: 60,
            ),
            GradientButton(
              width: 200,
              height: 45,
              onPressed: () async {
                await _auth.signOut();
              },
              text: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // GradientButton(
            //   width: 120,
            //   height: 45,
            //   onPressed: () {},
            //   text: Text('Signup',
            //   style: TextStyle(color: Colors.white),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
