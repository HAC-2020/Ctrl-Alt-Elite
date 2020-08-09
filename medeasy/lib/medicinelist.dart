import 'package:flutter/material.dart';

import 'item.dart';
import 'item_description.dart';

class Medicinelist extends StatefulWidget {
  @override
  _MedicinelistState createState() => _MedicinelistState();
}

class _MedicinelistState extends State<Medicinelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(60,175,247,1),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.black,
                          size: 28,
                        )),
                    Icon(
                      Icons.filter_list,
                      color: Colors.black,
                      size: 28,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              // TextField(
              //   decoration: InputDecoration(
              //     hintText: 'Search',
              //     hintStyle: TextStyle(fontSize: 16),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(15),
              //       borderSide: BorderSide(
              //         width: 0,
              //         style: BorderStyle.none,
              //       ),
              //     ),
              //     filled: true,
              //     fillColor: Colors.grey[200],
              //     contentPadding: EdgeInsets.all(20),
              //     prefixIcon: Padding(
              //       padding: EdgeInsets.only(left: 24.0, right: 16.0),
              //       child: Icon(
              //         Icons.search,
              //         color: Colors.black,
              //         size: 28,
              //       ),
              //     ),
              //   ),
              // ),
              Text(
                'Cough and cold',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: GridView.count(
                  physics: BouncingScrollPhysics(),
                  childAspectRatio: 1 / 1.5,
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: getGridItems()
                      .map((item) => renderGridItem(item))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget renderGridItem(Item item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ItemDescription(item: item)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: item.color,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                item.title,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    r"Rs " + item.price,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    item.priceDescription,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Expanded(
                child: Hero(
                  tag: item.title,
                  child: Image.asset(
                    item.imageUrl,
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
