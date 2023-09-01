class Cars {
  int? id;
  String? title;
  String? description;
  int? price;
  int? speed;
  int? seats;
  int? engine;
  String? brand;
  String? category;
  String? image;

  Cars(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.speed,
      this.seats,
      this.engine,
      this.brand,
      this.category,
      this.image});

  static Cars fromJson(Map<String, dynamic> json) => Cars(
      brand: json['brand'],
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      speed: json['speed'],
      seats: json['seats'],
      engine: json['engine'],
      category: json['category'],
      image: json['image']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['price'] = price;
    data['speed'] = speed;
    data['seats'] = seats;
    data['engine'] = engine;
    data['brand'] = brand;
    data['category'] = category;
    data['image'] = image;
    return data;
  }
}
