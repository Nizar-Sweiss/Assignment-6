import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

Color mydefaultColor = Color.fromARGB(255, 27, 108, 30);
bool Op1 = false;
bool Op2 = false;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: mydefaultColor,
            drawer: Drawer(),
            appBar: AppBar(
              backgroundColor: Colors.black12,
            ),
            body: ListView(
              // physics: ,
              children: [
                IconButton(
                  onPressed: () {
                    //action coe when button is pressed
                    setState(() {
                      mydefaultColor == Color.fromARGB(255, 27, 108, 30)
                          ? mydefaultColor = Color.fromARGB(255, 178, 249, 181)
                          : mydefaultColor = Color.fromARGB(255, 27, 108, 30);
                    });
                  },
                  icon: Icon(Icons.dark_mode,
                      color: Color.fromARGB(255, 255, 254, 254)),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Check what you like Us yo post more please .",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Column(
                      children: [
                        CheckboxListTile(
                            secondary: CircleAvatar(
                              child: Icon(
                                Icons.nature_people,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              backgroundColor: Color.fromARGB(0, 255, 193, 7),
                            ),
                            title: Text(
                              "Option 1 ",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "Earth's Atmosphere",
                              style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            isThreeLine: true,
                            checkColor: Color.fromARGB(255, 255, 255, 255),
                            value: Op1,
                            onChanged: (value) {
                              setState(() {
                                Op1 = value!;
                              });
                            }),
                        CheckboxListTile(
                            secondary: CircleAvatar(
                              child: Icon(
                                Icons.nature_people,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              backgroundColor: Color.fromARGB(0, 255, 193, 7),
                            ),
                            title: Text(
                              "Option 2 ",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "Eclipses",
                              style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            isThreeLine: true,
                            checkColor: Color.fromARGB(255, 254, 254, 254),
                            value: Op2,
                            onChanged: (value) {
                              setState(() {
                                Op2 = value!;
                              });
                            }),
                      ],
                    ),
                  )
                ]),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/1.jpg"),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/4.jpg"),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/5.jpg"),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/6.jpg"),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/7.jpg"),
                    ),
                  ),
                ),
                Container(
                
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: ListTile(
                    title: const Text(
                      'Other Images :',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 3, 3, 3)),
                    ),
                    tileColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                Container(
                    height: 300,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 350,
                          height: 500,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/2.jpg"),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_circle_right,
                              color: Color.fromARGB(255, 255, 254, 254)),
                        ),
                        Container(
                          width: 350,
                          height: 500,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/3.jpg"),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_circle_right,
                              color: Color.fromARGB(255, 255, 254, 254)),
                        ),
                        Container(
                          width: 350,
                          height: 500,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/3.jpg"),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_circle_right,
                              color: Color.fromARGB(255, 255, 254, 254)),
                        ),
                        Container(
                          width: 350,
                          height: 500,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/8.jpg"),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            )));
  }
}
