import 'package:bancodouro/ui/styles/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/banner.png"), //Caminho da imagem
          Align(
            alignment: Alignment.bottomLeft, //Alinhamento da imagem na esquerda em baixo
            child: Image.asset("assets/images/stars.png")), //Caminho da imagem
          Padding(
            padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, //Alinhamento do eixo principal
                children: <Widget>[ //Criado uma coluna, com um filho e espesificado o tipo que ela é um widget
                const SizedBox(height: 128),
                Image.asset(
                  "assets/images/logo.png", //Caminho da imagem
                  width: 120, //Largura da imagem
                ),
                Column(
                crossAxisAlignment: CrossAxisAlignment.stretch, //Alinhamento do eixo cruzado
                  children: [
                    const SizedBox(height: 32), //Espaçamento entre os widgets
                    const Text(
                      "Sistema de Gestão de Conta",
                      textAlign: TextAlign.center, //Alinhamento do texto no centro poderia ser por exemplo na direita
                      style: TextStyle(
                        fontSize: 32, //Tamanho da fonte
                      ),
                      ),
                    const SizedBox(height: 32), //Espaçamento entre os widgets
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Email"),
                      ),
                    ),
                    TextFormField(
                      obscureText: true, //Esconder o texto digitado
                      decoration: const InputDecoration(
                        label: Text("Senha"),
                      ),
                    ),
                    const SizedBox(height: 32), //Espaçamento entre os widgets
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "home");
                        //Navegação para a tela home, sem o Replacemente as telas ficam rodando uma em cima da outra
                        //então ao apertar o botão voltar ela volta, util para isolar o login fazendo o usuario a ser obrigado a usar a função logout.
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(AppColor.orange) //Cor do botão
                      ),
                      child: const Text("Entrar", style: TextStyle(color: Colors.black), //Cor do texto
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
