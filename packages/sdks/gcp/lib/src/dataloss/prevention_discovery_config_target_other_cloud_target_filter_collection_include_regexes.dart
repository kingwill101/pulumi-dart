// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_other_cloud_target_filter_collection_include_regexes_pattern.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexes {
  /// The group of regular expression patterns to match against one or more resources. Maximum of 100 entries. The sum of all lengths of regular expressions can't exceed 10 KiB.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern>?>? patterns;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexes].
  /// [patterns] The group of regular expression patterns to match against one or more resources. Maximum of 100 entries. The sum of all lengths of regular expressions can't exceed 10 KiB.
  const PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexes({
    this.patterns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patterns': ?pulumi.Input.mapOptionalInputValue<List<PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern>, List<Map<String, dynamic>>>(patterns, (value) => pulumi.Input.encodeList<PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexes.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexes(
      patterns: (() { final guardedValue = map['patterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern>(guardedValue, (value) => PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
