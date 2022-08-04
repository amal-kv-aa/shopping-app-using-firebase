import 'package:basics_provider/screens/cart/model/model.dart';
import 'package:basics_provider/screens/cart/provider/cart_provider.dart';
import 'package:basics_provider/screens/cart/view/widget/cartshow.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Shopping extends StatelessWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
      final size=MediaQuery.of(context).size;
       return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar( title:const Center(child:  Text("Cart items")),
        actions: [ 
        SizedBox(width:size.height*0.05,)
        ],
        backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
           StreamBuilder<List<UserCart>>(
         stream: context.watch<Cart>().getUserCart(),
         builder: (context, snapshot) {
           if (snapshot.hasError) {
           return Text(
             "Somthing went wrong${snapshot.error}",
             style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0),
             ),
           );
           } else if (snapshot.hasData) {
           final user = snapshot.data;
           return
            ListView(
              scrollDirection: Axis.vertical,
            children:
            user!.map(UserCartShow(context: context).cartshow).toList(),
           );
           }
           return const Center(child: CircularProgressIndicator(),
           );
         },
          ), 
        ),
       );
         
     }
     
}