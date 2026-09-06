// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Alert Query Parameter.
class AlertQueryParameter {
  /// The name of the alert query parameter.
  final pulumi.Input<String?>? name;
  /// The value of the alert query parameter.
  final pulumi.Input<String?>? value;

  /// Creates a new [AlertQueryParameter].
  /// [name] The name of the alert query parameter.
  /// [value] The value of the alert query parameter.
  const AlertQueryParameter({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory AlertQueryParameter.fromMap(Map<String, dynamic> map) {
    return AlertQueryParameter(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
