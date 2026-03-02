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
  GetAlertRuleAnomalyThresholdObservation({
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
      description: (map['description'] as String).input(),
      max: (map['max'] as String).input(),
      min: (map['min'] as String).input(),
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

