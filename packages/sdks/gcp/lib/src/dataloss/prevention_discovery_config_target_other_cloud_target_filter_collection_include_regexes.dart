// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_other_cloud_target_filter_collection_include_regexes_pattern.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexes {
  /// The group of regular expression patterns to match against one or more resources. Maximum of 100 entries. The sum of all lengths of regular expressions can't exceed 10 KiB.
  /// Structure is documented below.
  final List<PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern>? patterns;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexes].
  /// [patterns] The group of regular expression patterns to match against one or more resources. Maximum of 100 entries. The sum of all lengths of regular expressions can't exceed 10 KiB.
  PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexes({
    this.patterns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patterns': ?patterns == null ? null : pulumi.Input.encodeList<PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern, Map<String, dynamic>>(patterns!, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexes.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexes(
      patterns: map['patterns'] == null ? null : pulumi.Input.decodeList<PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern>(map['patterns'], (value) => PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

