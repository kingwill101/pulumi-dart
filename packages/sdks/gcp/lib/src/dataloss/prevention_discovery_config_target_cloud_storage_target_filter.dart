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
  PreventionDiscoveryConfigTargetCloudStorageTargetFilter({
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
      cloudStorageResourceReference: map['cloudStorageResourceReference'] == null ? null : (PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference.fromMap((map['cloudStorageResourceReference'] as Map).cast<String, dynamic>())).input(),
      collection: map['collection'] == null ? null : (PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection.fromMap((map['collection'] as Map).cast<String, dynamic>())).input(),
      others: map['others'] == null ? null : ((map['others'] as Map).cast<String, dynamic>()).input(),
    );
  }
}

