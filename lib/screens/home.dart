import 'package:basics_provider/provider.dart/cart_provider.dart';
import 'package:basics_provider/theme/theme_changer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class MyhomePage extends StatelessWidget {
   MyhomePage({Key? key}) : super(key: key);
  
  late AnimationController controller;
  @override
   
  Widget build(BuildContext context) {
   
    return
    Scaffold(
      appBar: AppBar(
        title:Row(children: [
          const Text('Theme mode',)
          ,Switch(value: context.watch<ThemeChanger>().thememode==ThemeMode.dark, onChanged:(newValue){
           context.read<ThemeChanger>().toggleTheme(newValue);
          },
          inactiveThumbColor:const Color.fromARGB(255, 255, 255, 255),
          activeColor:const Color.fromARGB(255, 247, 192, 10),
          )
        ],),
       actions: [ElevatedButton(onPressed: (){
        Navigator.pushNamed(context,'/shoping');
       },
       style: ElevatedButton.styleFrom(primary: Colors.transparent,elevation: 0), child:Row(
         children: [
           const Text('Cart'),
       SizedBox(width: MediaQuery.of(context).size.width*0.02,),
           const Icon(Icons.shopping_cart,),
           AnimatedIcon(icon: AnimatedIcons.play_pause, progress: controller)
         ],
       )),
       SizedBox(width: MediaQuery.of(context).size.width*0.04,)
       ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  <Widget>[
                SizedBox(
                  height: 150,
                  width: 120,
                  child: Card(
                    child: Image.network('https://sp.yimg.com/ib/th?id=OPA.4D7cP0%2fsFwLImA474C474&o=5&pid=21.1&w=174&h=174',fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(
                  height:150,
                  width: 120,
                  child: Card(
                    child: Image.network('https://sp.yimg.com/ib/th?id=OPA.Wpig4Jzly7lm6w474C474&o=5&pid=21.1&w=174&h=174',fit: BoxFit.cover,),
                  ),
                ), 
                SizedBox(
                  height: 150,
                  width: 120,
                  child: Card(
                    child: Image.network('https://sp.yimg.com/ib/th?id=OPA.IEs57u7l1OsJhw474C474&o=5&pid=21.1&w=174&h=174',fit: BoxFit.cover,),
                  ),
                ), 
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 ElevatedButton(onPressed: ()=>context.read<Cart>().additem('https://sp.yimg.com/ib/th?id=OPA.4D7cP0%2fsFwLImA474C474&o=5&pid=21.1&w=174&h=174','puma'), child:const Text('add to cart')),
                 ElevatedButton(onPressed: ()=>context.read<Cart>().additem('https://sp.yimg.com/ib/th?id=OPA.Wpig4Jzly7lm6w474C474&o=5&pid=21.1&w=174&h=174','adidas'), child:const Text('add to cart')),
                 ElevatedButton(onPressed: ()=>context.read<Cart>().additem('https://sp.yimg.com/ib/th?id=OPA.IEs57u7l1OsJhw474C474&o=5&pid=21.1&w=174&h=174','Nike'), child:const Text('add to cart'))
               ],
             )
          ],
        ),
      ),
    );
  }
  }
