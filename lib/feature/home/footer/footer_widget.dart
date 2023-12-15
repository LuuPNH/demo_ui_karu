import 'package:flutter/material.dart';

import '../../../components/button_add_remove.dart';
import '../../../components/button_switch.dart';
import '../../../utils/text_version.dart';

class FooterWidget extends StatefulWidget {
  final bool showButton;
  final ValueChanged<bool> onChanged;

  const FooterWidget(
      {Key? key, required this.showButton, required this.onChanged})
      : super(key: key);

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  double count = 9999990009.123;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonSwitch(
                text: "両建て",
                isSwitched: widget.showButton,
                onChanged: widget.onChanged),
            const SizedBox(width: 4),
            Flexible(
                flex: 1,
                child: widget.showButton
                    ? ButtonAddRemove(
                        onCountAdd: () {
                          setState(() => count += 0.0001);
                        },
                        count: count,
                        onCountRemove: () {
                          setState(() => count -= 0.0001);
                        },
                      )
                    : const TextVersion()),
          ],
        ),
        const SizedBox(height: 2.0),
        if (widget.showButton) const TextVersion(),
      ],
    );
  }
}
