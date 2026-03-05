// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_cloud_storage_target_filter_collection_include_regexes.dart';

class PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection {
  /// A collection of regular expressions to match a resource against.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes>? includeRegexes;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection].
  /// [includeRegexes] A collection of regular expressions to match a resource against.
  PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection({
    this.includeRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeRegexes': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes, Map<String, dynamic>>(includeRegexes, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection(
      includeRegexes: (() { final guardedValue = map['includeRegexes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

