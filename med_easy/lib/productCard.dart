

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'item.dart';
import 'item_description.dart';

class ProductCard extends StatefulWidget {
  int index;
  ProductCard(this.index);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    if(widget.index==0){
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
                   child:Image.asset(
                    "assets/circle-cropped.png",
                    fit: BoxFit.contain,),
                  decoration: BoxDecoration(
                   
                      
                      color: Colors.white,
                        
                      
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
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
  if(widget.index==1){
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
                   child:Image.asset(
                    "assets/gloves-circle.png",
                    fit: BoxFit.contain,),
                  decoration: BoxDecoration(
                   
                      color: Colors.white,
                        
                      
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
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
  if(widget.index==2){
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
                  
                   child:Image.asset(
                    "assets/mask-circle.png",
                    fit: BoxFit.contain,),
                   
                  decoration: BoxDecoration(
                   
                     color: Colors.white,
                        
                      
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          offset: Offset(0, 8),
                          blurRadius: 8,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30)),
                      
                ),
              )),
              //  Expanded(
              //   child: GridView.count(
              //     physics: BouncingScrollPhysics(),
              //     childAspectRatio: 1 / 1.5,
              //     crossAxisCount: 2,
              //     crossAxisSpacing: 20,
              //     mainAxisSpacing: 20,
              //     children: getGridItems()
              //         .map((item) => renderGridItem(item))
              //         .toList(),
              //   ),
              // ),
        ],
      ),
    );
    
  }
  if(widget.index==3){
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
                   child:Image.asset(
                    "assets/shield-circle.png",
                    fit: BoxFit.contain,),
                    
                  decoration: BoxDecoration(
                   
                     color: Colors.white,
                        
                      
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
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
  
}


