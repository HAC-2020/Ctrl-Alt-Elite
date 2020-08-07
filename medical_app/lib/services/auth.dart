import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medical_app/models/user.dart';


class AuthService{
  final FirebaseAuth _auth= FirebaseAuth.instance;
  final GoogleSignIn googleSignIn= new GoogleSignIn();

  User _userFromFirebaseUser(FirebaseUser user){
    return user !=null ?User(uid: user.uid) :null;

  }
  Stream<User>get user{
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }

   Future regInWithEmail(String email, String password, String name) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      //await DatabaseService(uid: user.uid).updateUserData(name);
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    } 
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  
  
}