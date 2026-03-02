// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameter to pass to ARM template
class ArmTemplateParameter {
  /// name of the parameter.
  final pulumi.Input<String>? name;
  /// value for the parameter. In Jtoken
  final pulumi.Input<String>? value;

  /// Creates a new [ArmTemplateParameter].
  /// [name] name of the parameter.
  /// [value] value for the parameter. In Jtoken
  ArmTemplateParameter({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ArmTemplateParameter.fromMap(Map<String, dynamic> map) {
    return ArmTemplateParameter(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

