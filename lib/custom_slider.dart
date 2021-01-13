import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final String sliderTitle;
  final String valueFormat;
  final double value;
  final Function(double) onChanged;

  const CustomSlider(
      {Key key, this.sliderTitle, this.value, this.onChanged, this.valueFormat})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              sliderTitle ?? "",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            Text(
              valueFormat ?? "",
              style: TextStyle(
                fontSize: 16,
                color: Colors.purple.withOpacity(0.8),
              ),
            ),
          ],
        ),
        Slider(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.purple,
          inactiveColor: Colors.purple.withOpacity(0.3),
        ),
      ],
    );
  }
}
