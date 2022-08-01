import 'package:basics_provider/screens/cart/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Shopping extends StatelessWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
      final size=MediaQuery.of(context).size;
       return Scaffold(
        appBar: AppBar( title:const Center(child:  Text("Cart items")),
        actions: [ Center(child: Text("total items  ${context.watch<Cart>().count.toString()}",)),
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
                SizedBox(
                  height: size.height*0.1,
                  child: Card(
                    child: Center(
                      child: ListTile(
                        title: Text(context.watch<Cart>().name[index]),
                        leading: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1,color:const Color.fromARGB(255, 255, 255, 255))
                          ),
                          child: Image.network(context.watch<Cart>().cart[index],fit: BoxFit.cover,)),
                        trailing: TextButton(child:const Text('Remove from Cart',style: TextStyle(color: Color.fromARGB(255, 255, 94, 83)),),onPressed: ()=>context.read<Cart>().remove(index),),
                      ),
                    ),
                  ),
                ),
              );
            })), 
            ), 
        ),
        bottomNavigationBar: BottomNavigationBar(items:   [
        const BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit_sharp),
          label: '',
          activeIcon: Text('') ,
        ),
        BottomNavigationBarItem(
          icon:const Icon(Icons.ac_unit_sharp),
          label: '',
          activeIcon: ElevatedButton(onPressed: (){}, child:const Text('Place order')),
        ),
        ]),
       );
         
     }
}