// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleAnomalyDuplicateThresholdObservation {
  /// The description of the threshold observation.
  final pulumi.Input<String>? description;
  /// The max value of the threshold observation.
  final pulumi.Input<String>? max;
  /// The min value of the threshold observation.
  final pulumi.Input<String>? min;
  /// The name of the threshold observation.
  final pulumi.Input<String> name;
  /// The value of the threshold observation.
  final pulumi.Input<String> value;

  /// Creates a new [AlertRuleAnomalyDuplicateThresholdObservation].
  /// [description] The description of the threshold observation.
  /// [max] The max value of the threshold observation.
  /// [min] The min value of the threshold observation.
  /// [name] The name of the threshold observation.
  /// [value] The value of the threshold observation.
  AlertRuleAnomalyDuplicateThresholdObservation({
    this.description,
    this.max,
    this.min,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'max': ?max,
      'min': ?min,
      'name': name,
      'value': value,
    };
  }

  factory AlertRuleAnomalyDuplicateThresholdObservation.fromMap(Map<String, dynamic> map) {
    return AlertRuleAnomalyDuplicateThresholdObservation(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      max: map['max'] == null ? null : (map['max']! as String).input(),
      min: map['min'] == null ? null : (map['min']! as String).input(),
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

