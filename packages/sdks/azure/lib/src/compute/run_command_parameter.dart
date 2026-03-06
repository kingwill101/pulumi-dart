// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RunCommandParameter {
  /// The run parameter name.
  final pulumi.Input<String> name;
  /// The run parameter value.
  final pulumi.Input<String> value;

  /// Creates a new [RunCommandParameter].
  /// [name] The run parameter name.
  /// [value] The run parameter value.
  const RunCommandParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory RunCommandParameter.fromMap(Map<String, dynamic> map) {
    return RunCommandParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

