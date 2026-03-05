// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_cloud_storage_target_filter_collection_include_regexes_pattern_cloud_storage_regex.dart';

class PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern {
  /// Regex for Cloud Storage.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPatternCloudStorageRegex>? cloudStorageRegex;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern].
  /// [cloudStorageRegex] Regex for Cloud Storage.
  PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern({
    this.cloudStorageRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStorageRegex': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPatternCloudStorageRegex, Map<String, dynamic>>(cloudStorageRegex, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern(
      cloudStorageRegex: (() { final guardedValue = map['cloudStorageRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPatternCloudStorageRegex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

