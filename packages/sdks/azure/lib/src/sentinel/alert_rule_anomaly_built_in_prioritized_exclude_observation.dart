// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleAnomalyBuiltInPrioritizedExcludeObservation {
  /// The description of the threshold observation.
  final pulumi.Input<String>? description;
  /// The excluded value per `description`.
  final pulumi.Input<String>? exclude;
  /// The Name of the built-in Anomaly Alert Rule.
  final pulumi.Input<String>? name;
  /// The prioritized value per `description`.
  final pulumi.Input<String>? prioritize;

  /// Creates a new [AlertRuleAnomalyBuiltInPrioritizedExcludeObservation].
  /// [description] The description of the threshold observation.
  /// [exclude] The excluded value per `description`.
  /// [name] The Name of the built-in Anomaly Alert Rule.
  /// [prioritize] The prioritized value per `description`.
  AlertRuleAnomalyBuiltInPrioritizedExcludeObservation({
    this.description,
    this.exclude,
    this.name,
    this.prioritize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'exclude': ?exclude,
      'name': ?name,
      'prioritize': ?prioritize,
    };
  }

  factory AlertRuleAnomalyBuiltInPrioritizedExcludeObservation.fromMap(Map<String, dynamic> map) {
    return AlertRuleAnomalyBuiltInPrioritizedExcludeObservation(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      exclude: map['exclude'] == null ? null : (map['exclude'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      prioritize: map['prioritize'] == null ? null : (map['prioritize'] as String).input(),
    );
  }
}

