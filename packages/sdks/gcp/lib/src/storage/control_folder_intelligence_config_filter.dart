// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_folder_intelligence_config_filter_excluded_cloud_storage_buckets.dart';
import 'control_folder_intelligence_config_filter_excluded_cloud_storage_locations.dart';
import 'control_folder_intelligence_config_filter_included_cloud_storage_buckets.dart';
import 'control_folder_intelligence_config_filter_included_cloud_storage_locations.dart';

class ControlFolderIntelligenceConfigFilter {
  /// Buckets to exclude from the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlFolderIntelligenceConfigFilterExcludedCloudStorageBuckets?>? excludedCloudStorageBuckets;
  /// Locations to exclude from the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations?>? excludedCloudStorageLocations;
  /// Buckets to include in the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlFolderIntelligenceConfigFilterIncludedCloudStorageBuckets?>? includedCloudStorageBuckets;
  /// Locations to include in the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations?>? includedCloudStorageLocations;

  /// Creates a new [ControlFolderIntelligenceConfigFilter].
  /// [excludedCloudStorageBuckets] Buckets to exclude from the Storage Intelligence plan.
  /// [excludedCloudStorageLocations] Locations to exclude from the Storage Intelligence plan.
  /// [includedCloudStorageBuckets] Buckets to include in the Storage Intelligence plan.
  /// [includedCloudStorageLocations] Locations to include in the Storage Intelligence plan.
  const ControlFolderIntelligenceConfigFilter({
    this.excludedCloudStorageBuckets,
    this.excludedCloudStorageLocations,
    this.includedCloudStorageBuckets,
    this.includedCloudStorageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedCloudStorageBuckets': ?pulumi.Input.mapOptionalInputValue<ControlFolderIntelligenceConfigFilterExcludedCloudStorageBuckets, Map<String, dynamic>>(excludedCloudStorageBuckets, (value) => value.toMap()),
      'excludedCloudStorageLocations': ?pulumi.Input.mapOptionalInputValue<ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations, Map<String, dynamic>>(excludedCloudStorageLocations, (value) => value.toMap()),
      'includedCloudStorageBuckets': ?pulumi.Input.mapOptionalInputValue<ControlFolderIntelligenceConfigFilterIncludedCloudStorageBuckets, Map<String, dynamic>>(includedCloudStorageBuckets, (value) => value.toMap()),
      'includedCloudStorageLocations': ?pulumi.Input.mapOptionalInputValue<ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations, Map<String, dynamic>>(includedCloudStorageLocations, (value) => value.toMap()),
    };
  }

  factory ControlFolderIntelligenceConfigFilter.fromMap(Map<String, dynamic> map) {
    return ControlFolderIntelligenceConfigFilter(
      excludedCloudStorageBuckets: (() { final guardedValue = map['excludedCloudStorageBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ControlFolderIntelligenceConfigFilterExcludedCloudStorageBuckets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      excludedCloudStorageLocations: (() { final guardedValue = map['excludedCloudStorageLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includedCloudStorageBuckets: (() { final guardedValue = map['includedCloudStorageBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ControlFolderIntelligenceConfigFilterIncludedCloudStorageBuckets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includedCloudStorageLocations: (() { final guardedValue = map['includedCloudStorageLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
