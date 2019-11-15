//packages
import 'package:flutter/material.dart';

class NamenInput extends StatelessWidget {
  final String naamInput;

  NamenInput(this.naamInput);

  @override
  Widget build(BuildContext context) {
    return Text(
      naamInput,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 22,
      ),
      textAlign: TextAlign.left,
    );
  }
}
