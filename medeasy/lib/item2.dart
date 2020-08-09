import 'dart:ui';

class Item2 {
  String title;
  String description;
  Color color;
  String price;
  String priceDescription;
  String imageUrl;

  Item2(this.title, this.description, this.color, this.price,
      this.priceDescription, this.imageUrl);
}

List<Item2> getGridItems() {
  return <Item2>[
    Item2(
      'Bronchodilators',
      'A bronchodilator is a medication that relaxes and opens the airways, or bronchi, in the lungs.',
      Color(0xFFFfffff),
      '155',
      '1 box',
      'assets/bron.jpg',
    ),
    Item2(
      'Ipratropium',
      'Ipratropium is in a class of medications called bronchodilators. It works by relaxing and opening the air passages to the lungs to make breathing easier.',
      Color(0xFFFfffff),
      '148',
      '1 box',
      'assets/ipra.jpeg',
    ),
    Item2(
      'Albuterol',
      'Albuterol is a type of drug called a short-acting bronchodilator. It provides relief from an asthma attack by relaxing the smooth muscles in your airways.',
      Color(0xFFFfffff),
      '536',
      '1 box',
      'assets/albuterol.jpeg',
    ),
    Item2(
      'Roflumilast ',
      'Roflumilast (Daliresp) is a type of drug called a phosphodiesterase-4 inhibitor. It comes as a pill you take once per day',
      Color(0xFFFfffff),
      '100',
      '15 tabs',
      'assets/rofa.jpg',
    ),
  ];
}
