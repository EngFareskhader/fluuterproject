class ProductModel {
  String? name;
  double? price;
  String? image;
  List? size;
  List? extintion;
  num? quentity;
  ProductModel(Map map) {
    name = map['name'];
    price = map['price'];
    image = map['image'];
    quentity = map['quentity'];
    extintion = map['extintion'];
    size = map['size'];
  }
}
