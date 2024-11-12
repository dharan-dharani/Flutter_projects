import 'package:flutter/material.dart';
import 'package:shopping/Services/apiclass.dart';
import 'package:shopping/productsDetails.dart';


class Cart extends StatefulWidget {

  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}
List<ProductDetails> myorder=[];
class _CartState extends State<Cart> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Cart',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
              color: Colors.white),),

      ),
      body: ListView.builder(
        itemCount:addtocart.length,
        itemBuilder: (context,index){
      final product = addtocart[index];
      return InkWell(
      //  onTap: (){Navigator.pop(context);},

        onTap: (){ Navigator.push(context, MaterialPageRoute(builder:
            (context)=>ProductsDetails(id: product.id,
            title: product.title, price: product.price,
            description: product.description,
            category: product.category, image: product.image,
            rate: product.rate, count: product.count)));
            },
        child: ListTile(
          leading: Image.network(product.image, width: 50, height: 50),
          title: Text(product.title),
          subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
        trailing: TextButton(onPressed: (){
          myorder.add(ProductDetails(id: product.id,
              title: product.title, price: product.price,
              description: product.description,
              category: product.category, image: product.image,
              rate: product.rate, count: product.count));

        }, child: Text('PlaceOrder')),

        ),
      );
        }

        
      ),
    );
  }
}
