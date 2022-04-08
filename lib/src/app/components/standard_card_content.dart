import 'package:flutter/material.dart';

class StandardCardContent extends StatefulWidget {
  const StandardCardContent({Key? key}) : super(key: key);

  @override
  State<StandardCardContent> createState() => _StandardCardContentState();
}

class _StandardCardContentState extends State<StandardCardContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 0.4,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text('Pedro Henrique Fernandes'),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text('RM84130'),
            ),
            const Text('Sistemas de Informação')
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class StandardSecondCardContent extends StatefulWidget {
  String? content;
  double? altura;

  StandardSecondCardContent(this.content, this.altura, {Key? key})
      : super(key: key);

  @override
  State<StandardSecondCardContent> createState() =>
      _StandardSecondCardContentState();
}

class _StandardSecondCardContentState extends State<StandardSecondCardContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      height: widget.altura!,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 0.4,
        ),
      ),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.content!,
          ),
        ],
      ),
    );
  }
}
