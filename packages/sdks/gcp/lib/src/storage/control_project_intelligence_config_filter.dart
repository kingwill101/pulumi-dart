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
      excludedCloudStorageBuckets: (() { final guardedValue = map['excludedCloudStorageBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ControlProjectIntelligenceConfigFilterExcludedCloudStorageBuckets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      excludedCloudStorageLocations: (() { final guardedValue = map['excludedCloudStorageLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includedCloudStorageBuckets: (() { final guardedValue = map['includedCloudStorageBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ControlProjectIntelligenceConfigFilterIncludedCloudStorageBuckets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includedCloudStorageLocations: (() { final guardedValue = map['includedCloudStorageLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

