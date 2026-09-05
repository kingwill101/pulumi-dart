// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleAnomalyBuiltInThresholdObservation {
  /// The description of the threshold observation.
  final pulumi.Input<String?>? description;
  /// The max value of the threshold observation.
  final pulumi.Input<String?>? max;
  /// The min value of the threshold observation.
  final pulumi.Input<String?>? min;
  /// The Name of the built-in Anomaly Alert Rule.
  final pulumi.Input<String?>? name;
  /// The value of the threshold observation.
  final pulumi.Input<String?>? value;

  /// Creates a new [AlertRuleAnomalyBuiltInThresholdObservation].
  /// [description] The description of the threshold observation.
  /// [max] The max value of the threshold observation.
  /// [min] The min value of the threshold observation.
  /// [name] The Name of the built-in Anomaly Alert Rule.
  /// [value] The value of the threshold observation.
  const AlertRuleAnomalyBuiltInThresholdObservation({
    this.description,
    this.max,
    this.min,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'max': ?max,
      'min': ?min,
      'name': ?name,
      'value': ?value,
    };
  }

  factory AlertRuleAnomalyBuiltInThresholdObservation.fromMap(Map<String, dynamic> map) {
    return AlertRuleAnomalyBuiltInThresholdObservation(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
