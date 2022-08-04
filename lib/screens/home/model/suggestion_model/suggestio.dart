class Suggetion{
   final String id;
  final String name;
  final String amount;
  final String image;
  final String offer;
  final String rating;
  
  Suggetion(
      {this.id = '',
      required this.name,
      required this.amount,
      required this.image,
      required this.offer,
      required this.rating});

  static Suggetion fromJson(Map<String, dynamic> json) => Suggetion(
      id: json['id'],
      name: json['name'],
      amount: json['amount'],
      image: json['image'],
      rating: json['rating'],
      offer: json['offer']
      );
}