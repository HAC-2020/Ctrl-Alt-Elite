 import 'dart:ui';

class Item {
  
  int id;
  String title;
  String description;
  Color color;
  int price;
  String priceDescription;
  String imageUrl;
  int qty;


  Item({this.id,this.title, this.description, this.color, this.price, this.priceDescription, this.imageUrl,this.qty});

}

// ignore: unused_element
List<Item> _items = [
    Item(
     id: 1,
     title: 'Charak Pharma',
     description: '''Manufactured by : Charak Pharma Pvt Ltd
      Common use : As per physician's advice, may be useful in prevention of infection and immunity
Dosage : One tablet, 2 times a day''', 
      color:Color(0xFFF4E389), 
       price:115, 
      priceDescription:'10 tabs', 
     imageUrl: 'assets/images/immune.jpg',
      qty:1,
    ),
    Item(
      id:2,
      title:'Nutrainix Vit C',
      description:'''Packed with the power of 40 Amlas, Nutrainix Charge is a natural effervescent supplement to protect you against infectionsNutrainix Charge can be consumed by anyone and is recommended for daily use for better results.''', 
      color:Color(0xFFDFDFF8), 
      price:148, 
      priceDescription:'1 bottle', 
      imageUrl:'assets/images/nutranix.jpg',
      qty:1 ,  
    ),
//     Item(
//       3,
//       'Fast&Up Vit C',
//        '''Amway Tablets
// Nutrilite Natural
// Its C-120N Tablets''', 
//       Color(0xFFEAB9E7), 
//       536, 
//       '1bottle', 
//       'assets/images/nutrilite.jpg',
//       1,
//     ),
//     Item(
//       4,
//       'Paracetamol',
//        '''Paracetamol is used to treat many conditions such as headache, muscle aches, arthritis, backache, toothaches, colds, and fevers. It relieves pain in mild arthritis but has no effect on the underlying inflammation and swelling of the joint.''', 
//       Color(0xFFB4E0AA), 
//       82, 
//       '15 tabs', 
//       'assets/images/paracetamol.jpg',

// 1,    ),
    
    
  ];
