// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersScriptsResultNamedHandler {
  /// The names of handlers exported as part of the named export.
  final pulumi.Input<List<String>> handlers;
  /// The name of the export.
  final pulumi.Input<String> name;

  /// Creates a new [GetWorkersScriptsResultNamedHandler].
  /// [handlers] The names of handlers exported as part of the named export.
  /// [name] The name of the export.
  const GetWorkersScriptsResultNamedHandler({
    required this.handlers,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'handlers': handlers,
      'name': name,
    };
  }

  factory GetWorkersScriptsResultNamedHandler.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptsResultNamedHandler(
      handlers: pulumi.Input.fromValue((map['handlers'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
