import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my card',
      theme: ThemeData(primarySwatch: Colors.teal, fontFamily: 'Source-Sans'),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: const Text(
          "My Card",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Center(
            //   child: Container(
            //     height: 80.0,
            //     width: 80.0,
            //     decoration: const BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(50.0),
            //       ),
            //       image: DecorationImage(
            //         fit: BoxFit.cover,
            //         image: AssetImage('assets/images/profile.jpg'),
            //       ),
            //     ),
            //   ),
            // ),
            const Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "MUSAH IBRAHIM ALI",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
            ),
            const Text(
              "Full Stack Developer",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontFamily: 'Source-Sans',
                fontWeight: FontWeight.normal,
                letterSpacing: 3.0,
              ),
            ),
            const SizedBox(
              width: 150.0,
              height: 20.0,
              child: Divider(
                thickness: 0.8,
                color: Colors.white,
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.symmetric(
            //     vertical: 10.0,
            //     horizontal: 15.0,
            //   ),
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 8.0,
            //     vertical: 15.0,
            //   ),
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(6.0),
            //   ),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: const [
            //       Icon(
            //         Icons.email,
            //         color: Colors.teal,
            //         size: 30.0,
            //       ),
            //       SizedBox(width: 10.0),
            //       Text(
            //         "musahibrahimali@gmail.com",
            //         style: TextStyle(
            //           color: Colors.teal,
            //           fontSize: 22.0,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Card(
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 15.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal[600],
                  size: 28.0,
                ),
                title: const Text(
                  "musahibrahimali@gmail.com",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal[600],
                  size: 28.0,
                ),
                title: const Text(
                  "0540 000 000 0",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
