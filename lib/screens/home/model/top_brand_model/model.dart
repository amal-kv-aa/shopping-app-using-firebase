class Item {
  final String id;
  final String name;
  final String amount;
  final String image;
  final String? addimage;
  
  Item(
      {this.id = '',
      required this.name,
      required this.amount,
      required this.image,
      this.addimage});

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     "name": name,
  //     "number": amount.toString(),
  //     'image': image
  //   };
  // }

  static Item fromJson(Map<String, dynamic> json) => Item(
      id: json['id'],
      name: json['name'],
      amount: json['amount'],
      image: json['image'],
      addimage: json['addimage']
      );
}