import 'dart:ui';

class Item1 {
  String title;
  String description;
  Color color;
  String price;
  String priceDescription;
  String imageUrl;

  Item1(this.title, this.description, this.color, this.price,
      this.priceDescription, this.imageUrl);
}

List<Item1> getGridItems() {
  return <Item1>[
    Item1(
      'Crocin',
      'Crocin Pain Relief provides targeted pain relief. It provides symptomatic relief from mild to moderate pain ',
      Color(0xFFFfffff),
      '115',
      '10 tabs',
      'assets/crocin.jpeg',
    ),
    Item1(
      'Acetaminophen',
      'Acetaminophen is used to treat mild to moderate and pain, to treat moderate to severe pain in conjunction with opiates, or to reduce fever.',
      Color(0xFFFfffff),
      '150',
      '1 bottle',
      'assets/acetaminofen.jpeg',
    ),
    Item1(
      'Ibuprofen',
      'Ibuprofen is a nonsteroidal anti-inflammatory drug (NSAID). It works by reducing hormones that cause inflammation and pain in the body.',
      Color(0xFFFfffff),
      '200',
      '1bottle',
      'assets/ibprofen.jpeg',
    ),
    Item1(
      'Dolo 650',
      'Dolo 650 MG Tablet is one of the most common medicines consumed during a normal fever and to relieve mild to moderate pain',
      Color(0xFFFfffff),
      '120',
      '15 tabs',
      'assets/dolo.jpeg',
    ),
  ];
}
