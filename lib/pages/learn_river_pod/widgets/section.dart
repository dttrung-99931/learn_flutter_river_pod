// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({
    super.key,
    required this.title,
    required this.child,
    this.expandChild = false,
  });
  final String title;
  final Widget child;
  final bool expandChild;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          padding: const EdgeInsets.all(16),
          child: Text(title, style: const TextStyle(color: Colors.white)),
        ),
        Builder(
          builder: (context) {
            var childWithPadding = Padding(
              padding: const EdgeInsets.all(8.0),
              child: child,
            );
            if (expandChild) {
              return Expanded(child: childWithPadding);
            }
            return childWithPadding;
          },
        ),
      ],
    );
  }
}
