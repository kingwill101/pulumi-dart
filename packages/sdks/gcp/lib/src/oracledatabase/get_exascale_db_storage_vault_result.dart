// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_exascale_db_storage_vault_property.dart';

/// Result data returned by getExascaleDbStorageVault.
class GetExascaleDbStorageVaultResult {
  final String? createTime;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final String? displayName;
  final Map<String, String>? effectiveLabels;
  final String? entitlementId;
  final String? exadataInfrastructure;
  final String? exascaleDbStorageVaultId;
  final String? gcpOracleZone;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? location;
  final String? name;
  final String? project;
  final List<GetExascaleDbStorageVaultProperty>? properties;
  final Map<String, String>? pulumiLabels;

  /// Creates a new [GetExascaleDbStorageVaultResult].
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [displayName] Optional.
  /// [effectiveLabels] Optional.
  /// [entitlementId] Optional.
  /// [exadataInfrastructure] Optional.
  /// [exascaleDbStorageVaultId] Optional.
  /// [gcpOracleZone] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [properties] Optional.
  /// [pulumiLabels] Optional.
  const GetExascaleDbStorageVaultResult({
    this.createTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    this.effectiveLabels,
    this.entitlementId,
    this.exadataInfrastructure,
    this.exascaleDbStorageVaultId,
    this.gcpOracleZone,
    this.id,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.properties,
    this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'entitlementId': ?entitlementId,
      'exadataInfrastructure': ?exadataInfrastructure,
      'exascaleDbStorageVaultId': ?exascaleDbStorageVaultId,
      'gcpOracleZone': ?gcpOracleZone,
      'id': ?id,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'properties': ?(() { final guardedValue = properties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetExascaleDbStorageVaultProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory GetExascaleDbStorageVaultResult.fromMap(Map<String, dynamic> map) {
    return GetExascaleDbStorageVaultResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      entitlementId: (() { final guardedValue = map['entitlementId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exadataInfrastructure: (() { final guardedValue = map['exadataInfrastructure']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exascaleDbStorageVaultId: (() { final guardedValue = map['exascaleDbStorageVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gcpOracleZone: (() { final guardedValue = map['gcpOracleZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetExascaleDbStorageVaultProperty>(guardedValue, (value) => GetExascaleDbStorageVaultProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
