// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleAnomalyDuplicatePrioritizedExcludeObservation {
  /// The description of the prioritized exclude observation.
  final pulumi.Input<String>? description;
  /// The excluded value per `description`.
  final pulumi.Input<String>? exclude;
  /// The name of the prioritized exclude observation.
  final pulumi.Input<String> name;
  /// The prioritized value per `description`.
  final pulumi.Input<String>? prioritize;

  /// Creates a new [AlertRuleAnomalyDuplicatePrioritizedExcludeObservation].
  /// [description] The description of the prioritized exclude observation.
  /// [exclude] The excluded value per `description`.
  /// [name] The name of the prioritized exclude observation.
  /// [prioritize] The prioritized value per `description`.
  AlertRuleAnomalyDuplicatePrioritizedExcludeObservation({
    this.description,
    this.exclude,
    required this.name,
    this.prioritize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'exclude': ?exclude,
      'name': name,
      'prioritize': ?prioritize,
    };
  }

  factory AlertRuleAnomalyDuplicatePrioritizedExcludeObservation.fromMap(Map<String, dynamic> map) {
    return AlertRuleAnomalyDuplicatePrioritizedExcludeObservation(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      exclude: map['exclude'] == null ? null : (map['exclude'] as String).input(),
      name: (map['name'] as String).input(),
      prioritize: map['prioritize'] == null ? null : (map['prioritize'] as String).input(),
    );
  }
}

