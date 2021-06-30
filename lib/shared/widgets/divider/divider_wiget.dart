import 'package:flutter/material.dart';
import 'package:payflow/shared/theme/app_colors.dart';

class DividerWidget extends StatelessWidget {
  final double height;
  const DividerWidget({
    Key key,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: height,
      color: AppColors.stroke,
    );
  }
}
