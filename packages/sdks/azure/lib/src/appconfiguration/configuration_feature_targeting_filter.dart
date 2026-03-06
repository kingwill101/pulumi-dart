// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_feature_targeting_filter_group.dart';

class ConfigurationFeatureTargetingFilter {
  /// A number representing the percentage of the entire user base.
  final pulumi.Input<int> defaultRolloutPercentage;
  /// One or more `groups` blocks as defined below.
  final pulumi.Input<List<ConfigurationFeatureTargetingFilterGroup>>? groups;
  /// A list of users to target for this feature.
  final pulumi.Input<List<String>>? users;

  /// Creates a new [ConfigurationFeatureTargetingFilter].
  /// [defaultRolloutPercentage] A number representing the percentage of the entire user base.
  /// [groups] One or more `groups` blocks as defined below.
  /// [users] A list of users to target for this feature.
  const ConfigurationFeatureTargetingFilter({
    required this.defaultRolloutPercentage,
    this.groups,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRolloutPercentage': defaultRolloutPercentage,
      'groups': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationFeatureTargetingFilterGroup>, List<Map<String, dynamic>>>(groups, (value) => pulumi.Input.encodeList<ConfigurationFeatureTargetingFilterGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'users': ?users,
    };
  }

  factory ConfigurationFeatureTargetingFilter.fromMap(Map<String, dynamic> map) {
    return ConfigurationFeatureTargetingFilter(
      defaultRolloutPercentage: pulumi.Input.fromValue(map['defaultRolloutPercentage'] as int),
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationFeatureTargetingFilterGroup>(guardedValue, (value) => ConfigurationFeatureTargetingFilterGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

