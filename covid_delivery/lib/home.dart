import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:covid_delivery/productCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 1125, height: 2436, allowFontScaling: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage('assets/virus2.jpeg'),
                      fit: BoxFit.fitHeight,
                      colorFilter: ColorFilter.mode(
                          Colors.white.withOpacity(0.5), BlendMode.srcOver)),
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //Image.asset("assets/virus.jpeg"),
                  Padding(
                    padding: EdgeInsets.only(
                        top: ScreenUtil().setHeight(40),
                        right: ScreenUtil().setHeight(40),
                        left: ScreenUtil().setHeight(40)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.menu), onPressed: null),
                        Image.asset(
                          'assets/cart.png',
                          width: ScreenUtil().setWidth(260),
                          height: ScreenUtil().setHeight(260),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: ScreenUtil().setHeight(60),
                        right: ScreenUtil().setHeight(70),
                        left: ScreenUtil().setHeight(105)),
                    child: Text(
                      "Explore",
                      style: TextStyle(
                          fontSize: 30,
                          //fontFamily: 'bold',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(50),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        labelText: 'Search',
                        prefixIcon: IconButton(
                            icon: Icon(Icons.search),
                            color: Colors.blue,
                            onPressed: null),
                        suffixIcon: IconButton(
                            icon: Icon(Icons.clear),
                            color: Colors.blue,
                            onPressed: null),
                        hintText: 'Order Medicines from Nearby Shops',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(50),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(1050),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  //Shoes shoes = products[index];
                  return Padding(
                    padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(30),
                    ),
                    child: ProductCard(),
                  );
                },
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(60),
                      right: ScreenUtil().setHeight(70),
                      left: ScreenUtil().setHeight(105)),
                  child: Text(
                    'Nearby Shops',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 166,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/medicines1.jpg"),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
