import 'package:flutter/material.dart';
import 'potriate_layout.dart';
import 'landscap_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const CardView(),
    );
  }
}

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    var myScreemOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.cake_outlined), label: 'Cakes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.donut_large), label: 'Donuts'),
        ]),
        drawer: const Drawer(),

        // body: Center(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.only(top: 15),
        //         child: Container(
        //           height: heightOfContainer,
        //           width: widthOfContainer,
        //           decoration: const BoxDecoration(
        //               borderRadius: BorderRadius.all(Radius.circular(35)),
        //               gradient: LinearGradient(
        //                   colors: [
        //                     Colors.yellow,
        //                     Colors.pink,
        //                     Colors.purple,
        //                     Colors.blue
        //                   ],
        //                   begin: Alignment.topLeft,
        //                   end: Alignment.bottomRight,
        //                   stops: [0.1, 0.3, 0.6, 1.0])),
        //           child: Padding(
        //             padding: const EdgeInsets.only(top: 28.0, left: 20),
        //             child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: const [
        //                   Text(
        //                     'Welcome',
        //                     style: TextStyle(
        //                       color: Color.fromARGB(255, 253, 252, 252),
        //                       fontWeight: FontWeight.bold,
        //                       fontSize: 28,
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding: EdgeInsets.only(right: 20, top: 5),
        //                     child: Icon(
        //                       Icons.wallet,
        //                       color: Colors.yellow,
        //                     ),
        //                   )
        //                 ]),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // )

        body: Builder(
          builder: (context) => Orientation.portrait == myScreemOrientation
              ? const PortraitLayout()
              : LandScapeLayout(),
        ));
  }
}
