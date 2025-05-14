import 'package:bancodouro/ui/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:bancodouro/models/account.dart'; // Corrigido o caminho do import

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
        children: [
           Column(
            children: [
              Text("${account.name} ${account.lastName}"), // Corrigido para account.name
            ],
          ), // Mantida a coluna vazia

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings), // Corrigido para Icons.settings
          ),
        ],
      ),
    );
  }
}
