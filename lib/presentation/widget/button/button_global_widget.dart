import 'package:flutter/material.dart';
import 'package:rapid_chain/presentation/widget/label/label_global_widget.dart';
import 'package:rapid_chain/util/constant/general_enum.dart';
import 'package:rapid_chain/util/extension/design_extension/radius_extension.dart';
import 'package:rapid_chain/util/extension/design_extension/size_extension.dart';

class ButtonGlobalWidget extends StatelessWidget {
  final APPLICATION_COLOR textColor;
  final String text;
  final VoidCallback onTap;
  const ButtonGlobalWidget({
    super.key,
    this.textColor = APPLICATION_COLOR.LIGHT,
    this.text = "",
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: context.MidAllRadius,
      child: Container(
        width: context.ScreenWidth,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFFF00EBA), // Brighter pink
              Color.fromARGB(255, 25, 24, 48)
            ], // Gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color:
                  Colors.pinkAccent.withOpacity(0.6), // Brighter shadow color
              offset: const Offset(0, 6),
            ),
          ],
        ),
        height: 55,
        child: TextButton(
          onPressed: () => onTap(),
          child: LabelGlobalWidget(
            textColor: textColor,
            title: text,
          ),
        ),
      ),
    );
  }
}