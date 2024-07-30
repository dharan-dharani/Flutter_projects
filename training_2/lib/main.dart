import 'package:flutter/material.dart';

void main() =>
    runApp(new MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _Mystate createState() => _Mystate();
}

class _Mystate extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        Container(
          width: 300,
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Text(
                    'Masfob',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ListTile(
                  leading: Icon(Icons.home), title: Text('Home'), onTap: () {}),
              ListTile(
                leading: Icon(Icons.view_comfy_alt),
                title: Text('Project'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.task),
                title: Text('Task'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.workspaces),
                title: Text('Team'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {},
              ),
              Container(
                height: 300,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFFDDD8D8), Colors.white])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Upgrade to pro',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Get 1 Month free and unlock',
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF6D6A6A)),
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text('Upgrade')),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.error),
                title: Text('Help & Information'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {},
              ),
            ],
          ),
        ),
        VerticalDivider(
          width: 0.20,
          color: Colors.grey,
        ),
        Container(
          width: 700,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 290),
                      child: Container(
                        width: 400,
                        child: Text(
                          'Hello,Masfob',
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              'Track team progress work,you almost reach a goal',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Container(
                              child: Text(
                                '18 May, 2019',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.calendar_today),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 0.20,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.recommend)),
                          Container(
                            child: Text(
                              'Finished',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        width: 0.20,
                        endIndent: 1.0,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.timer)),
                          Container(
                            child: Text(
                              'Tracked',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        width: 0.20,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.trending_up)),
                          Container(
                            child: Text(
                              'Efficiency',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0.20,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(right: 520.0, top: 4.0),
                child: Container(
                  child: Text(
                    'Performance',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 650,
                  child: Image(image: AssetImage('graph.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Divider(
                  height: 0.20,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 520.0, top: 2),
                child: Container(
                  child: Text(
                    'Current Task',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5, right: 20),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 143, 195, 238),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.trending_up_rounded),
                                ),
                              ),
                              SizedBox(width: 8),
                              Container(
                                child: Text(
                                  'Product review for market',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 4,
                            ),
                            SizedBox(width: 8),
                            Container(
                              child: Text(
                                'In Progress',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5, right: 20),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(243, 136, 129, 1)),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.search_rounded),
                                ),
                              ),
                              SizedBox(width: 8),
                              Container(
                                child: Text(
                                  'UX/UI research for product',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.orange,
                              radius: 4,
                            ),
                            SizedBox(width: 8),
                            Container(
                              child: Text(
                                'Hold',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5, right: 20),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      const Color.fromARGB(255, 189, 188, 188),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.terminal),
                                ),
                              ),
                              SizedBox(width: 8),
                              Container(
                                child: Text(
                                  'App design and development',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 4,
                            ),
                            SizedBox(width: 8),
                            Container(
                              child: Text(
                                'Done',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        VerticalDivider(
          width: 0.20,
          color: Colors.grey,
        ),
        Container(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 206, 208, 211),
                    ),
                    width: 345,
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("vijay.jpg"),
                            radius: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              child: Text(
                                'Masfob',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              '@masfob',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.call),
                                  color: Colors.black,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.videocam),
                                  color: Colors.black,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.more_vert),
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Divider(
                    height: 0.25,
                    color: Colors.grey,
                  ),
                  Container(child: Text('Activity')),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100.0, top: 10),
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage("tony.jpg"),
                        radius: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 130),
                            child: Container(
                                child: Text(
                              'Tony',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                          ),
                          Container(
                            child: Text(
                              'commented on stark project',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Card(
                  color: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 200,
                      child: Text(
                        'Hi, This is Tony start a new task',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100.0, top: 10),
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage("peter.webp"),
                        radius: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 130),
                            child: Container(
                                child: Text(
                              'Peter',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                          ),
                          Container(
                            child: Text(
                              'commented on x project',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Card(
                  color: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 20,
                      width: 150,
                      child: Text(
                        'Lets Go...',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100.0, top: 10),
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage("Steve.webp"),
                        radius: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 130),
                            child: Container(
                                child: Text(
                              'Steve',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                          ),
                          Container(
                            child: Text(
                              'commented on shield project',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
