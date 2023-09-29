import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// Page to show history of all translated text and its original form using Firestore database
final FirebaseFirestore storedb = FirebaseFirestore.instance;


class HistoryPage extends StatefulWidget {
  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('History'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: 600
              ),
              // StreamBuilder is a widget that helps read data from Firestore
              child: StreamBuilder(
                // stream Specifies which collection in the database to listen to for changes.
                // builder receives two arguments, context and snapshot which is the data from
                // translations collection in Firestore
                stream:
                FirebaseFirestore.instance.collection('translations').snapshots(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  // If data doesn't exist show a loading circle
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  // else return a ListView which maps through every document in translations
                  // collection. For every document return a centered column wih 2 Text
                  // widgets, each containing a field saved within document.
                  // One is original text and the other is translated text.
                  // In short, each field within a document is displayed in Text widgets.
                  return ListView(
                    shrinkWrap: true,
                    children: snapshot.data!.docs.map((QueryDocumentSnapshot document) {
                      return Center(
                        child: Column(
                          children: [
                          SizedBox(height: 15),
                          Text("Original Text: " + document['Original Text']),
                          Text("Translated Text: " + document['Translated Text']),
                        ]),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10),
                child:   ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Home'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
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