import 'package:bancodouro/ui/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:bancodouro/models/account.dart'; 

class AccountWidget extends StatelessWidget {
  final Account account;
  const AccountWidget({super.key, required this.account});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.lightOrange,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //jogar os filhos para os lados, entre eles(espaço da coluna)
        children: [
           Column(
            mainAxisAlignment: MainAxisAlignment.center, //jogar texto para o meio da coluna
            crossAxisAlignment: CrossAxisAlignment.start, //jogar texto para a esquerda(começo da coluna)
            children: [
              Text("${account.name} ${account.lastName}", style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
              Text("ID: ${account.id}"),
              Text("Saldo: R\$ ${account.balance.toStringAsFixed(2)}"),
              Text("Tipo: ${account.accountType ?? "Não definido"}"), // Verifique se null é permitido
            ],
          ), // Mantida a coluna vazia

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings), 
          ),
        ],
      ),
    );
  }
}
