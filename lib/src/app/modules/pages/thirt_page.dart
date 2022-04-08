import 'package:checkpoint01_flutter/src/app/components/standard_card_content.dart';
import 'package:checkpoint01_flutter/src/app/modules/pages/second_page.dart';
import 'package:checkpoint01_flutter/src/utils/export.dart';
import 'package:flutter/material.dart';

class ThirtPage extends StatefulWidget {
  const ThirtPage({Key? key}) : super(key: key);

  @override
  State<ThirtPage> createState() => _ThirtPageState();
}

class _ThirtPageState extends State<ThirtPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Curiosidades sobre a Marvel',
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
                  return const SecondPage();
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
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: StandardSecondCardContent(marvelQuestion, 40),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0),
                child: StandardSecondCardContent(marvelAnswer, 200),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
