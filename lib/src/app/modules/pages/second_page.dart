import 'package:checkpoint01_flutter/src/app/components/standard_card_content.dart';
import 'package:checkpoint01_flutter/src/app/modules/pages/intro_page.dart';
import 'package:checkpoint01_flutter/src/app/modules/pages/thirt_page.dart';
import 'package:checkpoint01_flutter/src/utils/export.dart';
import 'package:flutter/material.dart';

import 'intro_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Curiosidades sobre o Flutter',
            textScaleFactor: 1.5,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return IntroPage();
                },
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  right: 50.0,
                ),
                child: StandardSecondCardContent(question, 40),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0),
                child: StandardSecondCardContent(answer, 200),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const ThirtPage();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    button,
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    fixedSize: MaterialStateProperty.all(
                      const Size(100, 60),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
