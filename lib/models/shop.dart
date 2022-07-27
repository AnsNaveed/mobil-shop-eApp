class shopModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 pro",
      desc: "Apple iPhone 12 generation",
      price: 999,
      color: "",
      image: "https://klik.pk/wp-content/uploads/2020/12/iphone-12-00000.png",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
