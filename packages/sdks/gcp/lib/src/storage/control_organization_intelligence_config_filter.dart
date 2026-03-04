// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_organization_intelligence_config_filter_excluded_cloud_storage_buckets.dart';
import 'control_organization_intelligence_config_filter_excluded_cloud_storage_locations.dart';
import 'control_organization_intelligence_config_filter_included_cloud_storage_buckets.dart';
import 'control_organization_intelligence_config_filter_included_cloud_storage_locations.dart';

class ControlOrganizationIntelligenceConfigFilter {
  /// Buckets to exclude from the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<
    ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets
  >?
  excludedCloudStorageBuckets;

  /// Locations to exclude from the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<
    ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocations
  >?
  excludedCloudStorageLocations;

  /// Buckets to include in the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<
    ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBuckets
  >?
  includedCloudStorageBuckets;

  /// Locations to include in the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<
    ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations
  >?
  includedCloudStorageLocations;

  /// Creates a new [ControlOrganizationIntelligenceConfigFilter].
  /// [excludedCloudStorageBuckets] Buckets to exclude from the Storage Intelligence plan.
  /// [excludedCloudStorageLocations] Locations to exclude from the Storage Intelligence plan.
  /// [includedCloudStorageBuckets] Buckets to include in the Storage Intelligence plan.
  /// [includedCloudStorageLocations] Locations to include in the Storage Intelligence plan.
  ControlOrganizationIntelligenceConfigFilter({
    this.excludedCloudStorageBuckets,
    this.excludedCloudStorageLocations,
    this.includedCloudStorageBuckets,
    this.includedCloudStorageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedCloudStorageBuckets':
          ?pulumi.Input.mapOptionalInputValue<
            ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets,
            Map<String, dynamic>
          >(excludedCloudStorageBuckets, (value) => value.toMap()),
      'excludedCloudStorageLocations':
          ?pulumi.Input.mapOptionalInputValue<
            ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocations,
            Map<String, dynamic>
          >(excludedCloudStorageLocations, (value) => value.toMap()),
      'includedCloudStorageBuckets':
          ?pulumi.Input.mapOptionalInputValue<
            ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBuckets,
            Map<String, dynamic>
          >(includedCloudStorageBuckets, (value) => value.toMap()),
      'includedCloudStorageLocations':
          ?pulumi.Input.mapOptionalInputValue<
            ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations,
            Map<String, dynamic>
          >(includedCloudStorageLocations, (value) => value.toMap()),
    };
  }

  factory ControlOrganizationIntelligenceConfigFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return ControlOrganizationIntelligenceConfigFilter(
      excludedCloudStorageBuckets: (() {
        final guardedValue = map['excludedCloudStorageBuckets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      excludedCloudStorageLocations: (() {
        final guardedValue = map['excludedCloudStorageLocations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocations.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      includedCloudStorageBuckets: (() {
        final guardedValue = map['includedCloudStorageBuckets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBuckets.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      includedCloudStorageLocations: (() {
        final guardedValue = map['includedCloudStorageLocations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
