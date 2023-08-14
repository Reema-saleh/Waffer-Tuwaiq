import 'package:flutter/material.dart';
import 'package:waffer/constants/colors.dart';
import 'package:waffer/globals/data.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key, required this.transaction});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: WColors.blue,
                ),
                margin: const EdgeInsets.only(right: 8),
                height: 50,
                width: 50,
                child: Icon(
                  transaction.icon,
                  color: WColors.white,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Text(
                      '\$700 left',
                      style: TextStyle(
                        fontSize: 12,
                        color: WColors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text(
                    '\$${transaction.amount}',
                    style: const TextStyle(
                      color: WColors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
