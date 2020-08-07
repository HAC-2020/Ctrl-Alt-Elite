import 'package:flutter/material.dart';
import 'package:medical_app/widgets/gradient_button.dart';
 

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  final TextEditingController _emailcontroller=TextEditingController();
  final TextEditingController _passwordcontroller =TextEditingController();
  final TextEditingController _confirmpasswordcontroller =TextEditingController();
  @override
  void initState() {
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
              child: Column(
          children: <Widget>[
            TextFormField(
              controller: _emailcontroller,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                labelText: "Email",
              ),
              keyboardType: TextInputType.emailAddress,
              autovalidate: true,
            ),
              TextFormField(
              controller: _passwordcontroller,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: "Password",
              ),
              obscureText: true,
              autovalidate: true,
            ),
            TextFormField(
              controller: _confirmpasswordcontroller,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: "Confirm-Password",
              ),
              obscureText: true,
              autovalidate: true,
            ),
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
              onPressed: () {},
              text: Text('Register',
              style: TextStyle(color: Colors.white,fontSize: 20,),
              textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height:10,),
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