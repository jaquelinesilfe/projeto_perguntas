import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  //const Resposta(this.texto, void Function() responder, {Key? key, required this.quandoSelecionado}) : super(key: key);
  const Resposta(this.texto, this.quandoSelecionado, {Key? key} )
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        onPressed: quandoSelecionado,
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
