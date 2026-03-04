// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FactoryGlobalParameter {
  /// Specifies the global parameter name.
  final pulumi.Input<String> name;

  /// Specifies the global parameter type. Possible Values are `Array`, `Bool`, `Float`, `Int`, `Object` or `String`.
  final pulumi.Input<String> type;

  /// Specifies the global parameter value.
  ///
  /// &gt; **Note:** For type `Array` and `Object` it is recommended to use `jsonencode()` for the value
  final pulumi.Input<String> value;

  /// Creates a new [FactoryGlobalParameter].
  /// [name] Specifies the global parameter name.
  /// [type] Specifies the global parameter type. Possible Values are `Array`, `Bool`, `Float`, `Int`, `Object` or `String`.
  /// [value] Specifies the global parameter value.
  FactoryGlobalParameter({
    required this.name,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': type, 'value': value};
  }

  factory FactoryGlobalParameter.fromMap(Map<String, dynamic> map) {
    return FactoryGlobalParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
