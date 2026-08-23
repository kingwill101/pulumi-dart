// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_organization_intelligence_config_filter_excluded_cloud_storage_bucket.dart';
import 'get_control_organization_intelligence_config_filter_excluded_cloud_storage_location.dart';
import 'get_control_organization_intelligence_config_filter_included_cloud_storage_bucket.dart';
import 'get_control_organization_intelligence_config_filter_included_cloud_storage_location.dart';

class GetControlOrganizationIntelligenceConfigFilter {
  /// Buckets to exclude from the Storage Intelligence plan.
  final pulumi.Input<List<GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucket>> excludedCloudStorageBuckets;
  /// Locations to exclude from the Storage Intelligence plan.
  final pulumi.Input<List<GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation>> excludedCloudStorageLocations;
  /// Buckets to include in the Storage Intelligence plan.
  final pulumi.Input<List<GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket>> includedCloudStorageBuckets;
  /// Locations to include in the Storage Intelligence plan.
  final pulumi.Input<List<GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation>> includedCloudStorageLocations;

  /// Creates a new [GetControlOrganizationIntelligenceConfigFilter].
  /// [excludedCloudStorageBuckets] Buckets to exclude from the Storage Intelligence plan.
  /// [excludedCloudStorageLocations] Locations to exclude from the Storage Intelligence plan.
  /// [includedCloudStorageBuckets] Buckets to include in the Storage Intelligence plan.
  /// [includedCloudStorageLocations] Locations to include in the Storage Intelligence plan.
  const GetControlOrganizationIntelligenceConfigFilter({
    required this.excludedCloudStorageBuckets,
    required this.excludedCloudStorageLocations,
    required this.includedCloudStorageBuckets,
    required this.includedCloudStorageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedCloudStorageBuckets': pulumi.Input.mapInputValue<List<GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucket>, List<Map<String, dynamic>>>(excludedCloudStorageBuckets, (value) => pulumi.Input.encodeList<GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludedCloudStorageLocations': pulumi.Input.mapInputValue<List<GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation>, List<Map<String, dynamic>>>(excludedCloudStorageLocations, (value) => pulumi.Input.encodeList<GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedCloudStorageBuckets': pulumi.Input.mapInputValue<List<GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket>, List<Map<String, dynamic>>>(includedCloudStorageBuckets, (value) => pulumi.Input.encodeList<GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedCloudStorageLocations': pulumi.Input.mapInputValue<List<GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation>, List<Map<String, dynamic>>>(includedCloudStorageLocations, (value) => pulumi.Input.encodeList<GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetControlOrganizationIntelligenceConfigFilter.fromMap(Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceConfigFilter(
      excludedCloudStorageBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucket>(map['excludedCloudStorageBuckets']!, (value) => GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucket.fromMap((value as Map).cast<String, dynamic>()))),
      excludedCloudStorageLocations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation>(map['excludedCloudStorageLocations']!, (value) => GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation.fromMap((value as Map).cast<String, dynamic>()))),
      includedCloudStorageBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket>(map['includedCloudStorageBuckets']!, (value) => GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket.fromMap((value as Map).cast<String, dynamic>()))),
      includedCloudStorageLocations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation>(map['includedCloudStorageLocations']!, (value) => GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
