import 'package:book_store/constants/colors.dart';
import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag({
    Key? key,
    required this.tag,
  }) : super(key: key);

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 3,
        horizontal: 7,
      ),
      child: Text(
        tag,
        style: const TextStyle(
          fontSize: 10,
        ),
      ),
    );
  }
}
