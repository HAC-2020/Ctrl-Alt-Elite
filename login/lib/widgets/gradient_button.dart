import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final double width;
  final double height;
  final Function onPressed;
  final Text text;
  final Icon icon;

  const GradientButton(
      {Key key, this.width, this.height, this.onPressed, this.text, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color.fromRGBO(60,175,247,1), Color.fromRGBO(60,175, 247, 1)],
        ),
      ),
      child: MaterialButton(
          onPressed: this.onPressed,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: StadiumBorder(),
          child: Padding(
            padding: const EdgeInsets.only(right:40,left:50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                text,
              
              ],
            ),
          )),
    );
  }
}