

import 'package:flutter/material.dart';
import 'package:medical_app/screen/login_form.dart';
import 'package:medical_app/screen/register_screen.dart';
import 'package:medical_app/widgets/gradient_button.dart';

import 'login_screen.dart';



class Welcome extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        
              child: Column(
          children: <Widget>[
            
           
            SizedBox(
              height: 60,
            ),
            GradientButton(
              width: 200,
              height: 45,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              },
              text: Text('SignIn',
              style: TextStyle(color: Colors.white,fontSize: 20,),
              textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height:30,),
            GradientButton(
              width: 200,
              height: 45,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
              },
              text: Text('Signup',
              style: TextStyle(color: Colors.white,fontSize: 20),
              ),
            ),
        
          
          ],
              
        ),
      ),
    );
  }
 
}