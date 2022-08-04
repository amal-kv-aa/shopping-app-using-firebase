import 'package:basics_provider/screens/cart/provider/cart_provider.dart';
import 'package:basics_provider/screens/home/provider/counter_provider.dart';
import 'package:basics_provider/utils/snackbar/snackbar.dart';
import 'package:basics_provider/utils/textheads/textheads.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:provider/provider.dart';

class Product extends StatelessWidget {
  const Product(
      {Key? key,
      this.name,
      this.amount,
      this.image,
      this.offer,
      this.rating,
      this.addimage,
      this.id})
      : super(key: key);
  final String? name, image, amount, rating, offer, addimage, id;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //  decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //   colors: [
        //     Color.fromARGB(255, 255, 187, 2),
        //     Color.fromARGB(255, 0, 112, 127),
        //   ],
        //   begin: Alignment.topRight,
        //   end: Alignment.bottomRight,
        // )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            //  mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ImageSlideshow(
                  indicatorColor: Color.fromARGB(255, 0, 0, 0),
                  indicatorBackgroundColor: Color.fromARGB(255, 109, 109, 109),
                  height: 320,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: Image.network(image!),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: Image.network(addimage ??
                          'https://tse3.mm.bing.net/th?id=OIP.pGPfH0aY_FnHNhzInv6ZXAHaHY&pid=Api&P=0'),
                    ),
                  ]),
              SizedBox(
                height: 100,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextHeadline(
                        text: name!,
                        color: Colors.black,
                        size: 26,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(),
                          Text("$amount/-"),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.read<Cart>().creatUser(
                              name,
                              amount,
                              image,
                            );
                        Showsnackbar.showsnack(
                            context, 'item $name added to the cart');
                      },
                      child: const Text('add to cart'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {},
                      child: const Text('Buy now'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
