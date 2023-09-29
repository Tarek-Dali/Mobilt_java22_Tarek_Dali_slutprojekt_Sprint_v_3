import 'package:flutter/material.dart';

// A function which receives necessary arguments which are then used in Scaffold so that
// buttons and textfield work as they should. Translate button uses the translate function
// to translate text value of the textfield. Home button removes current stack and brings user to
// home page
Scaffold pageScaffold(String pageName, String translatedText, Function translate, String input, context, TextEditingController inputController){

  return Scaffold(
    backgroundColor: Colors.grey[300],
    appBar: AppBar(
      title: Text(pageName),
      centerTitle: true,
      backgroundColor: Colors.red[600],
    ),
    body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(translatedText),
            ),
            SizedBox(height: 50,),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  translate();
                },
                child: const Text('Translate'),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: SizedBox(
                width: 300,
                child: TextFormField(
                  controller: inputController,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    label: Center(
                      child: Text('Write your text here'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Home'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}