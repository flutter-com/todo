// ignore_for_file: constant_identifier_names

import 'package:todo/model/todo.dart';

enum OpenType {
  Add,
  Edit,
  Preview,
}

class RegisterPageArgument {
  final String className;
  final String url;

  RegisterPageArgument(this.className, this.url);
}

class EditTodoPageArgument {
  final OpenType openType;
  final Todo? todo;

  EditTodoPageArgument({
    required this.openType,
    this.todo,
  });
}

class LocationDetailArgument {
  final Location location;

  LocationDetailArgument(this.location);
}

class WebViewArgument {
  final String url;
  final String title;

  WebViewArgument(this.url, this.title);
}

class TodoEntryArgument {
  final String userKey;

  TodoEntryArgument(this.userKey);
}
