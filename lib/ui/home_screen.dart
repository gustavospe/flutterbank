import 'package:bancodouro/models/account.dart';
import 'package:bancodouro/services/account_service.dart';
import 'package:bancodouro/ui/styles/colors.dart';
import 'package:bancodouro/ui/widgets/account_widget.dart';
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
              // Navegação para a tela login, sem o Replacement as telas ficam rodando uma em cima da outra
              // então ao apertar o botão voltar ela volta, útil para isolar o login fazendo o usuário ser obrigado a usar a função logout.
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: FutureBuilder(
          future: AccountService().getAll(),
          builder: (context, snapshot) {
            debugPrint('Snapshot state: ${snapshot.connectionState}');
            debugPrint('Snapshot data: ${snapshot.data}');
            debugPrint("Resposta da API: ${snapshot.data}");
            debugPrint("URL da API: ${AccountService().url}");
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Center(child: CircularProgressIndicator());
              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator());
              case ConnectionState.active:
                return const Center(child: CircularProgressIndicator());
              case ConnectionState.done:
                {
                  if (snapshot.data == null || snapshot.data!.isEmpty) {
                    return const Center(
                      child: Text("Nenhuma conta cadastrada!"),
                    );
                  } else {
                    List<Account> listAccounts = snapshot.data!;
                    return ListView.builder(
                      itemCount: listAccounts.length,
                      itemBuilder: (context, index) {
                        Account account = listAccounts[index];
                        return AccountWidget(account: account);
                      },
                    );
                  }
                }
            }
          },
        ),
      ),
    );
  }
}
