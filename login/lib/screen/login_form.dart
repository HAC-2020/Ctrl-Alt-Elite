import 'package:flutter/material.dart';
import 'package:medical_app/screen/register_screen.dart';
import 'package:medical_app/widgets/gradient_button.dart';
 

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

    Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login with Google'),
            AssetImage(
              'images/google.jpg',
            ),
          ),
        ],
      ),
    );
  }
    Widget _buildSignupBtn() {
    return GestureDetector(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder: (_){
          return RegisterScreen();
        }));
      } ,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  final TextEditingController _emailcontroller=TextEditingController();
  final TextEditingController _passwordcontroller =TextEditingController();
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
            SizedBox(
              height:20,
            ),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left:35)),
              Text(
              'Forgot Password?',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                
              ),
              // textAlign: TextAlign.left,
              ),
              Spacer()
            ],
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
              height: 20,
            ),
            GradientButton(
              width: 200,
              height: 45,
              onPressed: () {},
              text: Text('Login',
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
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Sign in with',
        ),
          _buildSocialBtnRow(),
          _buildSignupBtn(),
          ],
              
        ),
      ),
    );
  }
}