// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_cloud_storage_target_filter_collection_include_regexes_pattern.dart';

class PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes {
  /// The group of regular expression patterns to match against one or more resources. Maximum of 100 entries. The sum of all lengths of regular expressions can't exceed 10 KiB.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern>>? patterns;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes].
  /// [patterns] The group of regular expression patterns to match against one or more resources. Maximum of 100 entries. The sum of all lengths of regular expressions can't exceed 10 KiB.
  PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes({
    this.patterns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patterns': ?pulumi.Input.mapOptionalInputValue<List<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern>, List<Map<String, dynamic>>>(patterns, (value) => pulumi.Input.encodeList<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes(
      patterns: map['patterns'] == null ? null : (pulumi.Input.decodeList<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern>(map['patterns']!, (value) => PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

