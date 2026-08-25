// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UnitInputVariable {
  /// Name of a supported variable type. Supported types are string, int, bool.
  /// Possible values:
  /// STRING
  /// INT
  /// BOOL
  final pulumi.Input<String?>? type;
  /// String encoded value for the variable.
  final pulumi.Input<String?>? value;
  /// Name of the variable from actuation configs.
  final pulumi.Input<String> variable;

  /// Creates a new [UnitInputVariable].
  /// [type] Name of a supported variable type. Supported types are string, int, bool.
  /// [value] String encoded value for the variable.
  /// [variable] Name of the variable from actuation configs.
  const UnitInputVariable({
    this.type,
    this.value,
    required this.variable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
      'variable': variable,
    };
  }

  factory UnitInputVariable.fromMap(Map<String, dynamic> map) {
    return UnitInputVariable(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variable: pulumi.Input.fromValue(map['variable'] as String),
    );
  }
}
