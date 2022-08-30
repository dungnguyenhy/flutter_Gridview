import 'package:flutter/material.dart';
import 'package:flutter_application/FadeAnimation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> listItems = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/6.jpg',
    'assets/images/5.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(8)),
              child: Center(
                  child: Text(
                '0',
                style: TextStyle(color: Colors.white.withOpacity(.9)),
              )),
            ),
          )
        ],
        title: Text(widget.title),
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage('assets/images/bk.jpg'),
                    fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(begin: Alignment.topRight, colors: [
                    Colors.black.withOpacity(.1),
                    Colors.black.withOpacity(.4)
                  ])),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   PageFadeAnimation( Text(
                      'Food Sales',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),500),
                    SizedBox(
                      height: 20,
                    ),
                    PageFadeAnimation(
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      child: Center(
                          child: Text(
                        'Shop Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                    ),1000),
                  ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: listItems
                .map((item) => Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child:PageFadeAnimation( Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(item), fit: BoxFit.cover)),
                        child: Transform.translate(
                          offset: Offset(50, -50),
                          child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 65, vertical: 63),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                  ),
                                  child: Icon(Icons.bookmark_border,size: 25,),
                                  ),
                        ),
                      ),1000),
                    ))
                .toList(),
          ))
        ]),
      )),
    );
  }
}
