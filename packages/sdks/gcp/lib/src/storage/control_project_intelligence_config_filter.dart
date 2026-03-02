// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_project_intelligence_config_filter_excluded_cloud_storage_buckets.dart';
import 'control_project_intelligence_config_filter_excluded_cloud_storage_locations.dart';
import 'control_project_intelligence_config_filter_included_cloud_storage_buckets.dart';
import 'control_project_intelligence_config_filter_included_cloud_storage_locations.dart';

class ControlProjectIntelligenceConfigFilter {
  /// Buckets to exclude from the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlProjectIntelligenceConfigFilterExcludedCloudStorageBuckets>? excludedCloudStorageBuckets;
  /// Locations to exclude from the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations>? excludedCloudStorageLocations;
  /// Buckets to include in the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlProjectIntelligenceConfigFilterIncludedCloudStorageBuckets>? includedCloudStorageBuckets;
  /// Locations to include in the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations>? includedCloudStorageLocations;

  /// Creates a new [ControlProjectIntelligenceConfigFilter].
  /// [excludedCloudStorageBuckets] Buckets to exclude from the Storage Intelligence plan.
  /// [excludedCloudStorageLocations] Locations to exclude from the Storage Intelligence plan.
  /// [includedCloudStorageBuckets] Buckets to include in the Storage Intelligence plan.
  /// [includedCloudStorageLocations] Locations to include in the Storage Intelligence plan.
  ControlProjectIntelligenceConfigFilter({
    this.excludedCloudStorageBuckets,
    this.excludedCloudStorageLocations,
    this.includedCloudStorageBuckets,
    this.includedCloudStorageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedCloudStorageBuckets': ?pulumi.Input.mapOptionalInputValue<ControlProjectIntelligenceConfigFilterExcludedCloudStorageBuckets, Map<String, dynamic>>(excludedCloudStorageBuckets, (value) => value.toMap()),
      'excludedCloudStorageLocations': ?pulumi.Input.mapOptionalInputValue<ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations, Map<String, dynamic>>(excludedCloudStorageLocations, (value) => value.toMap()),
      'includedCloudStorageBuckets': ?pulumi.Input.mapOptionalInputValue<ControlProjectIntelligenceConfigFilterIncludedCloudStorageBuckets, Map<String, dynamic>>(includedCloudStorageBuckets, (value) => value.toMap()),
      'includedCloudStorageLocations': ?pulumi.Input.mapOptionalInputValue<ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations, Map<String, dynamic>>(includedCloudStorageLocations, (value) => value.toMap()),
    };
  }

  factory ControlProjectIntelligenceConfigFilter.fromMap(Map<String, dynamic> map) {
    return ControlProjectIntelligenceConfigFilter(
      excludedCloudStorageBuckets: map['excludedCloudStorageBuckets'] == null ? null : (ControlProjectIntelligenceConfigFilterExcludedCloudStorageBuckets.fromMap((map['excludedCloudStorageBuckets']! as Map).cast<String, dynamic>())).input(),
      excludedCloudStorageLocations: map['excludedCloudStorageLocations'] == null ? null : (ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations.fromMap((map['excludedCloudStorageLocations']! as Map).cast<String, dynamic>())).input(),
      includedCloudStorageBuckets: map['includedCloudStorageBuckets'] == null ? null : (ControlProjectIntelligenceConfigFilterIncludedCloudStorageBuckets.fromMap((map['includedCloudStorageBuckets']! as Map).cast<String, dynamic>())).input(),
      includedCloudStorageLocations: map['includedCloudStorageLocations'] == null ? null : (ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations.fromMap((map['includedCloudStorageLocations']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

