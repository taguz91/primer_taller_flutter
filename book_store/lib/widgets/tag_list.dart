import 'package:book_store/widgets/tag.dart';
import 'package:flutter/material.dart';

class TagList extends StatelessWidget {
  const TagList({
    Key? key,
    required this.tags,
  }) : super(key: key);

  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 3,
      runSpacing: 4,
      children: tags.map((tag) => Tag(tag: tag)).toList(),
    );
  }
}
