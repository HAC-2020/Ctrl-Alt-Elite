import 'package:flutter/material.dart';
import 'item2.dart';
import 'SizeConfig.dart';

class ItemDescription2 extends StatefulWidget {
  final Item2 item;

  ItemDescription2({@required this.item});

  @override
  _ItemDescription2State createState() => _ItemDescription2State();
}

class _ItemDescription2State extends State<ItemDescription2>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return Scaffold(
              body: Column(
                children: <Widget>[
                  Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 70 * SizeConfig.heightMultiplier,
                        decoration: BoxDecoration(
                          gradient: new LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.white,
                              ],
                              stops: [
                                0.0,
                                1.0
                              ],
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                              tileMode: TileMode.repeated),
                          // color: Colors.blue),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 50.0),
                        child: Row(
                          children: <Widget>[
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                )),
                            Spacer(),
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 130.0,
                        left: 100.0,
                        child: Hero(
                          tag: widget.item.title,
                          child: FadeTransition(
                            opacity: animation,
                            child: Image.asset(
                              widget.item.imageUrl,
                              fit: BoxFit.contain,
                              height: 50 * SizeConfig.imageSizeMultiplier,
                              width: 50 * SizeConfig.imageSizeMultiplier,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 45 * SizeConfig.heightMultiplier,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 55 * SizeConfig.heightMultiplier,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.0),
                                topLeft: Radius.circular(40.0),
                              )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 50.0, bottom: 20.0),
                                child: Text(
                                  widget.item.title,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 3 * SizeConfig.textMultiplier,
                                      fontFamily: 'OpenSans'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 20.0),
                                child: Text(
                                  widget.item.description,
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 0.2,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 1.8 * SizeConfig.textMultiplier,
                                      fontFamily: 'OpenSans'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0, top: 30.0),
                                child: Row(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              border: Border.all(
                                                  color: Colors.black)),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3 * SizeConfig.widthMultiplier,
                                        ),
                                        Text(
                                          "01",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                                  3 * SizeConfig.textMultiplier,
                                              fontFamily: 'OpenSans'),
                                        ),
                                        SizedBox(
                                          width: 3 * SizeConfig.widthMultiplier,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              border: Border.all(
                                                  color: Colors.black)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5.0, right: 5.0),
                                            child: Text(
                                              "-",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 3 *
                                                      SizeConfig.textMultiplier,
                                                  fontFamily: 'OpenSans'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      widget.item.priceDescription,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              3 * SizeConfig.textMultiplier,
                                          fontFamily: 'OpenSans-Bold'),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 2 * SizeConfig.heightMultiplier,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0, top: 40.0),
                                child: Row(
                                  children: <Widget>[],
                                ),
                              ),
                              SizedBox(
                                height: 3 * SizeConfig.heightMultiplier,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3 * SizeConfig.widthMultiplier,
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.blue),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(
                                                Icons.shopping_basket,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 1 *
                                                    SizeConfig.widthMultiplier,
                                              ),
                                              Text(
                                                "Add to cart",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 2.5 *
                                                        SizeConfig
                                                            .textMultiplier,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily:
                                                        'OpenSans-Bold'),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
