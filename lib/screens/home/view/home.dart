import 'package:basics_provider/screens/cart/provider/cart_provider.dart';
import 'package:basics_provider/theme/methodes/theme_changer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Home extends StatelessWidget {
 const  Home({Key? key}) : super(key:key);
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
          activeColor:const Color.fromARGB(255, 0, 0, 0),
          )
        ],),
       actions: [
         Row(
           children: [
              IconButton(onPressed: (){
               Navigator.pushNamed(context, '/shoping');
              }, icon:const Icon(Icons.shopping_cart,color: Colors.white,),),
              Text(context.watch<Cart>().count.toString(),style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              SizedBox(width: MediaQuery.of(context).size.width*0.05,)
           ],
         )
          
       ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  <Widget>[
                    Column(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                            child: Image.network('https://sp.yimg.com/ib/th?id=OPA.4D7cP0%2fsFwLImA474C474&o=5&pid=21.1&w=174&h=174',fit: BoxFit.cover,),
                          ),
                        ),
                        ElevatedButton(onPressed: ()=>context.read<Cart>().additem('https://sp.yimg.com/ib/th?id=OPA.4D7cP0%2fsFwLImA474C474&o=5&pid=21.1&w=174&h=174','puma'), child:const Text('add to cart')),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height:150,
                          width: 120,
                          child: Card(
                            child: Image.network('https://sp.yimg.com/ib/th?id=OPA.Wpig4Jzly7lm6w474C474&o=5&pid=21.1&w=174&h=174',fit: BoxFit.cover,),
                          ),
                        ),
                         ElevatedButton(onPressed: ()=>context.read<Cart>().additem('https://sp.yimg.com/ib/th?id=OPA.4D7cP0%2fsFwLImA474C474&o=5&pid=21.1&w=174&h=174','puma'), child:const Text('add to cart')),
                      ],
                    ), 
                    Column(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                            child: Image.network('https://sp.yimg.com/ib/th?id=OPA.IEs57u7l1OsJhw474C474&o=5&pid=21.1&w=174&h=174',fit: BoxFit.cover,),
                          ),
                        ),
                        ElevatedButton(onPressed: ()=>context.read<Cart>().additem('https://sp.yimg.com/ib/th?id=OPA.Wpig4Jzly7lm6w474C474&o=5&pid=21.1&w=174&h=174','adidas'), child:const Text('add to cart')),
                      ],
                    ), 
                    Column(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 120,
                          child: Card(
                            child: Image.network('https://sp.yimg.com/ib/th?id=OPA.IEs57u7l1OsJhw474C474&o=5&pid=21.1&w=174&h=174',fit: BoxFit.cover,),
                          ),
                        ),
                        ElevatedButton(onPressed: ()=>  context.read<Cart>().additem('https://sp.yimg.com/ib/th?id=OPA.IEs57u7l1OsJhw474C474&o=5&pid=21.1&w=174&h=174','Nike'), child:const Text('add to cart'))
                      ],
                    ), 
                  ],
                ),
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
  }
