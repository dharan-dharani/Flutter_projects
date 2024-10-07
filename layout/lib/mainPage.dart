import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  Home createState() => Home();
}

class Home extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print(width);
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
                  const Text(
                    'Explore the world! By Travelling',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: width /1.5,
                        child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: const Icon(Icons.search),
                              hintText: 'Where did you go?',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                 borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                 borderRadius: BorderRadius.circular(15),
                              )
                              ),
                        ),
                      ),
                      Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                
                              ),
                              padding: EdgeInsets.all(20),
                            ),
                              onPressed: () {}, child: const Icon(Icons.tune)))
                    ],
                  ),
                ],
              ),
            ),
            const Text(
              'Popular locations',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                        height: 200,
                        width: 150,
                        child: Stack(fit: StackFit.expand, children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: const Image(
                                fit: BoxFit.cover,
                                image: AssetImage('temple.jpg')),
                          ),
                          const Positioned(
                              top: 170,
                              right: 40,
                              child: Center(
                                  child: Text(
                                'TamilNadu',
                                style: TextStyle(color: Colors.white),
                              )))
                        ])),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                        height: 200,
                        width: 150,
                        child: Stack(fit: StackFit.expand, children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: const Image(
                                fit: BoxFit.cover,
                                image: AssetImage('meenakshi_amman.jpg')),
                          ),
                          const Positioned(
                              top: 170,
                              right: 40,
                              child: Center(
                                  child: Text(
                                'TamilNadu',
                                style: TextStyle(color: Colors.white),
                              )))
                        ])),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                        height: 200,
                        width: 150,
                        child: Stack(fit: StackFit.expand, children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: const Image(
                                fit: BoxFit.cover,
                                image: AssetImage('usa.webp')),
                          ),
                          const Positioned(
                              top: 170,
                              right: 60,
                              child: Center(
                                  child: Text(
                                'USA',
                                style: TextStyle(color: Colors.white),
                              )))
                        ])),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                        height: 200,
                        width: 150,
                        child: Stack(fit: StackFit.expand, children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: const Image(
                                fit: BoxFit.cover,
                                image: AssetImage('TajMahal.jpg')),
                          ),
                          const Positioned(
                              top: 170,
                              right: 55,
                              child: Center(
                                  child: Text(
                                'Agra',
                                style: TextStyle(color: Colors.white),
                              )))
                        ])),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                        height: 200,
                        width: 150,
                        child: Stack(fit: StackFit.expand, children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: const Image(
                                fit: BoxFit.cover,
                                image: AssetImage('temple.jpg')),
                          ),
                          const Positioned(
                              top: 170,
                              right: 40,
                              child: Center(
                                  child: Text(
                                'TamilNadu',
                                style: TextStyle(color: Colors.white),
                              )))
                        ])),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                        height: 200,
                        width: 150,
                        child: Stack(fit: StackFit.expand, children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: const Image(
                                fit: BoxFit.cover,
                                image: AssetImage('temple.jpg')),
                          ),
                          const Positioned(
                              top: 170,
                              right: 40,
                              child: Center(
                                  child: Text(
                                'TamilNadu',
                                style: TextStyle(color: Colors.white),
                              )))
                        ])),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                        height: 200,
                        width: 150,
                        child: Stack(fit: StackFit.expand, children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: const Image(
                                fit: BoxFit.cover,
                                image: AssetImage('temple.jpg')),
                          ),
                          const Positioned(
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
            const SizedBox(height: 20),
            const Text(
              'Recommended',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    height: 300,
                    width: 270,
                    child: Column(
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {},
                            child: SizedBox(
                                height: 150,
                                width: 250,
                                child: Stack(fit: StackFit.expand, children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: const Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage('temple.jpg')),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 5,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(),
                                            padding: const EdgeInsets.all(16),
                                          ),
                                          onPressed: () {},
                                          child: const Icon(
                                            Icons.favorite,
                                            color: Color.fromARGB(
                                                255, 187, 186, 186),
                                          ))),
                                ])),
                          ),
                        ),
                        Container(
                          width: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                  title: RichText(
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text: '\$120',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: '/Night',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      WidgetSpan(
                                          child: Icon(
                                        Icons.bolt,
                                        size: 16,
                                        color: Colors.amber,
                                      )),
                                    ]),
                                  ),
                                  trailing: SizedBox(
                                    height: 20,
                                    width: 40,
                                    child: RichText(
                                      text: const TextSpan(children: [
                                        WidgetSpan(
                                          child: Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.pink,
                                          ),
                                        ),
                                        TextSpan(
                                            text: '4',
                                            style: TextStyle(fontSize: 13))
                                      ]),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Carinthia Lake Sea Breakfast...',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Private Room / 4 Beds',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    width: 270,
                    child: Column(
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {},
                            child: SizedBox(
                                height: 150,
                                width: 250,
                                child: Stack(fit: StackFit.expand, children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: const Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage('temple.jpg')),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 5,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(),
                                            padding: const EdgeInsets.all(16),
                                          ),
                                          onPressed: () {},
                                          child: const Icon(
                                            Icons.favorite,
                                            color: Color.fromARGB(
                                                255, 187, 186, 186),
                                          ))),
                                ])),
                          ),
                        ),
                        Container(
                          width: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                  title: RichText(
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text: '\$120',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: '/Night',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      WidgetSpan(
                                          child: Icon(
                                        Icons.bolt,
                                        size: 16,
                                        color: Colors.amber,
                                      )),
                                    ]),
                                  ),
                                  trailing: SizedBox(
                                    height: 20,
                                    width: 40,
                                    child: RichText(
                                      text: const TextSpan(children: [
                                        WidgetSpan(
                                          child: Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.pink,
                                          ),
                                        ),
                                        TextSpan(
                                            text: '4',
                                            style: TextStyle(fontSize: 13))
                                      ]),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Carinthia Lake Sea Breakfast...',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Private Room / 4 Beds',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    width: 270,
                    child: Column(
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {},
                            child: SizedBox(
                                height: 150,
                                width: 250,
                                child: Stack(fit: StackFit.expand, children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: const Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage('temple.jpg')),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 5,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(),
                                            padding: const EdgeInsets.all(16),
                                          ),
                                          onPressed: () {},
                                          child: const Icon(
                                            Icons.favorite,
                                            color: Color.fromARGB(
                                                255, 187, 186, 186),
                                          ))),
                                ])),
                          ),
                        ),
                        Container(
                          width: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                  title: RichText(
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text: '\$120',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: '/Night',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      WidgetSpan(
                                          child: Icon(
                                        Icons.bolt,
                                        size: 16,
                                        color: Colors.amber,
                                      )),
                                    ]),
                                  ),
                                  trailing: SizedBox(
                                    height: 20,
                                    width: 40,
                                    child: RichText(
                                      text: const TextSpan(children: [
                                        WidgetSpan(
                                          child: Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.pink,
                                          ),
                                        ),
                                        TextSpan(
                                            text: '4',
                                            style: TextStyle(fontSize: 13))
                                      ]),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Carinthia Lake Sea Breakfast...',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Private Room / 4 Beds',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    width: 270,
                    child: Column(
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {},
                            child: SizedBox(
                                height: 150,
                                width: 250,
                                child: Stack(fit: StackFit.expand, children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: const Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage('temple.jpg')),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 5,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(),
                                            padding: const EdgeInsets.all(16),
                                          ),
                                          onPressed: () {},
                                          child: const Icon(
                                            Icons.favorite,
                                            color: Color.fromARGB(
                                                255, 187, 186, 186),
                                          ))),
                                ])),
                          ),
                        ),
                        Container(
                          width: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                  title: RichText(
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text: '\$120',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: '/Night',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      WidgetSpan(
                                          child: Icon(
                                        Icons.bolt,
                                        size: 16,
                                        color: Colors.amber,
                                      )),
                                    ]),
                                  ),
                                  trailing: SizedBox(
                                    height: 20,
                                    width: 40,
                                    child: RichText(
                                      text: const TextSpan(children: [
                                        WidgetSpan(
                                          child: Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.pink,
                                          ),
                                        ),
                                        TextSpan(
                                            text: '4',
                                            style: TextStyle(fontSize: 13))
                                      ]),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Carinthia Lake Sea Breakfast...',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Private Room / 4 Beds',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    width: 270,
                    child: Column(
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {},
                            child: SizedBox(
                                height: 150,
                                width: 250,
                                child: Stack(fit: StackFit.expand, children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: const Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage('temple.jpg')),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 5,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(),
                                            padding: const EdgeInsets.all(16),
                                          ),
                                          onPressed: () {},
                                          child: const Icon(
                                            Icons.favorite,
                                            color: Color.fromARGB(
                                                255, 187, 186, 186),
                                          ))),
                                ])),
                          ),
                        ),
                        Container(
                          width: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                  title: RichText(
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text: '\$120',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: '/Night',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      WidgetSpan(
                                          child: Icon(
                                        Icons.bolt,
                                        size: 16,
                                        color: Colors.amber,
                                      )),
                                    ]),
                                  ),
                                  trailing: SizedBox(
                                    height: 20,
                                    width: 40,
                                    child: RichText(
                                      text: const TextSpan(children: [
                                        WidgetSpan(
                                          child: Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.pink,
                                          ),
                                        ),
                                        TextSpan(
                                            text: '4',
                                            style: TextStyle(fontSize: 13))
                                      ]),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Carinthia Lake Sea Breakfast...',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Private Room / 4 Beds',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    width: 270,
                    child: Column(
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {},
                            child: SizedBox(
                                height: 150,
                                width: 250,
                                child: Stack(fit: StackFit.expand, children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: const Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage('temple.jpg')),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 5,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(),
                                            padding: const EdgeInsets.all(16),
                                          ),
                                          onPressed: () {},
                                          child: const Icon(
                                            Icons.favorite,
                                            color: Color.fromARGB(
                                                255, 187, 186, 186),
                                          ))),
                                ])),
                          ),
                        ),
                        Container(
                          width: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                  title: RichText(
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text: '\$120',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: '/Night',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      WidgetSpan(
                                          child: Icon(
                                        Icons.bolt,
                                        size: 16,
                                        color: Colors.amber,
                                      )),
                                    ]),
                                  ),
                                  trailing: SizedBox(
                                    height: 20,
                                    width: 40,
                                    child: RichText(
                                      text: const TextSpan(children: [
                                        WidgetSpan(
                                          child: Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.pink,
                                          ),
                                        ),
                                        TextSpan(
                                            text: '4',
                                            style: TextStyle(fontSize: 13))
                                      ]),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Carinthia Lake Sea Breakfast...',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Private Room / 4 Beds',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    width: 270,
                    child: Column(
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {},
                            child: SizedBox(
                                height: 150,
                                width: 250,
                                child: Stack(fit: StackFit.expand, children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: const Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage('temple.jpg')),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 5,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(),
                                            padding: const EdgeInsets.all(16),
                                          ),
                                          onPressed: () {},
                                          child: const Icon(
                                            Icons.favorite,
                                            color: Color.fromARGB(
                                                255, 187, 186, 186),
                                          ))),
                                ])),
                          ),
                        ),
                        Container(
                          width: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                  title: RichText(
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text: '\$120',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: '/Night',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      WidgetSpan(
                                          child: Icon(
                                        Icons.bolt,
                                        size: 16,
                                        color: Colors.amber,
                                      )),
                                    ]),
                                  ),
                                  trailing: SizedBox(
                                    height: 20,
                                    width: 40,
                                    child: RichText(
                                      text: const TextSpan(children: [
                                        WidgetSpan(
                                          child: Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.pink,
                                          ),
                                        ),
                                        TextSpan(
                                            text: '4',
                                            style: TextStyle(fontSize: 13))
                                      ]),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Carinthia Lake Sea Breakfast...',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Private Room / 4 Beds',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    width: 270,
                    child: Column(
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {},
                            child: SizedBox(
                                height: 150,
                                width: 250,
                                child: Stack(fit: StackFit.expand, children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: const Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage('temple.jpg')),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 5,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(),
                                            padding: const EdgeInsets.all(16),
                                          ),
                                          onPressed: () {},
                                          child: const Icon(
                                            Icons.favorite,
                                            color: Color.fromARGB(
                                                255, 187, 186, 186),
                                          ))),
                                ])),
                          ),
                        ),
                        Container(
                          width: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                  title: RichText(
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text: '\$120',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: '/Night',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      WidgetSpan(
                                          child: Icon(
                                        Icons.bolt,
                                        size: 16,
                                        color: Colors.amber,
                                      )),
                                    ]),
                                  ),
                                  trailing: SizedBox(
                                    height: 20,
                                    width: 40,
                                    child: RichText(
                                      text: const TextSpan(children: [
                                        WidgetSpan(
                                          child: Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.pink,
                                          ),
                                        ),
                                        TextSpan(
                                            text: '4',
                                            style: TextStyle(fontSize: 13))
                                      ]),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Carinthia Lake Sea Breakfast...',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Private Room / 4 Beds',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              width: 270,
              child: Container(
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                      height: 150,
                      width: 250,
                      child: Stack(fit: StackFit.expand, children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Image(
                              fit: BoxFit.cover,
                              image: AssetImage('nature.jpg')),
                        ),
                        Positioned(
                            top: 50,
                            left: 5,
                            child: Container(
                              width: 200,
                              child: ListTile(
                                title: Text(
                                  'Hosting Fee for /as low as 1%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                subtitle: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.pink,
                                      padding: const EdgeInsets.all(16),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Become a Host',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                            )),
                      ])),
                ),
              ),
            ),
            Text(
              'Most Viewed',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 300,
              width: 270,
              child: Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                          height: 150,
                          width: 250,
                          child: Stack(fit: StackFit.expand, children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage('temple.jpg')),
                            ),
                            Positioned(
                                top: 10,
                                right: 5,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(16),
                                    ),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.favorite,
                                      color: Color.fromARGB(255, 187, 186, 186),
                                    ))),
                          ])),
                    ),
                  ),
                  Container(
                    width: 270,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                            title: RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: '\$120',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: '/Night',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                WidgetSpan(
                                    child: Icon(
                                  Icons.bolt,
                                  size: 16,
                                  color: Colors.amber,
                                )),
                              ]),
                            ),
                            trailing: SizedBox(
                              height: 20,
                              width: 40,
                              child: RichText(
                                text: const TextSpan(children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.pink,
                                    ),
                                  ),
                                  TextSpan(
                                      text: '4', style: TextStyle(fontSize: 13))
                                ]),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                            'Carinthia Lake Sea Breakfast...',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                            'Private Room / 4 Beds',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 300,
              width: 270,
              child: Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                          height: 150,
                          width: 250,
                          child: Stack(fit: StackFit.expand, children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage('temple.jpg')),
                            ),
                            Positioned(
                                top: 10,
                                right: 5,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(16),
                                    ),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.favorite,
                                      color: Color.fromARGB(255, 187, 186, 186),
                                    ))),
                          ])),
                    ),
                  ),
                  Container(
                    width: 270,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                            title: RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: '\$120',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: '/Night',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                WidgetSpan(
                                    child: Icon(
                                  Icons.bolt,
                                  size: 16,
                                  color: Colors.amber,
                                )),
                              ]),
                            ),
                            trailing: SizedBox(
                              height: 20,
                              width: 40,
                              child: RichText(
                                text: const TextSpan(children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.pink,
                                    ),
                                  ),
                                  TextSpan(
                                      text: '4', style: TextStyle(fontSize: 13))
                                ]),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                            'Carinthia Lake Sea Breakfast...',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                            'Private Room / 4 Beds',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 300,
              width: 270,
              child: Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                          height: 150,
                          width: 250,
                          child: Stack(fit: StackFit.expand, children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage('temple.jpg')),
                            ),
                            Positioned(
                                top: 10,
                                right: 5,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(16),
                                    ),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.favorite,
                                      color: Color.fromARGB(255, 187, 186, 186),
                                    ))),
                          ])),
                    ),
                  ),
                  Container(
                    width: 270,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                            title: RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: '\$120',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: '/Night',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                WidgetSpan(
                                    child: Icon(
                                  Icons.bolt,
                                  size: 16,
                                  color: Colors.amber,
                                )),
                              ]),
                            ),
                            trailing: SizedBox(
                              height: 20,
                              width: 40,
                              child: RichText(
                                text: const TextSpan(children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.pink,
                                    ),
                                  ),
                                  TextSpan(
                                      text: '4', style: TextStyle(fontSize: 13))
                                ]),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                            'Carinthia Lake Sea Breakfast...',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                            'Private Room / 4 Beds',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 300,
              width: 270,
              child: Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                          height: 150,
                          width: 250,
                          child: Stack(fit: StackFit.expand, children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage('temple.jpg')),
                            ),
                            Positioned(
                                top: 10,
                                right: 5,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(16),
                                    ),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.favorite,
                                      color: Color.fromARGB(255, 187, 186, 186),
                                    ))),
                          ])),
                    ),
                  ),
                  Container(
                    width: 270,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                            title: RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: '\$120',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: '/Night',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                WidgetSpan(
                                    child: Icon(
                                  Icons.bolt,
                                  size: 16,
                                  color: Colors.amber,
                                )),
                              ]),
                            ),
                            trailing: SizedBox(
                              height: 20,
                              width: 40,
                              child: RichText(
                                text: const TextSpan(children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.pink,
                                    ),
                                  ),
                                  TextSpan(
                                      text: '4', style: TextStyle(fontSize: 13))
                                ]),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                            'Carinthia Lake Sea Breakfast...',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                            'Private Room / 4 Beds',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
