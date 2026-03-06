// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exascale_db_storage_vault_properties_exascale_db_storage_details.dart';
import 'exascale_db_storage_vault_properties_time_zone.dart';

class ExascaleDbStorageVaultProperties {
  /// The size of additional flash cache in percentage of high capacity
  /// database storage.
  final pulumi.Input<int>? additionalFlashCachePercent;
  /// (Output)
  /// The shape attributes of the VM clusters attached to the
  /// ExascaleDbStorageVault.
  final pulumi.Input<List<String>>? attachedShapeAttributes;
  /// (Output)
  /// The shape attributes available for the VM clusters to be attached to the
  /// ExascaleDbStorageVault.
  final pulumi.Input<List<String>>? availableShapeAttributes;
  /// The storage details of the ExascaleDbStorageVault.
  /// Structure is documented below.
  final pulumi.Input<ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails> exascaleDbStorageDetails;
  /// (Output)
  /// Deep link to the OCI console to view this resource.
  final pulumi.Input<String>? ociUri;
  /// (Output)
  /// The OCID for the ExascaleDbStorageVault.
  final pulumi.Input<String>? ocid;
  /// (Output)
  /// The state of the ExascaleDbStorageVault.
  /// Possible values:
  /// PROVISIONING
  /// AVAILABLE
  /// UPDATING
  /// TERMINATING
  /// TERMINATED
  /// FAILED
  final pulumi.Input<String>? state;
  /// Represents a time zone from the
  /// [IANA Time Zone Database](https://www.iana.org/time-zones).
  /// Structure is documented below.
  final pulumi.Input<ExascaleDbStorageVaultPropertiesTimeZone>? timeZone;
  /// (Output)
  /// The number of VM clusters associated with the ExascaleDbStorageVault.
  final pulumi.Input<int>? vmClusterCount;
  /// (Output)
  /// The list of VM cluster OCIDs associated with the ExascaleDbStorageVault.
  final pulumi.Input<List<String>>? vmClusterIds;

  /// Creates a new [ExascaleDbStorageVaultProperties].
  /// [additionalFlashCachePercent] The size of additional flash cache in percentage of high capacity
  /// [attachedShapeAttributes] (Output)
  /// [availableShapeAttributes] (Output)
  /// [exascaleDbStorageDetails] The storage details of the ExascaleDbStorageVault.
  /// [ociUri] (Output)
  /// [ocid] (Output)
  /// [state] (Output)
  /// [timeZone] Represents a time zone from the
  /// [vmClusterCount] (Output)
  /// [vmClusterIds] (Output)
  const ExascaleDbStorageVaultProperties({
    this.additionalFlashCachePercent,
    this.attachedShapeAttributes,
    this.availableShapeAttributes,
    required this.exascaleDbStorageDetails,
    this.ociUri,
    this.ocid,
    this.state,
    this.timeZone,
    this.vmClusterCount,
    this.vmClusterIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalFlashCachePercent': ?additionalFlashCachePercent,
      'attachedShapeAttributes': ?attachedShapeAttributes,
      'availableShapeAttributes': ?availableShapeAttributes,
      'exascaleDbStorageDetails': pulumi.Input.mapInputValue<ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails, Map<String, dynamic>>(exascaleDbStorageDetails, (value) => value.toMap()),
      'ociUri': ?ociUri,
      'ocid': ?ocid,
      'state': ?state,
      'timeZone': ?pulumi.Input.mapOptionalInputValue<ExascaleDbStorageVaultPropertiesTimeZone, Map<String, dynamic>>(timeZone, (value) => value.toMap()),
      'vmClusterCount': ?vmClusterCount,
      'vmClusterIds': ?vmClusterIds,
    };
  }

  factory ExascaleDbStorageVaultProperties.fromMap(Map<String, dynamic> map) {
    return ExascaleDbStorageVaultProperties(
      additionalFlashCachePercent: (() { final guardedValue = map['additionalFlashCachePercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      attachedShapeAttributes: (() { final guardedValue = map['attachedShapeAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      availableShapeAttributes: (() { final guardedValue = map['availableShapeAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exascaleDbStorageDetails: pulumi.Input.fromValue(ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails.fromMap((map['exascaleDbStorageDetails']! as Map).cast<String, dynamic>())),
      ociUri: (() { final guardedValue = map['ociUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExascaleDbStorageVaultPropertiesTimeZone.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmClusterCount: (() { final guardedValue = map['vmClusterCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vmClusterIds: (() { final guardedValue = map['vmClusterIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

