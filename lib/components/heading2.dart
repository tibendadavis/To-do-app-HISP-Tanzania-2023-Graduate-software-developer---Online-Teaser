import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:todo/controllers/functions.dart';

class Heading2 extends StatefulWidget {
  final String value;
  final Color? color;
  final TextAlign? align;
  final String? textFormat;
  final FontWeight? fontWeight;
  const Heading2(
      {Key? key,
      required this.value,
      this.color,
      this.align,
      this.textFormat,
      this.fontWeight})
      : super(key: key);

  @override
  State<Heading2> createState() => _Heading2State();
}

class _Heading2State extends State<Heading2> {
  @override
  Widget build(BuildContext context) {
    return Text(
      (widget.textFormat == "Capitalize"
          ? Funcs().capitalize(widget.value)
          : widget.textFormat == "Uppercase"
              ? widget.value.toUpperCase()
              : widget.textFormat == "Lowercase"
                  ? widget.value.toLowerCase()
                  : widget.value),
      textAlign: widget.align,
      style: GoogleFonts.openSans(
        fontSize: 19,
        fontWeight: widget.fontWeight ?? FontWeight.w500,
        color: widget.color,
      ),
    );
  }
}
