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
      debugShowCheckedModeBanner: false,
      title: 'M IDRIS EPENDI - 211011401073',
      theme: ThemeData(      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'UTS M IDRIS EPENDI'),
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
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Shoes',
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: Image.asset(
                "pp.jpg",
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              _buildColoredBox(Color.fromARGB(255, 1, 255, 221), "Nike SB Run",
                  "Mid Premium", 450, 150, "RP. 200.000", "sp1.png"),
              SizedBox(height: 15),
              _buildColoredBox(
                  const Color.fromARGB(255, 2, 46, 66),
                  "Nike Air Zoom Pegasus",
                  "Men`s Rood Running Shoes",
                  450,
                  150,
                  "RP. 150.000",
                  "sp2.png"),
              SizedBox(height: 20),
              _buildColoredBox(
                  Color.fromARGB(255, 252, 179, 21),
                  "Nike ZoomX Vaporfly",
                  "Men`s Rood Running Shoes",
                  450,
                  150,
                  "RP. 300.000",
                  "sp3.png"),
              SizedBox(height: 20),
              _buildColoredBox(Color.fromARGB(255, 0, 204, 255), "Nike Air Force 1 S50",
                  "Older Kids Shoe", 450, 150, "RP. 200.000", "sp1.png"),
              SizedBox(height: 20),
              _buildColoredBox(const Color.fromARGB(255, 243, 197, 137), "Nike Waffle One",
                  "Men`s Shoes", 450, 150, "RP. 300.000", "sp3.png"),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColoredBox(Color color, String title, String description,
      double width, double height, String harga, String gambar) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        description,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 25),
                      Text(
                        harga,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  gambar,
                  width: 180,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
