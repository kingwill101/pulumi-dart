// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_cloud_storage_target_conditions_cloud_storage_conditions.dart';

class PreventionDiscoveryConfigTargetCloudStorageTargetConditions {
  /// Cloud Storage conditions.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudStorageTargetConditionsCloudStorageConditions>? cloudStorageConditions;
  /// File store must have been created after this date. Used to avoid backfilling. A timestamp in RFC3339 UTC "Zulu" format with nanosecond resolution and upto nine fractional digits.
  final pulumi.Input<String>? createdAfter;
  /// Duration format.  Minimum age a resource must be before a profile can be generated. Value must be 1 hour or greater. Minimum age is not supported for Azure Blob Storage containers.
  final pulumi.Input<String>? minAge;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetConditions].
  /// [cloudStorageConditions] Cloud Storage conditions.
  /// [createdAfter] File store must have been created after this date. Used to avoid backfilling. A timestamp in RFC3339 UTC "Zulu" format with nanosecond resolution and upto nine fractional digits.
  /// [minAge] Duration format.  Minimum age a resource must be before a profile can be generated. Value must be 1 hour or greater. Minimum age is not supported for Azure Blob Storage containers.
  const PreventionDiscoveryConfigTargetCloudStorageTargetConditions({
    this.cloudStorageConditions,
    this.createdAfter,
    this.minAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStorageConditions': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudStorageTargetConditionsCloudStorageConditions, Map<String, dynamic>>(cloudStorageConditions, (value) => value.toMap()),
      'createdAfter': ?createdAfter,
      'minAge': ?minAge,
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetConditions.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetConditions(
      cloudStorageConditions: (() { final guardedValue = map['cloudStorageConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetCloudStorageTargetConditionsCloudStorageConditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAfter: (() { final guardedValue = map['createdAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minAge: (() { final guardedValue = map['minAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

