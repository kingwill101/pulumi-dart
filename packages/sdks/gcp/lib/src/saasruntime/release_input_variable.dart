// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReleaseInputVariable {
  /// Name of a supported variable type. Supported types are STRING, INT, BOOL.
  /// Possible values are: `TYPE_UNSPECIFIED`, `STRING`, `INT`, `BOOL`.
  final pulumi.Input<String>? type;
  /// String encoded value for the variable.
  final pulumi.Input<String>? value;
  /// Name of the variable from actuation configs.
  final pulumi.Input<String> variable;

  /// Creates a new [ReleaseInputVariable].
  /// [type] Name of a supported variable type. Supported types are STRING, INT, BOOL.
  /// [value] String encoded value for the variable.
  /// [variable] Name of the variable from actuation configs.
  ReleaseInputVariable({
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

  factory ReleaseInputVariable.fromMap(Map<String, dynamic> map) {
    return ReleaseInputVariable(
      type: map['type'] == null ? null : (map['type'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
      variable: (map['variable'] as String).input(),
    );
  }
}

