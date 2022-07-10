
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider.dart/cart_provider.dart';

class Shopping extends StatelessWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
       return Scaffold(
        appBar: AppBar(  leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:const Icon(Icons.arrow_back_ios_new)), title:const Text("Cart items"),
        actions: [           Center(child: Text("total items  ${context.watch<Cart>().count.toString()}",)),
        SizedBox(width: MediaQuery.of(context).size.width*0.05,)
        ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
           height: double.infinity, 
            width: MediaQuery.of(context).size.width,
            child:ListView.builder(itemCount: context.watch<Cart>().count,itemBuilder:((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                ListTile(
                  title: Text(context.watch<Cart>().name[index]),
                  leading: Image.network(context.watch<Cart>().cart[index],fit: BoxFit.cover,),
                  trailing: IconButton(icon:const Icon(Icons.remove,color: Colors.red),onPressed: ()=>context.read<Cart>().remove(index),),
                ),
              );
            })), 
            ),
        ),
       );
         
     }
}