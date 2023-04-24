import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible Grid of Cards'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 500 ? 3 : 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              color: Colors.primaries[index],
              child: Center(
                child: Text(
                  "Card ${index + 1}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            );
          },
          itemCount: 12,
        ),
      ),
    );
  }
}