import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medical_app/screen/register_screen.dart';
import 'package:medical_app/services/auth.dart';
import 'package:medical_app/widgets/gradient_button.dart';

 

class LoginForm extends StatefulWidget {
 
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

 final AuthService _auth = AuthService();
 final formKey=GlobalKey<FormState>();

  final FirebaseAuth auth= FirebaseAuth.instance;
  final GoogleSignIn googleSignIn= new GoogleSignIn();

 String error = '';
String name='';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      
      child: Form(
        key: formKey,
              child: Column(
          children: <Widget>[
            
            TextFormField(
              
              onChanged: (val){
                setState(()=>email=val );
              },
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                labelText: "Email",
              ),
              keyboardType: TextInputType.emailAddress,
              autovalidate: true,
            ),
              TextFormField(
                validator: (val)=>val.length<6 ? 'Enter valid password':null,
              onChanged: (val){
                setState(()=>password=val );
              },
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: "Password",
              ),
              obscureText: true,
              
            ),
            
            SizedBox(
              height: 20,
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
            SizedBox(
                height: 20,
              ),
            GradientButton(
              width: 200,
              height: 45,
              onPressed: () async{
                if(formKey.currentState.validate()){
                  dynamic result=await _auth.signInWithEmailAndPassword(email, password);
                  if(result==null){
                    setState(() =>error='Enter valid Email/Password');
                  
                  }else{
                    Navigator.pop(context);
                  }
                }
              },
              text: Text('Login',
              style: TextStyle(color: Colors.white,fontSize: 20,),
              textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height:10,),
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
            // GradientButton(
            //   width: 120,
            //   height: 45,
            //   onPressed: () {},
            //   text: Text('Signup',
            //   style: TextStyle(color: Colors.white),
            //   ),
            // ),
        
          Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: (){},
    // onTap: ()=>_signin().then((FirebaseUser user) async =>print(user)).catchError((e)=>print(e)),
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
  // Future<FirebaseUser> _signin() async{
  //   GoogleSignInAccount googleSignInAccount=await googleSignIn.signIn();
  //   GoogleSignInAuthentication googleSignInAuthentication=await googleSignInAccount.authentication;
  //       final AuthCredential credential = GoogleAuthProvider.getCredential(
  //     accessToken: googleSignInAuthentication.accessToken,
  //     idToken: googleSignInAuthentication.idToken,
  //   );
  //   final AuthResult authResult = await auth.signInWithCredential(credential);
    
  //   FirebaseUser user = authResult.user;
  // print("signed in " + user.displayName);
  // return user;
    
   
  }
