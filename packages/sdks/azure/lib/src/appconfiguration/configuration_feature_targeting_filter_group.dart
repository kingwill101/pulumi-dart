// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationFeatureTargetingFilterGroup {
  /// The name of the group.
  final pulumi.Input<String> name;
  /// Rollout percentage of the group.
  final pulumi.Input<int> rolloutPercentage;

  /// Creates a new [ConfigurationFeatureTargetingFilterGroup].
  /// [name] The name of the group.
  /// [rolloutPercentage] Rollout percentage of the group.
  const ConfigurationFeatureTargetingFilterGroup({
    required this.name,
    required this.rolloutPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'rolloutPercentage': rolloutPercentage,
    };
  }

  factory ConfigurationFeatureTargetingFilterGroup.fromMap(Map<String, dynamic> map) {
    return ConfigurationFeatureTargetingFilterGroup(
      name: pulumi.Input.fromValue(map['name'] as String),
      rolloutPercentage: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['rolloutPercentage'])),
    );
  }
}
