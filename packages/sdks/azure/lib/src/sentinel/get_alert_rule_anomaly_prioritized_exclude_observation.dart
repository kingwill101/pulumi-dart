// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertRuleAnomalyPrioritizedExcludeObservation {
  /// The description of the threshold observation.
  final pulumi.Input<String> description;
  /// The excluded value per `description`.
  final pulumi.Input<String> exclude;
  /// The guid of this Sentinel Alert Rule Template. Either `display_name` or `name` have to be specified.
  final pulumi.Input<String> name;
  /// The prioritized value per `description`.
  final pulumi.Input<String> prioritize;

  /// Creates a new [GetAlertRuleAnomalyPrioritizedExcludeObservation].
  /// [description] The description of the threshold observation.
  /// [exclude] The excluded value per `description`.
  /// [name] The guid of this Sentinel Alert Rule Template. Either `display_name` or `name` have to be specified.
  /// [prioritize] The prioritized value per `description`.
  const GetAlertRuleAnomalyPrioritizedExcludeObservation({
    required this.description,
    required this.exclude,
    required this.name,
    required this.prioritize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'exclude': exclude,
      'name': name,
      'prioritize': prioritize,
    };
  }

  factory GetAlertRuleAnomalyPrioritizedExcludeObservation.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleAnomalyPrioritizedExcludeObservation(
      description: pulumi.Input.fromValue(map['description'] as String),
      exclude: pulumi.Input.fromValue(map['exclude'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      prioritize: pulumi.Input.fromValue(map['prioritize'] as String),
    );
  }
}

