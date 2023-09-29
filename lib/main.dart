import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uppgift5_v1/pages/swedishPage.dart';
import 'package:uppgift5_v1/pages/frenchPage.dart';
import 'package:uppgift5_v1/pages/historyPage.dart';
import 'package:uppgift5_v1/pages/arabicPage.dart';
import 'package:uppgift5_v1/pages/spanishPage.dart';

import 'firebase_options.dart';

//Home page which leads to other pages
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

//Widgets to show appbar and body. Body shows buttons, each with
// a function which leads to their respective page when clicked
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SwedishPage()),
                      );
                    },
                    child: const Text('Swedish'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FrenchPage()),
                      );
                    },
                    child: const Text('French'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SpanishPage()),
                      );
                    },
                    child: const Text('Spanish'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ArabicPage()),
                      );
                    },
                    child: const Text('Arabic'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HistoryPage()),
                      );
                    },
                    child: const Text('History'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
