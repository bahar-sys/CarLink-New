class CarWash {
  final String id;
  final String location;
  final double price;
  final String description;

  CarWash({
    required this.id,
    required this.location,
    required this.price,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'location': location,
      'price': price,
      'description': description,
    };
  }

  factory CarWash.fromMap(Map<String, dynamic> map) {
    return CarWash(
      id: map['id'],
      location: map['location'],
      price: map['price'].toDouble(),
      description: map['description'],
    );
  }
}
