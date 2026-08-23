// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_exascale_db_storage_vault_property_exascale_db_storage_detail.dart';
import 'get_exascale_db_storage_vault_property_time_zone.dart';

class GetExascaleDbStorageVaultProperty {
  /// The size of additional flash cache in percentage of high capacity
  /// database storage.
  final pulumi.Input<int> additionalFlashCachePercent;
  /// The shape attributes of the VM clusters attached to the
  /// ExascaleDbStorageVault.
  final pulumi.Input<List<String>> attachedShapeAttributes;
  /// The shape attributes available for the VM clusters to be attached to the
  /// ExascaleDbStorageVault.
  final pulumi.Input<List<String>> availableShapeAttributes;
  /// The storage details of the ExascaleDbStorageVault.
  final pulumi.Input<List<GetExascaleDbStorageVaultPropertyExascaleDbStorageDetail>> exascaleDbStorageDetails;
  /// Deep link to the OCI console to view this resource.
  final pulumi.Input<String> ociUri;
  /// The OCID for the ExascaleDbStorageVault.
  final pulumi.Input<String> ocid;
  /// The state of the ExascaleDbStorageVault.
  /// Possible values:
  /// PROVISIONING
  /// AVAILABLE
  /// UPDATING
  /// TERMINATING
  /// TERMINATED
  /// FAILED
  final pulumi.Input<String> state;
  /// Represents a time zone from the
  /// [IANA Time Zone Database](https://www.iana.org/time-zones).
  final pulumi.Input<List<GetExascaleDbStorageVaultPropertyTimeZone>> timeZones;
  /// The number of VM clusters associated with the ExascaleDbStorageVault.
  final pulumi.Input<int> vmClusterCount;
  /// The list of VM cluster OCIDs associated with the ExascaleDbStorageVault.
  final pulumi.Input<List<String>> vmClusterIds;

  /// Creates a new [GetExascaleDbStorageVaultProperty].
  /// [additionalFlashCachePercent] The size of additional flash cache in percentage of high capacity
  /// [attachedShapeAttributes] The shape attributes of the VM clusters attached to the
  /// [availableShapeAttributes] The shape attributes available for the VM clusters to be attached to the
  /// [exascaleDbStorageDetails] The storage details of the ExascaleDbStorageVault.
  /// [ociUri] Deep link to the OCI console to view this resource.
  /// [ocid] The OCID for the ExascaleDbStorageVault.
  /// [state] The state of the ExascaleDbStorageVault.
  /// [timeZones] Represents a time zone from the
  /// [vmClusterCount] The number of VM clusters associated with the ExascaleDbStorageVault.
  /// [vmClusterIds] The list of VM cluster OCIDs associated with the ExascaleDbStorageVault.
  const GetExascaleDbStorageVaultProperty({
    required this.additionalFlashCachePercent,
    required this.attachedShapeAttributes,
    required this.availableShapeAttributes,
    required this.exascaleDbStorageDetails,
    required this.ociUri,
    required this.ocid,
    required this.state,
    required this.timeZones,
    required this.vmClusterCount,
    required this.vmClusterIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalFlashCachePercent': additionalFlashCachePercent,
      'attachedShapeAttributes': attachedShapeAttributes,
      'availableShapeAttributes': availableShapeAttributes,
      'exascaleDbStorageDetails': pulumi.Input.mapInputValue<List<GetExascaleDbStorageVaultPropertyExascaleDbStorageDetail>, List<Map<String, dynamic>>>(exascaleDbStorageDetails, (value) => pulumi.Input.encodeList<GetExascaleDbStorageVaultPropertyExascaleDbStorageDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ociUri': ociUri,
      'ocid': ocid,
      'state': state,
      'timeZones': pulumi.Input.mapInputValue<List<GetExascaleDbStorageVaultPropertyTimeZone>, List<Map<String, dynamic>>>(timeZones, (value) => pulumi.Input.encodeList<GetExascaleDbStorageVaultPropertyTimeZone, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmClusterCount': vmClusterCount,
      'vmClusterIds': vmClusterIds,
    };
  }

  factory GetExascaleDbStorageVaultProperty.fromMap(Map<String, dynamic> map) {
    return GetExascaleDbStorageVaultProperty(
      additionalFlashCachePercent: pulumi.Input.fromValue(map['additionalFlashCachePercent'] as int),
      attachedShapeAttributes: pulumi.Input.fromValue((map['attachedShapeAttributes'] as List).cast<String>()),
      availableShapeAttributes: pulumi.Input.fromValue((map['availableShapeAttributes'] as List).cast<String>()),
      exascaleDbStorageDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetExascaleDbStorageVaultPropertyExascaleDbStorageDetail>(map['exascaleDbStorageDetails']!, (value) => GetExascaleDbStorageVaultPropertyExascaleDbStorageDetail.fromMap((value as Map).cast<String, dynamic>()))),
      ociUri: pulumi.Input.fromValue(map['ociUri'] as String),
      ocid: pulumi.Input.fromValue(map['ocid'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      timeZones: pulumi.Input.fromValue(pulumi.Input.decodeList<GetExascaleDbStorageVaultPropertyTimeZone>(map['timeZones']!, (value) => GetExascaleDbStorageVaultPropertyTimeZone.fromMap((value as Map).cast<String, dynamic>()))),
      vmClusterCount: pulumi.Input.fromValue(map['vmClusterCount'] as int),
      vmClusterIds: pulumi.Input.fromValue((map['vmClusterIds'] as List).cast<String>()),
    );
  }
}
