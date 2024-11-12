import 'package:flutter/material.dart';
import 'package:shopping/Services/apiclass.dart';
import 'package:shopping/cart.dart';


class ProductsDetails extends StatefulWidget {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final double rate;
  final int count;

  const ProductsDetails({super.key, required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rate,
    required this.count,});

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}
List<ProductDetails> addtocart = [];
bool isInCart = false;


class _ProductsDetailsState extends State<ProductsDetails> {

  @override
  void initState() {
    super.initState();
    isInCart = addtocart.any((product) => product.id == widget.id);
  }
  void cartStatus() {
    setState(() {
      if (isInCart) {
        addtocart.removeWhere((product) => product.id == widget.id);
      } else {
        addtocart.add(ProductDetails(id: widget.id,
            title: widget.title, price: widget.price,
            description: widget.description, category: widget.category,
            image:  widget.image, rate: widget.rate, count: widget.count)

        );
      }
      isInCart = !isInCart;
    });
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('${widget.category}',style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));

          }, icon:const  Icon(Icons.shopping_cart))
        ],
      ),
      body:Column(
        children: [
          Text('${widget.title}'),
          Container(
            child: Image.network(widget.image, width: 100, height: 100),
          ),
          ListTile(
            title: Text('${widget.description}'),
          ),
         InkWell(
           onTap: (){
             cartStatus();
           // print(addtocart);
           },
           child:
             Container(
               alignment: Alignment.bottomRight,
               height: 50,
               width: 150,
               decoration: BoxDecoration(
                 color: Colors.deepPurple,
                     borderRadius: BorderRadius.circular(15),
               ) ,
               child:

               Center(child: Text(
                 isInCart ? 'Undo' : 'Add to Cart',
                 style:const  TextStyle(color: Colors.white, fontSize: 20),
               ),),
             )
         )
        ],
      ),
    );
  }
}

