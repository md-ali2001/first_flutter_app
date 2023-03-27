import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  late final String btnname;
  late final Icon? icon;
  late final Color? bgcolor;
  late final TextStyle? textStyle;
  late final VoidCallback? callback;

  RoundedButton(
      {required this.btnname,
      this.icon,
      this.bgcolor = Colors.blue,
      this.textStyle,
      this.callback});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        onPressed: () {
          callback!();
        },
        child: icon != null
            ? Row(
                children: [icon!, Text(btnname, style: textStyle)],
              )
            : Text(btnname, style: textStyle));
  }
}
