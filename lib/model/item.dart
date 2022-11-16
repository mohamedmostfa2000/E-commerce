class Item {
  String imgPath;
  double price;
  String location;
  Item(
      {required this.imgPath,
      required this.price,
      this.location = "Main branch"});
}

final List<Item> items = [
  Item(price: 12.99, imgPath: "assets/images/1.webp", location: "Ali shop"),
  Item(price: 12.99, imgPath: "assets/images/2.webp"),
  Item(price: 12.99, imgPath: "assets/images/3.webp"),
  Item(price: 12.99, imgPath: "assets/images/4.webp"),
  Item(price: 12.99, imgPath: "assets/images/5.webp"),
  Item(price: 12.99, imgPath: "assets/images/6.webp"),
  Item(price: 12.99, imgPath: "assets/images/7.webp"),
  Item(price: 12.99, imgPath: "assets/images/8.webp"),
];
