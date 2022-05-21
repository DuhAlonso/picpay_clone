import 'package:flutter/material.dart';

class CentralDonnation extends StatelessWidget {
  const CentralDonnation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/centralDoacoes.png',
              ),
              fit: BoxFit.fitHeight)),
    );
  }
}
