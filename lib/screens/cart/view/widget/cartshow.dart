import 'package:basics_provider/screens/cart/model/model.dart';
import 'package:basics_provider/screens/cart/provider/cart_provider.dart';
import 'package:basics_provider/utils/textheads/textheads.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserCartShow {
  UserCartShow({required this.context});
   BuildContext context;
   Widget cartshow(UserCart user){
              final size = MediaQuery.of(context).size;
               return
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: 140,
                    child: Card(
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(user.image),
                              ),
                              TextHeadline(text: user.name,color: Colors.black,size: 20,weight: FontWeight.normal,),
                             
                            ],
                          ),
                           Row(
                             children: [
                               Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(onPressed: (){
                                    context.read<Cart>().deleteproduct();
                                  },style: ElevatedButton.styleFrom(padding:const EdgeInsets.all(8)), child:const Text('   buy   '),),
                                  ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(primary: Colors.red,padding: const EdgeInsets.all(8)),child:const Text('remove'),)
                                ],
                          ),
                          SizedBox(width: size.width*0.05,)
                             ],
                           )
                        ],
                      )
                      ),
                    ),
                );
     }
}