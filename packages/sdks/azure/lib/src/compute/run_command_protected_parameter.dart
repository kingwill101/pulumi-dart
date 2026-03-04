// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RunCommandProtectedParameter {
  /// The run parameter name.
  final pulumi.Input<String> name;

  /// The run parameter value.
  final pulumi.Input<String> value;

  /// Creates a new [RunCommandProtectedParameter].
  /// [name] The run parameter name.
  /// [value] The run parameter value.
  RunCommandProtectedParameter({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory RunCommandProtectedParameter.fromMap(Map<String, dynamic> map) {
    return RunCommandProtectedParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
