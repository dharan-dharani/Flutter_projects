import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  Home createState() => Home();
}

class Home extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.purple[50],
              ),
              child: Column(
                children: [
                  Text(
                    'Explore the world! By Travelling',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        width: 600,
                        child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Where did you go?',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                      Container(
                          child: ElevatedButton(
                              onPressed: () {}, child: Icon(Icons.tune)))
                    ],
                  ),
                ],
              ),
            ),
            Text(
              'Popular locations',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 200,
                        width: 150,
                        child: Stack(fit: StackFit.expand, children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('temple.jpg')),
                          ),
                          Positioned(
                              top: 170,
                              right: 40,
                              child: Center(
                                  child: Text(
                                'TamilNadu',
                                style: TextStyle(color: Colors.white),
                              )))
                        ])),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 200,
                        width: 150,
                        child: Stack(fit: StackFit.expand, children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('meenakshi_amman.jpg')),
                          ),
                          Positioned(
                              top: 170,
                              right: 40,
                              child: Center(
                                  child: Text(
                                'TamilNadu',
                                style: TextStyle(color: Colors.white),
                              )))
                        ])),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 200,
                        width: 150,
                        child: Stack(fit: StackFit.expand, children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.cover, image: AssetImage('usa.webp')),
                          ),
                          Positioned(
                              top: 170,
                              right: 60,
                              child: Center(
                                  child: Text(
                                'USA',
                                style: TextStyle(color: Colors.white),
                              )))
                        ])),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 200,
                        width: 150,
                        child: Stack(fit: StackFit.expand, children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('TajMahal.jpg')),
                          ),
                          Positioned(
                              top: 170,
                              right: 55,
                              child: Center(
                                  child: Text(
                                'Agra',
                                style: TextStyle(color: Colors.white),
                              )))
                        ])),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 200,
                        width: 150,
                        child: Stack(fit: StackFit.expand, children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('temple.jpg')),
                          ),
                          Positioned(
                              top: 170,
                              right: 40,
                              child: Center(
                                  child: Text(
                                'TamilNadu',
                                style: TextStyle(color: Colors.white),
                              )))
                        ])),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 200,
                        width: 150,
                        child: Stack(fit: StackFit.expand, children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('temple.jpg')),
                          ),
                          Positioned(
                              top: 170,
                              right: 40,
                              child: Center(
                                  child: Text(
                                'TamilNadu',
                                style: TextStyle(color: Colors.white),
                              )))
                        ])),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 200,
                        width: 150,
                        child: Stack(fit: StackFit.expand, children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('temple.jpg')),
                          ),
                          Positioned(
                              top: 170,
                              right: 40,
                              child: Center(
                                  child: Text(
                                'TamilNadu',
                                style: TextStyle(color: Colors.white),
                              )))
                        ])),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
             Text(
              'Recommended',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Row(
              children: [
                Container(
                  height: 300,
                  width: 270,
                 
                  child: Column(
                  children: [
                    Container(
                      child: 
                         InkWell(
                            onTap: () {},
                            child: Container(
                                height: 150,
                                width: 250,
                                child: Stack(fit: StackFit.expand, children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage('temple.jpg')),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 20,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: CircleBorder(),
                                          padding: EdgeInsets.all(10),
                                        ),
                                        onPressed: (){}, child: Icon(Icons.favorite))),
                      
                                ]
                                )
                                ),
                          ),
                    ) ,
                    Container(
                      child: Column(
                        children: [
                          ListTile( title:  RichText(
                              
                              text: TextSpan(
                              children:[
                               
                                TextSpan(text: '\$120',style: TextStyle(fontSize: 20)),
                                TextSpan(text: '/Night',style: TextStyle(fontSize: 14)),
 WidgetSpan(child: Icon(Icons.bolt,size: 20,color: Colors.amber,)),
                              ]
                            
                            ),),
                          trailing: Container(
                            height: 25,
                            width: 40,
                          
                            child: RichText(
                              
                              text: TextSpan(
                              children:[
                                WidgetSpan(child: Icon(Icons.favorite,size: 15,color: Colors.pink,),),
                                TextSpan(text: '4',style: TextStyle(fontSize: 13))
                              ]
                            
                            ),),
                          )
                          ),
                          ListTile(title: Text('Carinthia Lake Sea Breakfast...'),
                          subtitle: Text('Private Room / 4 Beds'),)
                        ],
                      ),
                    )
                      ],
                    ),
                  
                
                ),
              ],
            ),
            
          ],
        ),
      ),
    ));
  }
}
