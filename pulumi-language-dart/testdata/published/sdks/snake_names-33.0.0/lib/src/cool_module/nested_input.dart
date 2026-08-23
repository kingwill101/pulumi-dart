// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NestedInput {
  final pulumi.Input<String> nestedValue;

  /// Creates a new [NestedInput].
  /// [nestedValue] Required.
  const NestedInput({
    required this.nestedValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nested_value': nestedValue,
    };
  }

  factory NestedInput.fromMap(Map<String, dynamic> map) {
    return NestedInput(
      nestedValue: pulumi.Input.fromValue(map['nested_value'] as String),
    );
  }
}
