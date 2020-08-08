import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: ScreenUtil().setWidth(642),
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(40)),
                child: Container(
                  width: ScreenUtil().setWidth(620),
                  height: ScreenUtil().setHeight(990),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.amberAccent, Colors.red],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 8),
                          blurRadius: 8,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30)),
                ),
              )),
        ],
      ),
    );
  }
}
