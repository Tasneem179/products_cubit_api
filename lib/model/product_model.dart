class ProductModel{
  final int id;
  final String title;
  final String description;
  final String brand;
  final String images;
  final int price;

  ProductModel(
      {
        required this.id,
        required this.title,
        required this.description,
        required this.brand,
        required this.images,
        required this.price}
      );
  factory ProductModel.fromJson(Map<String,dynamic>json)
  {
    return ProductModel(id: json["id"], title: json["title"], description:json["description"] , brand: json["brand"], images: json["images"][0], price: json["price"]);
  }
}

