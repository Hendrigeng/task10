import 'package:flutter/material.dart';

void main() {
  runApp(
    myapp(),
  );
}

class myapp extends StatelessWidget {
  const myapp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: scf(),
    );
  }
}

class scf extends StatefulWidget {
  const scf({super.key});

  @override
  State<scf> createState() => _scfState();
}

class _scfState extends State<scf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SHRINE"),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Icon(Icons.more_vert)
        ],
        backgroundColor: Colors.purple[100],
      ),
      body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(16.0),
          childAspectRatio: 8.0 / 9.0,
          children: _buildGridCards(10) // Replace
      ),
    );
  }
}

class card extends StatefulWidget {
  const card({super.key});

  @override
  State<card> createState() => _cardState();
}
//uesless widget


class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        width: 150,
        height: 250,
        child: Card(
          color: Colors.purple[100],
          elevation: 20,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: AssetImage('images/R.png'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {},
                child: Text("TITLE"),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "SECONDART TEXT",
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


//the correct widget
List<Card> _buildGridCards(int count) {
  List<Card> cards = List.generate(
    count,
        (int index) {
      return Card(
        clipBehavior: Clip.antiAlias,
        child:Container(color: Colors.purple[100],
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Image.asset('images/R.png'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text('Title'),
                  SizedBox(height: 8.0),
                  Text('Secondary Text'),
                ],
              ),
            ),
          ],
        ),),
      );
    },
  );
  return cards;
}