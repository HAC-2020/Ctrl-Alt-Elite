import 'package:HAC/medicinelist1.dart';
import 'package:HAC/medicinelist2.dart';
import 'package:flutter/material.dart';

import 'package:HAC/constants.dart';
import 'package:HAC/medicinelist.dart';

// We need stateful widget because we need to change some sate on our category
class Categorylist extends StatefulWidget {
  @override
  _CategorylistState createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  int selectedCategory = 0;
  List<String> categories = ["Fever/Weakness", "Cough/Cold", "Breathing Problem"];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, context),
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
          if(index==1){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: index == 1 ? (context) => Medicinelist() : null),
          );
        }
        if(index==0){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: index == 0 ? (context) => Medicinelist1() : null),
          );

        }
        if(index==2){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: index == 2 ? (context) => Medicinelist2() : null),
          );
        }
        },
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: Theme.of(context).textTheme.title.copyWith(
                    fontWeight: FontWeight.w600,
                    color: index == selectedCategory
                        ? kTextColor
                        : Colors.black.withOpacity(0.4),
                  ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              height: 6,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index == selectedCategory
                    ? kSecondaryColor
                    : Colors.transparent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
