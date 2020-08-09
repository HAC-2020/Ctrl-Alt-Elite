import 'package:firebase_auth/firebase_auth.dart';
import 'package:HAC/models/user.dart';

import 'database.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }

  Future regInWithEmail(String email, String password, String name) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      await DatabaseService(uid: user.uid).updateUserData(name);
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // Future<FirebaseUser> _handleSignIn() async {
  // final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
  // final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

  // final AuthCredential credential = GoogleAuthProvider.getCredential(
  //   accessToken: googleAuth.accessToken,
  //   idToken: googleAuth.idToken,
  // );

//   final FirebaseUser user = await _auth.signInWithCredential(credential);
//   print("signed in " + user.displayName);
//   print("signed in " + user.email);
//   return user;
// }



  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
