import 'package:flutter/material.dart';
import 'package:medical_app/services/auth.dart';
import 'package:medical_app/widgets/gradient_button.dart';

 

class RegisterForm extends StatefulWidget {
 
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

 final AuthService _auth = AuthService();
 final formKey=GlobalKey<FormState>();

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
              //validator: (val)=>val.isEmpty ? 'Enter name':null,
            
              onChanged: (val){
                setState(()=>name=val );
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText: "Name",
              ),
              keyboardType: TextInputType.text,
              autovalidate: true,
            ),
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
              height: 60,
            ),
            GradientButton(
              width: 200,
              height: 45,
              onPressed: () async{
                if(formKey.currentState.validate()){
                  dynamic result=await _auth.regInWithEmail(email, password,name);
                  if(result==null){
                    setState(() =>error='Enter valid Email/Password');
                  
                  }else{
                    Navigator.pop(context);
                  }
                }
              },
              text: Text('Register',
              style: TextStyle(color: Colors.white,fontSize: 20,),
              textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height:10,),
            Text(
              error,
              style:TextStyle(color :Colors.black) ,
            )
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