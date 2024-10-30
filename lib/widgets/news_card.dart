import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String description;
  final TextStyle? titleStyle;
  final TextStyle? descriptionStyle;
  final VoidCallback onTap;

  const NewsCard({
    required this.title,
    required this.description,
    required this.onTap,
    this.titleStyle,
    this.descriptionStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          title,
          style: titleStyle ?? TextStyle(fontWeight: FontWeight.bold), 
        ),
        subtitle: Text(
          description,
          style: descriptionStyle ?? TextStyle(), 
        ),
        trailing: Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}