import 'package:basics_provider/screens/home/model/top_brand_model/model.dart';
import 'package:basics_provider/screens/product/view/product.dart';
import 'package:flutter/material.dart';

class CardItems {
  CardItems({required this.context});
  BuildContext context;
  Widget builditems(Item user) {
    BuildContext context = this.context;
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> Product(name: user.name,amount: user.amount,image: user.image,addimage: user.addimage,id: user.id,)));
      },
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: Card(
              borderOnForeground: true,
              shadowColor: Colors.black,
              elevation: 30,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      image: DecorationImage(
                          image: NetworkImage(user.image), fit: BoxFit.cover),
                    ),
                  ),
                  ListTile(
                    title: Center(
                        child: Text(user.name,
                            style: const TextStyle(
                                fontFamily: 'cursive',
                                fontWeight: FontWeight.bold,
                                fontSize: 26))),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

      