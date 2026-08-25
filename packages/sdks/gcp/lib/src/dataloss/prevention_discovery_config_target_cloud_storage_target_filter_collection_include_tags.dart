// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_cloud_storage_target_filter_collection_include_tags_tag_filter.dart';

class PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTags {
  /// A resource must match ALL of the specified tag filters to be included in the collection.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTagsTagFilter>?>? tagFilters;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTags].
  /// [tagFilters] A resource must match ALL of the specified tag filters to be included in the collection.
  const PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTags({
    this.tagFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagFilters': ?pulumi.Input.mapOptionalInputValue<List<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTagsTagFilter>, List<Map<String, dynamic>>>(tagFilters, (value) => pulumi.Input.encodeList<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTagsTagFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTags.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTags(
      tagFilters: (() { final guardedValue = map['tagFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTagsTagFilter>(guardedValue, (value) => PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeTagsTagFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
