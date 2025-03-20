import 'package:flutter/material.dart';

class FundoGradiente extends StatelessWidget {
  final Widget filho;
  final List<Color>? cores;
  const FundoGradiente({super.key, required this.filho, this.cores});

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;

    return Container(
      width: largura,
      height: altura,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors:
              cores ??
              [
                Colors.purple.shade900,
                Colors.deepPurple.shade900,
                Colors.indigo.shade900,
              ],
        ),
      ),
      child: filho,
    );
  }
}
