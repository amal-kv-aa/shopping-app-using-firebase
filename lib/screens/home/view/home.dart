import 'package:basics_provider/screens/cart/view/shopping.dart';
import 'package:basics_provider/screens/home/model/suggestion_model/suggestio.dart';
import 'package:basics_provider/screens/home/model/top_brand_model/model.dart';
import 'package:basics_provider/screens/home/provider/counter_provider.dart';
import 'package:basics_provider/screens/home/view/widgets/cartitem/cards.dart';
import 'package:basics_provider/screens/home/view/widgets/slideshow/coverimage.dart';
import 'package:basics_provider/screens/home/view/widgets/suggetion_card/suggetion_show.dart';
import 'package:basics_provider/utils/methodes/theme_changer.dart';
import 'package:basics_provider/utils/textheads/textheads.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    // final isdark = context.watch<ThemeChanger>().isdark;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 12, 113, 117),
        elevation: 0,
        title:const Text('shopping'),
        actions: [
          Row(
            children: [
              const Icon(Icons.notifications),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const Shopping(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: size.width * 0.02,
              )
            ],
          ),
          PopupMenuButton(
             // color: Colors.white,
              itemBuilder: (context) => [
                    PopupMenuItem(
                        value: 1,
                        child: Row(
                          children: [
                            const Text('Theme'),
                            Consumer<ThemeChanger>(
                              builder: (context, value, child) => Switch(
                                value: value.thememode == ThemeMode.dark,
                                onChanged: (newValue) {
                                  value.toggleTheme(newValue);
                                },
                                inactiveThumbColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                                activeColor:const Color.fromARGB(255, 6, 119, 180),
                              ),
                            ),
                          ],
                        )),
                    PopupMenuItem(
                      value: 2,
                      child: Text(
                          FirebaseAuth.instance.currentUser!.email.toString()),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: ElevatedButton(
                          onPressed: () {
                            FirebaseAuth.instance.signOut();
                            Navigator.pop(context);
                          },
                          child: const Text("Loge Out")),
                    )
                  ]),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 187, 2),
            Color.fromARGB(255, 0, 112, 127),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
        )),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [Posterimage(context: context)],
              ),
            ),
            const Center(
                child: TextHeadline(
              text: 'suggests for you',
              weight: FontWeight.normal,
              size: 26,
            )),
            SizedBox(
              height: 180,
              child: StreamBuilder<List<Suggetion>>(
                stream: context.watch<HomeProvider>().getsuggetions(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text(
                      "Somthing went wrong${snapshot.error}",
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    );
                  } else if (snapshot.hasData) {
                    final user = snapshot.data;
                    return ListView(
                      scrollDirection: Axis.horizontal,
                      children: user!
                          .map(SuggetionsShow(context: context).showCard)
                          .toList(),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            const Center(child: TextHeadline(text: 'Top Brands')),
            StreamBuilder<List<Item>>(
              stream: context.watch<HomeProvider>().readUser(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text(
                    "Somthing went wrong${snapshot.error}",
                    style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  );
                } else if (snapshot.hasData) {
                  final user = snapshot.data;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 250,
                        mainAxisExtent: 250,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 1,
                      ),
                      shrinkWrap: true,
                      primary: false,
                      children: user!
                          .map(CardItems(context: context).builditems)
                          .toList(),
                    ),
                  );
                }
                return const Center(
                    child: CircularProgressIndicator(
                  color: Colors.green,
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
