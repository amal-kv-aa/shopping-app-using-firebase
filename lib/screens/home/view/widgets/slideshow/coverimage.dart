import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Posterimage extends StatelessWidget {
  const Posterimage({Key? key, required this.context}) : super(key: key);
  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return 
    ImageSlideshow(
      initialPage: 0,
      indicatorColor: const Color.fromARGB(255, 51, 216, 219),
      indicatorBackgroundColor: const Color.fromARGB(255, 40, 93, 96),
      onPageChanged: (value) {},
      autoPlayInterval: 4000,
      isLoop: true,
      children: [
        Container(
          height: size.height * 0.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(255, 255, 255, 255),
              image: const DecorationImage(
                  image: NetworkImage(
                    'http://freedesignfile.com/upload/2016/12/Running-shoes-poster-template-creative-design-vector-01.jpg',
                  ),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: size.height * 0.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(255, 255, 255, 255),
              image: const DecorationImage(
                  image: NetworkImage(
                    'http://freedesignfile.com/upload/2016/12/Running-shoes-poster-template-creative-design-vector-03.jpg',
                  ),
                  fit: BoxFit.cover),
                  ),
        ),
        Container(
          height: size.height * 0.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(255, 255, 255, 255),
              image: const DecorationImage(
                  image: NetworkImage(
                    'https://cmkt-image-prd.global.ssl.fastly.net/0.1.0/ps/522794/3000/1997/m1/fpnw/wm0/flat-product-sale-shoe-banner-p1-.jpg?1434193319&s=5e32357a0be6ce6fded220d5ad54624f',
                  ),
                  fit: BoxFit.cover),
                  ),
        ),
      ],
    );
  }
}
