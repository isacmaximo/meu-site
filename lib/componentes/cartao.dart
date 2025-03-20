import 'package:flutter/material.dart';

class Cartao extends StatelessWidget {
  final double? elevacao;
  final Widget? filho;
  final double? largura;
  final double? altura;
  final EdgeInsetsGeometry espacamento;
  const Cartao({
    super.key,
    this.elevacao,
    this.filho,
    this.largura,
    this.altura,
    required this.espacamento,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: largura,
      height: altura,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.grey[800]!),
      ),
      child: Padding(padding: espacamento, child: filho),
    );
  }
}
