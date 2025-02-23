import 'package:flutter/material.dart';
import 'package:lat1/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st page")),
      drawer: Drawer(
        child: Column(
          children: [
            // common to place a drawer header here
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),
            
            //home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
            ),

            ListTile(
              leading: Icon(Icons.people),
              title: Text("P R O F I L E"),
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
            ),
          ],
        ),
      ),
    );
  }
}
