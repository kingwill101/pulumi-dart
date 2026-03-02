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
  ExascaleDbStorageVaultProperties({
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
      additionalFlashCachePercent: map['additionalFlashCachePercent'] == null ? null : (map['additionalFlashCachePercent']! as int).input(),
      attachedShapeAttributes: map['attachedShapeAttributes'] == null ? null : ((map['attachedShapeAttributes']! as List).cast<String>()).input(),
      availableShapeAttributes: map['availableShapeAttributes'] == null ? null : ((map['availableShapeAttributes']! as List).cast<String>()).input(),
      exascaleDbStorageDetails: (ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails.fromMap((map['exascaleDbStorageDetails'] as Map).cast<String, dynamic>())).input(),
      ociUri: map['ociUri'] == null ? null : (map['ociUri']! as String).input(),
      ocid: map['ocid'] == null ? null : (map['ocid']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      timeZone: map['timeZone'] == null ? null : (ExascaleDbStorageVaultPropertiesTimeZone.fromMap((map['timeZone']! as Map).cast<String, dynamic>())).input(),
      vmClusterCount: map['vmClusterCount'] == null ? null : (map['vmClusterCount']! as int).input(),
      vmClusterIds: map['vmClusterIds'] == null ? null : ((map['vmClusterIds']! as List).cast<String>()).input(),
    );
  }
}

