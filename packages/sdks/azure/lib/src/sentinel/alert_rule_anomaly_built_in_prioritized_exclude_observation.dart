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
  const AlertRuleAnomalyBuiltInPrioritizedExcludeObservation({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exclude: (() { final guardedValue = map['exclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prioritize: (() { final guardedValue = map['prioritize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

