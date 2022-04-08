class Product {
  final String id;
  final String name;
  final String description;
  final num price;

  Product(this.id, this.name, this.description, this.price);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          price == other.price;

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ description.hashCode ^ price.hashCode;
}
