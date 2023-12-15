import 'package:flutter/material.dart';
import '../../resources/colors.dart' as Style;

class AppCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function()? onTap;
  final String? title;

  const AppCheckBox(
      {Key? key, required this.isChecked, required this.onTap, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          IntrinsicWidth(
            child: Text(title ?? "",
                maxLines: 1,
                style: const TextStyle(
                    fontFamily: 'HiraginoMaruGothicStdN',
                    fontSize: 8,
                    color: Colors.black,
                    overflow: TextOverflow.clip)),
          ),
          const SizedBox(width: 1.0),
          Container(
            height: 16,
            width: 16,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Style.Colors.blue500, width: 1.0),
            ),
            margin: const EdgeInsets.only(left: 1.0),
            child: Padding(
              padding: const EdgeInsets.all(3.5),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isChecked ? Colors.blue : Colors.transparent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
