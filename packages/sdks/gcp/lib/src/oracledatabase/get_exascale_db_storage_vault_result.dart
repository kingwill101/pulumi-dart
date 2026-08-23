// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_exascale_db_storage_vault_property.dart';

/// Result data returned by getExascaleDbStorageVault.
class GetExascaleDbStorageVaultResult {
  final String createTime;
  final String deletionPolicy;
  final bool deletionProtection;
  final String displayName;
  final Map<String, String> effectiveLabels;
  final String entitlementId;
  final String exadataInfrastructure;
  final String exascaleDbStorageVaultId;
  final String gcpOracleZone;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String? project;
  final List<GetExascaleDbStorageVaultProperty> properties;
  final Map<String, String> pulumiLabels;

  /// Creates a new [GetExascaleDbStorageVaultResult].
  /// [createTime] Required.
  /// [deletionPolicy] Required.
  /// [deletionProtection] Required.
  /// [displayName] Required.
  /// [effectiveLabels] Required.
  /// [entitlementId] Required.
  /// [exadataInfrastructure] Required.
  /// [exascaleDbStorageVaultId] Required.
  /// [gcpOracleZone] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [location] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [properties] Required.
  /// [pulumiLabels] Required.
  const GetExascaleDbStorageVaultResult({
    required this.createTime,
    required this.deletionPolicy,
    required this.deletionProtection,
    required this.displayName,
    required this.effectiveLabels,
    required this.entitlementId,
    required this.exadataInfrastructure,
    required this.exascaleDbStorageVaultId,
    required this.gcpOracleZone,
    required this.id,
    required this.labels,
    required this.location,
    required this.name,
    this.project,
    required this.properties,
    required this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deletionPolicy': deletionPolicy,
      'deletionProtection': deletionProtection,
      'displayName': displayName,
      'effectiveLabels': effectiveLabels,
      'entitlementId': entitlementId,
      'exadataInfrastructure': exadataInfrastructure,
      'exascaleDbStorageVaultId': exascaleDbStorageVaultId,
      'gcpOracleZone': gcpOracleZone,
      'id': id,
      'labels': labels,
      'location': location,
      'name': name,
      'project': ?project,
      'properties': pulumi.Input.encodeList<GetExascaleDbStorageVaultProperty, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'pulumiLabels': pulumiLabels,
    };
  }

  factory GetExascaleDbStorageVaultResult.fromMap(Map<String, dynamic> map) {
    return GetExascaleDbStorageVaultResult(
      createTime: map['createTime'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      displayName: map['displayName'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      entitlementId: map['entitlementId'] as String,
      exadataInfrastructure: map['exadataInfrastructure'] as String,
      exascaleDbStorageVaultId: map['exascaleDbStorageVaultId'] as String,
      gcpOracleZone: map['gcpOracleZone'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: pulumi.Input.decodeList<GetExascaleDbStorageVaultProperty>(map['properties']!, (value) => GetExascaleDbStorageVaultProperty.fromMap((value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
    );
  }
}
