// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_cloud_storage_target_filter_cloud_storage_resource_reference.dart';
import 'prevention_discovery_config_target_cloud_storage_target_filter_collection.dart';

class PreventionDiscoveryConfigTargetCloudStorageTargetFilter {
  /// The bucket to scan. Targets including this can only include one target (the target with this bucket). This enables profiling the contents of a single bucket, while the other options allow for easy profiling of many buckets within a project or an organization.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference>? cloudStorageResourceReference;
  /// A collection of resources for this filter to apply to.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection>? collection;
  /// Match discovery resources not covered by any other filter.
  final pulumi.Input<Map<String, dynamic>>? others;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetFilter].
  /// [cloudStorageResourceReference] The bucket to scan. Targets including this can only include one target (the target with this bucket). This enables profiling the contents of a single bucket, while the other options allow for easy profiling of many buckets within a project or an organization.
  /// [collection] A collection of resources for this filter to apply to.
  /// [others] Match discovery resources not covered by any other filter.
  const PreventionDiscoveryConfigTargetCloudStorageTargetFilter({
    this.cloudStorageResourceReference,
    this.collection,
    this.others,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStorageResourceReference': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference, Map<String, dynamic>>(cloudStorageResourceReference, (value) => value.toMap()),
      'collection': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection, Map<String, dynamic>>(collection, (value) => value.toMap()),
      'others': ?others,
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetFilter.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetFilter(
      cloudStorageResourceReference: (() { final guardedValue = map['cloudStorageResourceReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      collection: (() { final guardedValue = map['collection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      others: (() { final guardedValue = map['others']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
