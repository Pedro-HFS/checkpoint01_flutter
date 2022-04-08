import 'package:checkpoint01_flutter/src/app/components/standard_card_content.dart';
import 'package:checkpoint01_flutter/src/app/modules/pages/second_page.dart';
import 'package:flutter/material.dart';
import 'package:checkpoint01_flutter/src/utils/export.dart';
import 'package:checkpoint01_flutter/src/app/components/standard_form.dart';

class IntroPage extends StatefulWidget {
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: AppPaddings.borderPadding,
            right: AppPaddings.borderPadding,
            top: AppPaddings.topPadding,
          ),
          child: Column(
            children: [
              GestureDetector(
                child: Image.asset('assets/images/galo.png'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return SecondPage();
                      },
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              StandardForm(label: name),
              const SizedBox(height: 20),
              StandardForm(label: rm),
              const SizedBox(
                height: 50,
              ),
              StandardCardContent(),
            ],
          ),
        ),
      ),
    );
  }
}
