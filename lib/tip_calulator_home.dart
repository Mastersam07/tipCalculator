import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bill_column.dart';
import 'custom_slider.dart';

class TipCalculatorHome extends StatefulWidget {
  @override
  _TipCalculatorHomeState createState() => _TipCalculatorHomeState();
}

class _TipCalculatorHomeState extends State<TipCalculatorHome> {
  //SLIDER VALUES
  double bill = 0;
  double tipPercentage = 0.15;
  double calculateTip() {
    return bill * tipPercentage;
  }

  double calculateTotalBill() {
    return bill + calculateTip();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.withOpacity(0.5),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tip Calculator"),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "TOTAL BILL",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "\$${calculateTotalBill().toStringAsFixed(2)}",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BillColumn(
                          billTitle: "Bill",
                          amount: bill,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        BillColumn(
                          billTitle: "Tip",
                          amount: calculateTip(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomSlider(
                      sliderTitle: "Tip Percentage",
                      valueFormat: "${(tipPercentage * 100).round()}%",
                      value: tipPercentage,
                      onChanged: (value) {
                        setState(() {
                          tipPercentage = value;
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bill",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "${bill.toStringAsFixed(2)}",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.purple.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          bill = double.parse(value);
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
