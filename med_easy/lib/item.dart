import 'dart:ui';

class Item {
  String title;
  String description;
  Color color;
  String price;
  String priceDescription;
  String imageUrl;

  Item(this.title, this.description, this.color, this.price,
      this.priceDescription, this.imageUrl);
}

List<Item> getGridItems() {
  return <Item>[
    Item(
      'Lemolate',
      'Lemolate Gold Tablet is a combination medicine used in the treatment of common cold symptoms',
      Color(0xFFFfffff),
      '30',
      '10 tabs',
      'assets/lemolate.jpeg',
    ),
    Item(
      'Dextromethorphen',
      'Dextromethorphan is used to temporarily relieve cough caused by the common cold, the flu, or other conditions.',
      Color(0xFFFfffff),
      '100',
      '10 tabs',
      'assets/dextromethropan.jpeg',
    ),
    Item(
      'Guaifenesin',
      'Guaifenesin is used to treat coughs and congestion caused by the common cold, bronchitis, and other breathing illnesses.',
      Color(0xFFFfffff),
      '236',
      '1bottle',
      'assets/guaifenesin.jpeg',
    ),
    Item(
      'Paracetamol',
      '''Paracetamol is used to treat many conditions such as headache, muscle aches, arthritis, backache, toothaches, colds, and fevers. It relieves pain in mild arthritis but has no effect on the underlying inflammation and swelling of the joint.''',
      Color(0xFFFfffff),
      '82',
      '15 tabs',
      'assets/images/paracetamol.jpg',
    ),
  ];
}
