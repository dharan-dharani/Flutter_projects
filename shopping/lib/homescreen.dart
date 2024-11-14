import 'package:flutter/material.dart';
import 'package:shopping/Services/apiclass.dart';
import 'package:shopping/Services/apiconnection.dart';
import 'package:shopping/cart.dart';
import 'package:shopping/signin.dart';
import 'package:shopping/myorders.dart';
import 'package:shopping/productsDetails.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<ProductDetails> products=[];

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }
  Future<void> fetchProducts() async {
    try {
      List<ProductDetails> fetchedProducts = await apiconnection();
      setState(() {
        products = fetchedProducts;
      });
    } catch (e) {
      print('Error fetching products: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('Products',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
                color: Colors.white),),
      actions: [
        IconButton(onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>MyOrders()));


        }, icon: const Icon(Icons.local_shipping_sharp)),

        IconButton(onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>Login()));


        }, icon: const Icon(Icons.logout)),
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));

        }, icon:const  Icon(Icons.shopping_cart))
        ],
      ),
      body: products.isEmpty
          ? const Center(child:  CircularProgressIndicator()):
      ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
         // print(product);
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:
                  (context)=>ProductsDetails(id: product.id,
                      title: product.title, price: product.price,
                      description: product.description,
                      category: product.category, image: product.image,
                      rate: product.rate, count: product.count)));
            },
            child: ListTile(

              leading: Image.network(product.image, width: 50, height: 50),
              title: Text(product.category),
              subtitle: Text('\$${product.rate.toStringAsFixed(2)}'),
            ),
          );
        },
      )
    );
  }
}
