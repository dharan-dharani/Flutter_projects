import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shopping/Services/apiclass.dart';


        Future<List<ProductDetails>> apiconnection() async {
        final response = await http.get(
        Uri.parse('https://fakestoreapi.com/products'));

        if (response.statusCode == 200) {
        List<dynamic> jsonData = json.decode(response.body);
        // jsonData.forEach((item) => print(item));
        //print(jsonData.length);
        return jsonData.map((json) =>ProductDetails(
        id: json['id'],
        title: json['title'],
        price: json['price'].toDouble(),
        description: json['description'],
        category:json['category'],
        image: json['image'],
        rate:json['rating']['rate'].toDouble(),
        count:json['rating']['count'],
      )).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }

