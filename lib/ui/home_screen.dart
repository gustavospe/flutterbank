import 'package:bancodouro/ui/styles/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.lightGrey,
        title: const Text("Sistema de Gestão de Conta"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "login");
              //Navegação para a tela login, sem o Replacemente as telas ficam rodando uma em cima da outra
              //então ao apertar o botão voltar ela volta, util para isolar o login fazendo o usuario a ser obrigado a usar a função logout.
            },
             icon: const Icon(Icons.logout),)
        ],
      ),
    );
  }
}