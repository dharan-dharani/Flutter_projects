import 'package:flutter/material.dart';
import 'package:shopping/cart.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myorder.isEmpty
          ?  Center(child:  Text('No orders')
      ): ListView.builder(
        itemCount: myorder.length,
        itemBuilder: (context, index) {
          final product = myorder[index];
          // print(product);
          return ListTile(

            leading: Image.network(product.image, width: 50, height: 50),
            title: Text(product.category),
            subtitle: Text('\$${product.rate.toStringAsFixed(2)}'),
          );
        },
      )
    );
  }
}
