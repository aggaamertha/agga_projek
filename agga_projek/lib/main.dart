import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft, // Menempatkan teks di sebelah kiri
            child: Text(
              "Pembimbing Akademik (PA)",
              // style: TextStyle(fontSize: 20),
            ),
          ),
          ClipOval(
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDlAoPwmZeNBqol4revirA1sruZ7kByRU6Mg&s",
              height: 200, // Disesuaikan agar proporsional dengan bentuk bulat
              width: 200,
              fit: BoxFit.cover, // Menyesuaikan gambar dengan bingkai bulat
            ),
          ),
          Row(
            children: [
              Icon(Icons.person),
              Text("AGGA"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.email),
              Text("aggajenius@gmail.com"),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
