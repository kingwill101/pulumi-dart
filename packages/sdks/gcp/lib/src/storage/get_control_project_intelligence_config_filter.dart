// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_config_filter_excluded_cloud_storage_bucket.dart';
import 'get_control_project_intelligence_config_filter_excluded_cloud_storage_location.dart';
import 'get_control_project_intelligence_config_filter_included_cloud_storage_bucket.dart';
import 'get_control_project_intelligence_config_filter_included_cloud_storage_location.dart';

class GetControlProjectIntelligenceConfigFilter {
  /// Buckets to exclude from the Storage Intelligence plan.
  final pulumi.Input<List<GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket>> excludedCloudStorageBuckets;
  /// Locations to exclude from the Storage Intelligence plan.
  final pulumi.Input<List<GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation>> excludedCloudStorageLocations;
  /// Buckets to include in the Storage Intelligence plan.
  final pulumi.Input<List<GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket>> includedCloudStorageBuckets;
  /// Locations to include in the Storage Intelligence plan.
  final pulumi.Input<List<GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation>> includedCloudStorageLocations;

  /// Creates a new [GetControlProjectIntelligenceConfigFilter].
  /// [excludedCloudStorageBuckets] Buckets to exclude from the Storage Intelligence plan.
  /// [excludedCloudStorageLocations] Locations to exclude from the Storage Intelligence plan.
  /// [includedCloudStorageBuckets] Buckets to include in the Storage Intelligence plan.
  /// [includedCloudStorageLocations] Locations to include in the Storage Intelligence plan.
  const GetControlProjectIntelligenceConfigFilter({
    required this.excludedCloudStorageBuckets,
    required this.excludedCloudStorageLocations,
    required this.includedCloudStorageBuckets,
    required this.includedCloudStorageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedCloudStorageBuckets': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket>, List<Map<String, dynamic>>>(excludedCloudStorageBuckets, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludedCloudStorageLocations': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation>, List<Map<String, dynamic>>>(excludedCloudStorageLocations, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedCloudStorageBuckets': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket>, List<Map<String, dynamic>>>(includedCloudStorageBuckets, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedCloudStorageLocations': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation>, List<Map<String, dynamic>>>(includedCloudStorageLocations, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetControlProjectIntelligenceConfigFilter.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigFilter(
      excludedCloudStorageBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket>(map['excludedCloudStorageBuckets']!, (value) => GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket.fromMap((value as Map).cast<String, dynamic>()))),
      excludedCloudStorageLocations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation>(map['excludedCloudStorageLocations']!, (value) => GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation.fromMap((value as Map).cast<String, dynamic>()))),
      includedCloudStorageBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket>(map['includedCloudStorageBuckets']!, (value) => GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket.fromMap((value as Map).cast<String, dynamic>()))),
      includedCloudStorageLocations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation>(map['includedCloudStorageLocations']!, (value) => GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
