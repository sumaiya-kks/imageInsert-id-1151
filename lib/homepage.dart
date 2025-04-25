import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  mySnackBar(msg, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(93, 14, 152, 143),
        foregroundColor: const Color.fromARGB(255, 10, 57, 7),
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("search", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(123, 33, 149, 243),
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      body: Container(
        height: 600,
        width: 500,
        alignment: Alignment.topRight,
        padding: EdgeInsets.all(50),
        margin: EdgeInsets.fromLTRB(80, 50, 0, 70),
        decoration: BoxDecoration(
          color: const Color.fromARGB(103, 12, 125, 129),
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Column(children: [Image.asset('assets/images/images.jpg')]),
      ),
    );
  }
}
