import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pest_detection/pallette.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
  }) : super(key: key);

  final String buttonName;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 50.0,
          height: 60,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 167, 9, 138).withOpacity(0.6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: onPressed,
              child: Text(
                buttonName,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
        ),
      ),
    );
  }
}

class RoundedButton_Google_signin extends StatelessWidget {
  const RoundedButton_Google_signin({
    Key? key,
    required this.buttonName,
    required this.onPressed,
  }) : super(key: key);

  final String buttonName;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.06,
      width: size.width * 0.70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xff64495c),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              FontAwesomeIcons.google,
              color: Colors.white,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              buttonName,
              style: kobodyText.copyWith(fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
