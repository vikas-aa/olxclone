import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: "id")
  String? id;

  @JsonKey(name: "name")
  String? name;

  @JsonKey(name: "description")
  String? description;

  @JsonKey(name: "category")
  String? category;


  @JsonKey(name: "price")
  double? price;

  @JsonKey(name: "brand")
  String? brand;
 
  @JsonKey(name: "images")
  List<String>? images;


  Product({
    this.id,
    this.name,
    this.description,
    this.category,
    this.images,
    this.price,
    this.brand,
  });


  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
