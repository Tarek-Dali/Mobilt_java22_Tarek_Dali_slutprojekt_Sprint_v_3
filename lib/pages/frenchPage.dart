import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
import '../functions/pagesFunction.dart';

// Page to translate textfield input into French using a free Google Translate API for Dart
class FrenchPage extends StatefulWidget {
  const FrenchPage({super.key});

  @override
  State<FrenchPage> createState() => _FrenchPageState();
}

class _FrenchPageState extends State<FrenchPage> {
  GoogleTranslator translator = GoogleTranslator();

  TextEditingController inputController = TextEditingController();

  String translatedText = '';

  String input = '';

  // Translate sets textfield value into input which then gets translated to French
  void translate() {
    input = inputController.text;
    translator.translate(input, to: "fr").then((Translation output) {
      setState(() {
        translatedText = output.text;
      });

      // Both original text and translated text are inserted into fields for data declaration
      final FirebaseFirestore storedb = FirebaseFirestore.instance;
      final data = <String, String>{
        "Original Text": input,
        "Translated Text": translatedText,
      };
      // A document is added to translations using data which has the fields.
      // Collection translations is created if it isn't already created. Each time a text is
      // translated a document is added into translations collection.
      // On success print success, otherwise print error
      storedb.collection('translations').add(data).then((snip) {
        print('Success');
      }).catchError((error) {
        print('Oops, $error');
      });
    });
  }

  // A function from pagesFunction dart file takes necessary arguments then returns a scaffold.
  // Reason for this is to simplify changes across all language pages which use the same
  // scaffold in pagesFunction, making changes easier.
  @override
  Widget build(BuildContext context) {
    return pageScaffold('French', translatedText, translate, input, context, inputController);
  }
}
