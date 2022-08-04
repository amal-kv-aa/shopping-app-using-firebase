import 'package:basics_provider/screens/home/model/top_brand_model/model.dart';
import 'package:basics_provider/screens/home/view/widgets/cartitem/cards.dart';

class UserCart {
  final String id;
  final String name;
  final String amount;
  final String image;
  
  UserCart(
      {this.id = '',
      required this.name,
      required this.amount,
      required this.image});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      "name": name,
      "amount": amount,
      'image': image
    };
  }

  static UserCart fromJson(Map<String, dynamic> json) => UserCart(
      id: json['id'],
      name: json['name'],
      amount: json['amount'],
      image: json['image']
      );
}