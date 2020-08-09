import 'dart:io';
import 'package:med_easy/app_theme.dart';
import 'package:med_easy/models/user.dart';
import 'package:med_easy/screen/wrapper.dart';
import 'package:med_easy/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'navigation_home_screen.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => runApp(new MaterialApp(
        home: new App(),
      )));
}

class App extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      title: new Text(
        '            MedEasy         '
        ' Your Health Partner',
        style: GoogleFonts.acme(fontSize: 50, color: Colors.blue),
        //new TextStyle(
        //fontWeight: FontWeight.bold, fontSize: 45.0, color: Colors.blue),
      ),
      seconds: 8,
      navigateAfterSeconds: MyApp(),
      image: new Image.asset('assets/loading.gif'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 150.0,
      //onClick: () => print("Flutter Egypt"),
      loaderColor: Colors.white,
    );
  }
}

//class App extends StatefulWidget {
//  @override
// _AppState createState() => _AppState();
//}

//prev

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        title: 'Flutter UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          //textTheme: AppTheme.textTheme,
          platform: TargetPlatform.iOS,
        ),
        home: Wrapper(),
      ),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
