import 'package:flutter/material.dart';

class CustomSheet extends StatefulWidget {
  const CustomSheet({
    Key? key,
  }) : super(key: key);

  @override
  _CustomSheetState createState() => _CustomSheetState();
}

class _CustomSheetState extends State<CustomSheet> {
  TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
