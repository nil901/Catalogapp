class CatalogModel {


   static final Catmodel = CatalogModel._internal();

  CatalogModel._internal();

  factory CatalogModel() => Catmodel;
  static List<Item> items = [
    Item(
        id: 1,
        name: " iphone 12 max pro",
        desc: "Apple iphone 12th genreation",
        price: 999,
        color: "#33505a",
        image:
            "https://images.unsplash.com/photo-1617997455403-41f333d44d5b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aXBob25lJTIwMTIlMjBwcm8lMjBtYXh8ZW58MHx8MHx8&w=1000&q=80"),
  ];
  //get by id
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);
  //get by item positin
 Item getbyPosition(int pos) => items[pos];
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

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }
  tomap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}
