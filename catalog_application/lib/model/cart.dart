
import 'catalog.dart';

class CartModel {
  static final Cartmodel = CartModel._internal();

  CartModel._internal();

  factory CartModel() => Cartmodel;

  //catalog fiels
  late CatalogModel _catalogModel;
  //collection of Id Store of each Item
  final List<int> _list = [];

  CatalogModel get catalog => _catalogModel;

  set catalog(CatalogModel newcatalog) {
    assert(newcatalog != null);
    _catalogModel = newcatalog;
  }

  // Get Item in the cart
  List<Item> get items => _list.map((id) => _catalogModel.getById(id)).toList();

  // get total price

  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);

  // add item

  void add(Item item) {
    _list.add(item.id);
  }

  void remove(Item item) {
    _list.remove(item.id);
  }
}
