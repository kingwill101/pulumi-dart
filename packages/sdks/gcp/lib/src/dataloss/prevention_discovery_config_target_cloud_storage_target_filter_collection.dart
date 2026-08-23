// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_cloud_storage_target_filter_collection_include_regexes.dart';
import 'prevention_discovery_config_target_cloud_storage_target_filter_collection_include_tags.dart';

class PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection {
  /// A collection of regular expressions to match a resource against.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes>? includeRegexes;
  /// For a resource to match the tag filters, the resource must have all of the
  /// provided tags attached. Tags refer to Resource Manager tags bound to the
  /// resource or its ancestors.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTags>? includeTags;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection].
  /// [includeRegexes] A collection of regular expressions to match a resource against.
  /// [includeTags] For a resource to match the tag filters, the resource must have all of the
  const PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection({
    this.includeRegexes,
    this.includeTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeRegexes': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes, Map<String, dynamic>>(includeRegexes, (value) => value.toMap()),
      'includeTags': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTags, Map<String, dynamic>>(includeTags, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection(
      includeRegexes: (() { final guardedValue = map['includeRegexes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includeTags: (() { final guardedValue = map['includeTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
