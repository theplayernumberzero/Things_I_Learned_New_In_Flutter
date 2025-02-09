import 'package:flutter/material.dart';

class DenemePage extends StatefulWidget {
  const DenemePage({super.key});

  @override
  State<DenemePage> createState() => _DenemePageState();
}

class _DenemePageState extends State<DenemePage> {
  bool isAdded = false;
  List<Widget> widgets = <Widget>[
    Text(
      "Ekleme 1",
      style: TextStyle(color: Colors.red),
    ),
    Icon(Icons.add),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spread Operator'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ana widget',
              style: TextStyle(fontSize: 24),
            ),
            if (isAdded) ...[
              //collection if
              ...widgets,
              Text(
                'If bloğu sonu',
                style: TextStyle(color: Colors.red),
              )
            ],
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isAdded = !isAdded;
                });
              },
              child: Text(isAdded ? 'Kaldır' : 'Ekle'),
            ),
            for (var i = 0; i < 5; i++)
              Text(
                'Eleman $i',
                style: TextStyle(color: Colors.blue),
              ), // collection for
          ],
        ),
      ),
    );
  }
}
