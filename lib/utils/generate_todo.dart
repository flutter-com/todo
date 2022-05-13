import 'package:flutter/material.dart';
import 'package:mock_data/mock_data.dart';
import 'package:todo/model/todo.dart';

generateTodos(int length) {
  List<Priority> priorities = [
    Priority.Unspecific,
    Priority.Low,
    Priority.Medium,
    Priority.High,
  ];
  return List.generate(length, (index) {
    DateTime date = mockDate(DateTime(2019, 1, 1));
    DateTime startTime = date.add(Duration(hours: mockInteger(1, 9)));
    DateTime endTime = startTime.add(Duration(hours: mockInteger(1, 9)));
    return Todo(
      title: '${mockName()} - ${mockString()}',
      priority: priorities[mockInteger(0, 3)],
      description: mockString(30),
      date: date,
      startTime: TimeOfDay.fromDateTime(startTime),
      endTime: TimeOfDay.fromDateTime(endTime),
      isFinished: mockBool(),
      isStar: mockBool(),
    );
  });
}

bool mockBool() => mockInteger(0, 1) > 0;
