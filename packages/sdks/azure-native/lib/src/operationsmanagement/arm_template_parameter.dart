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
  const ArmTemplateParameter({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

