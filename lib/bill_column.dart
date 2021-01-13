import 'package:flutter/material.dart';

class BillColumn extends StatelessWidget {
  const BillColumn({
    Key key,
    this.billTitle,
    this.amount,
  }) : super(key: key);
  final String billTitle;
  final double amount;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          billTitle ?? "",
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        Text(
          "\$${amount.toStringAsFixed(2)}" ?? "Bill",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
