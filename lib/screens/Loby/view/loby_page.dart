import 'package:basics_provider/screens/home/view/home.dart';
import 'package:basics_provider/services/firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class LobyPage extends StatelessWidget {
  const LobyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageSlideshow(
          width: double.infinity,
          height: double.infinity,
          initialPage: 0,
          indicatorColor: const Color.fromARGB(255, 223, 223, 223),
          indicatorBackgroundColor: Colors.grey,
          onPageChanged:(value) {},
          autoPlayInterval: 3000,
          isLoop: true,
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/fec6e6077fe05379c8df19d3511cfe44.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'buy now',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'cursive'),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/8160038f95c8c4b09949246aac5a14a6.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'buy now',
                    style: TextStyle(
                        color: Color.fromARGB(255, 99, 51, 30),
                        fontFamily: 'cursive'),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/1a236b9be87b3273fe843d52a1e69231.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'buy now',
                    style: TextStyle(
                        color: Color.fromARGB(255, 9, 218, 183),
                        fontFamily: 'cursive'),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/7cdb083577f3afbd3a8b63e417dc96f7.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'buy now',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'cursive'),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (ctx) =>  Home()));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.black45),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    FirebaseAuthMethodes(FirebaseAuth.instance).signupUsingEmail(email: 'noidea@gmail.com', password: "1266aaml71892", context: context);
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.black45),
                  child: const Text(
                    "Sign-Up",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),

                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 200,
            )
          ],
        )
      ],
    );
  }
}
