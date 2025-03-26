import 'package:flutter/material.dart';
import 'package:lat1/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pertemuan 2"),
        backgroundColor: Colors.amberAccent,
        leading: Icon(Icons.home),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: (){
                print("Hello World");
              },
          ),
        ],
      ),
      body: SafeArea( //cara bikin safe area: wrap with widget -> ganti widget dengan SafeArea
        child: InkWell(
          child: Container(
            alignment: Alignment.center, // set all the container to center
            margin: EdgeInsets.all(20),
            height: 100,
            width: 100,
          
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "Hello World",
                style:TextStyle() ,), // set center just to text
          ),
              ),
        ),
      ));
  }
}
