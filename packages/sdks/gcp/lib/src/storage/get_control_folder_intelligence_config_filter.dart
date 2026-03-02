// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_folder_intelligence_config_filter_excluded_cloud_storage_bucket.dart';
import 'get_control_folder_intelligence_config_filter_excluded_cloud_storage_location.dart';
import 'get_control_folder_intelligence_config_filter_included_cloud_storage_bucket.dart';
import 'get_control_folder_intelligence_config_filter_included_cloud_storage_location.dart';

class GetControlFolderIntelligenceConfigFilter {
  /// Buckets to exclude from the Storage Intelligence plan.
  final pulumi.Input<List<GetControlFolderIntelligenceConfigFilterExcludedCloudStorageBucket>> excludedCloudStorageBuckets;
  /// Locations to exclude from the Storage Intelligence plan.
  final pulumi.Input<List<GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation>> excludedCloudStorageLocations;
  /// Buckets to include in the Storage Intelligence plan.
  final pulumi.Input<List<GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket>> includedCloudStorageBuckets;
  /// Locations to include in the Storage Intelligence plan.
  final pulumi.Input<List<GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation>> includedCloudStorageLocations;

  /// Creates a new [GetControlFolderIntelligenceConfigFilter].
  /// [excludedCloudStorageBuckets] Buckets to exclude from the Storage Intelligence plan.
  /// [excludedCloudStorageLocations] Locations to exclude from the Storage Intelligence plan.
  /// [includedCloudStorageBuckets] Buckets to include in the Storage Intelligence plan.
  /// [includedCloudStorageLocations] Locations to include in the Storage Intelligence plan.
  GetControlFolderIntelligenceConfigFilter({
    required this.excludedCloudStorageBuckets,
    required this.excludedCloudStorageLocations,
    required this.includedCloudStorageBuckets,
    required this.includedCloudStorageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedCloudStorageBuckets': pulumi.Input.mapInputValue<List<GetControlFolderIntelligenceConfigFilterExcludedCloudStorageBucket>, List<Map<String, dynamic>>>(excludedCloudStorageBuckets, (value) => pulumi.Input.encodeList<GetControlFolderIntelligenceConfigFilterExcludedCloudStorageBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludedCloudStorageLocations': pulumi.Input.mapInputValue<List<GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation>, List<Map<String, dynamic>>>(excludedCloudStorageLocations, (value) => pulumi.Input.encodeList<GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedCloudStorageBuckets': pulumi.Input.mapInputValue<List<GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket>, List<Map<String, dynamic>>>(includedCloudStorageBuckets, (value) => pulumi.Input.encodeList<GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedCloudStorageLocations': pulumi.Input.mapInputValue<List<GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation>, List<Map<String, dynamic>>>(includedCloudStorageLocations, (value) => pulumi.Input.encodeList<GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetControlFolderIntelligenceConfigFilter.fromMap(Map<String, dynamic> map) {
    return GetControlFolderIntelligenceConfigFilter(
      excludedCloudStorageBuckets: (pulumi.Input.decodeList<GetControlFolderIntelligenceConfigFilterExcludedCloudStorageBucket>(map['excludedCloudStorageBuckets'], (value) => GetControlFolderIntelligenceConfigFilterExcludedCloudStorageBucket.fromMap((value as Map).cast<String, dynamic>()))).input(),
      excludedCloudStorageLocations: (pulumi.Input.decodeList<GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation>(map['excludedCloudStorageLocations'], (value) => GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      includedCloudStorageBuckets: (pulumi.Input.decodeList<GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket>(map['includedCloudStorageBuckets'], (value) => GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket.fromMap((value as Map).cast<String, dynamic>()))).input(),
      includedCloudStorageLocations: (pulumi.Input.decodeList<GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation>(map['includedCloudStorageLocations'], (value) => GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

