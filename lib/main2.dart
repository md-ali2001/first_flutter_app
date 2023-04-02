import 'package:flutter/material.dart';
import 'package:newpr/widgets/rounded_btn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muhammad Ali Masood',
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
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Muhammad Ali Masood'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  var _height = 200.2;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  callback() {
    print("clicked");
  }

  var _width = 100.1;
  var _height = 200.2;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedContainer(
              height: _height,
              width: _width,
              color: Colors.blue,
              duration: Duration(seconds: 5),
            ),
            TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.black54)))),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("NAME"),
                subtitle: Text("mobile no."),
                trailing: Icon(Icons.add)),
            Card(
              elevation: 40,
              shadowColor: Colors.blue,
              child: Container(
                width: 100,
                height: 100,
                child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/download.png'),
                    backgroundColor: Colors.blue,
                    radius: 200),
              ),
            ),
            Card(child: Text('ali')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    var swap = _height;
                    _height = _width;
                    _width = swap;
                  });
                },
                child: Text("clicked")),
            RoundedButton(
              btnname: 'login',
              icon: Icon(Icons.lock),
              callback: () {
                print("logged in");
              },
              textStyle: mTextStyle16(),
            )
          ],
        ),
      ),
    );
  }

  mTextStyle16() {
    style:
    TextStyle(fontWeight: FontWeight.bold);
  }
}
