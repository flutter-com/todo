import 'package:flutter/material.dart';
import 'package:todo/model/todo.dart';

class PriorityFieldGroup extends StatelessWidget {
  final Priority? initialValue;
  final Function(Priority)? onChange;
  final Widget child;

  const PriorityFieldGroup({
    Key? key,
    this.initialValue,
    this.onChange,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Priority>(
      itemBuilder: (BuildContext context) => Priority.values.map(_buildPriorityPopupMenuItem).toList(),
      onSelected: onChange,
      child: child,
    );
  }

  PopupMenuItem<Priority> _buildPriorityPopupMenuItem(Priority priority) {
    return PopupMenuItem<Priority>(
      value: priority,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(priority.description),
          Container(
            width: 100,
            height: 5,
            color: priority.color,
          )
        ],
      ),
    );
  }
}
