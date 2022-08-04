import 'package:basics_provider/screens/home/model/suggestion_model/suggestio.dart';
import 'package:flutter/material.dart';

class SuggetionsShow {
  SuggetionsShow({required this.context});
  BuildContext context;

  Widget showCard(Suggetion user) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 240,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                user.image,
                height: size.height * 0.15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    user.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    user.offer,
                    style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,size: 18,
                        color: Colors.yellow,
                      ),
                      Text(user.rating),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
