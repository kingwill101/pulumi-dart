// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolSystemTool {
  /// (Output)
  /// The description of the system tool.
  final pulumi.Input<String>? description;

  /// (Output)
  /// The name of the system tool.
  final pulumi.Input<String>? name;

  /// Creates a new [ToolSystemTool].
  /// [description] (Output)
  /// [name] (Output)
  ToolSystemTool({this.description, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': ?description, 'name': ?name};
  }

  factory ToolSystemTool.fromMap(Map<String, dynamic> map) {
    return ToolSystemTool(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
