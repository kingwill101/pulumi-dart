// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertRuleAnomalyThresholdObservation {
  /// The description of the threshold observation.
  final pulumi.Input<String> description;
  /// The max value of the threshold observation.
  final pulumi.Input<String> max;
  /// The min value of the threshold observation.
  final pulumi.Input<String> min;
  /// The guid of this Sentinel Alert Rule Template. Either `display_name` or `name` have to be specified.
  final pulumi.Input<String> name;
  /// The value of the threshold observation.
  final pulumi.Input<String> value;

  /// Creates a new [GetAlertRuleAnomalyThresholdObservation].
  /// [description] The description of the threshold observation.
  /// [max] The max value of the threshold observation.
  /// [min] The min value of the threshold observation.
  /// [name] The guid of this Sentinel Alert Rule Template. Either `display_name` or `name` have to be specified.
  /// [value] The value of the threshold observation.
  const GetAlertRuleAnomalyThresholdObservation({
    required this.description,
    required this.max,
    required this.min,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'max': max,
      'min': min,
      'name': name,
      'value': value,
    };
  }

  factory GetAlertRuleAnomalyThresholdObservation.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleAnomalyThresholdObservation(
      description: pulumi.Input.fromValue(map['description'] as String),
      max: pulumi.Input.fromValue(map['max'] as String),
      min: pulumi.Input.fromValue(map['min'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

