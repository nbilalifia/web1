import 'package:flutter/material.dart';
import 'package:lat1/pages/first_page.dart';
import 'package:lat1/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: MyHomePage(

      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage ({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Cipicip"),
            centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Text('Drawer'),
            ),
            ListTile(
              title: Text("Logout"),
            ),
          ],
        ),
      ),
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 320,
              height: 150,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Hello',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Membuat Jadwal Baru');
              },
              child: Text('View All'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white10,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  textStyle: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              width: 200.0,
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 105,
                  height: 150,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(left: 40),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Hello',
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 105,
                  height: 150,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Hello',
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 105,
                  height: 150,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(right: 40),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Hello',
                  ),
                ),

              ],
            ),
            SizedBox(
              width: 200.0,
              height: 10.0,
            ),
            const Text(
              "Kategori",
            ),
            SizedBox(
              width: 21.0,
              height: 7.0,
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              childAspectRatio: 3,
              children: List.generate(8, (index) {
                return
                  Container(
                    margin: const EdgeInsets.only( left: 4, top : 2, bottom: 2 ),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Kategori ${index + 1}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                        ),
                      ),
                    ),
                  );
              }),
            ),
            SizedBox(
              width: 200.0,
              height: 10.0,
            ),
            const Text(
              "Informasi Lainnya",
            ),
            SizedBox(
              width: 200.0,
              height: 7.0,
            ),
            Expanded(
              child: ListView(
                children: [
                  Center(
                    child:
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 330,
                          height: 100,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'Hello',
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 330,
                          height: 100,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'Hello',
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 330,
                          height: 100,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'Hello',
                          ),
                        ),
                      ],
                    ),
                  )

                  // ...
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    print('Tap!');
                  },
                  onDoubleTap: (){
                    print("Tap 2 kali!");
                  },
                  child: 
                  Container(
                    margin: const EdgeInsets.only(left:8, top: 8, bottom: 8),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Tap GestureDetector',
                      style:
                      TextStyle(
                          fontSize: 10,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('InkWell tapped!')),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left:8, top: 8, bottom: 8),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Tap InkWell',
                      style:
                      TextStyle(
                          fontSize: 10,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 200.0,
              height: 10.0,
            ),

          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),

        ],
      ),

      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onDestinationSelected: (int value){
          setState(() {
            currentIndex = value;
          });
        },
        selectedIndex: currentIndex, // 0 = home, 1 = profile
      ),
    ));
  }
}

