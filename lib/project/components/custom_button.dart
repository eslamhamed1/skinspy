// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatefulWidget {
  double width;
  double height;
  double fontSize;
  Function onTap;
  String title;
  CustomButton({
    Key? key,
    required this.title,
    required this.width,
    required this.height,
    required this.fontSize,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTapDown: (details) {
        if (mounted) {
          setState(() {
            clicked = true;
          });
        }
      },
      onTapCancel: () {
        if (mounted) {
          setState(() {
            clicked = false;
          });
        }
      },
      onTapUp: (details) {
        if (mounted) {
          setState(() {
            clicked = false;
          });
        }
        widget.onTap();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: clicked
              ? const Color(0xff46A4FF).darker(20)
              : const Color(0xff46A4FF),
        ),
        width: widget.width,
        height: widget.height,
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: widget.fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
