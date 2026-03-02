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
  ConfigurationFeatureTargetingFilter({
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
      defaultRolloutPercentage: (map['defaultRolloutPercentage'] as int).input(),
      groups: map['groups'] == null ? null : (pulumi.Input.decodeList<ConfigurationFeatureTargetingFilterGroup>(map['groups']!, (value) => ConfigurationFeatureTargetingFilterGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      users: map['users'] == null ? null : ((map['users']! as List).cast<String>()).input(),
    );
  }
}

