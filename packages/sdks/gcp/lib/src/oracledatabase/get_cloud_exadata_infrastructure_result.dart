// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_exadata_infrastructure_property.dart';

/// Result data returned by getCloudExadataInfrastructure.
class GetCloudExadataInfrastructureResult {
  final String? cloudExadataInfrastructureId;
  final String? createTime;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final String? displayName;
  final Map<String, String>? effectiveLabels;
  final String? entitlementId;
  final String? gcpOracleZone;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? location;
  final String? name;
  final String? project;
  final List<GetCloudExadataInfrastructureProperty>? properties;
  final Map<String, String>? pulumiLabels;

  /// Creates a new [GetCloudExadataInfrastructureResult].
  /// [cloudExadataInfrastructureId] Optional.
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [displayName] Optional.
  /// [effectiveLabels] Optional.
  /// [entitlementId] Optional.
  /// [gcpOracleZone] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [properties] Optional.
  /// [pulumiLabels] Optional.
  const GetCloudExadataInfrastructureResult({
    this.cloudExadataInfrastructureId,
    this.createTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    this.effectiveLabels,
    this.entitlementId,
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
      'cloudExadataInfrastructureId': ?cloudExadataInfrastructureId,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'entitlementId': ?entitlementId,
      'gcpOracleZone': ?gcpOracleZone,
      'id': ?id,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'properties': ?(() { final guardedValue = properties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudExadataInfrastructureProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory GetCloudExadataInfrastructureResult.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureResult(
      cloudExadataInfrastructureId: (() { final guardedValue = map['cloudExadataInfrastructureId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      entitlementId: (() { final guardedValue = map['entitlementId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gcpOracleZone: (() { final guardedValue = map['gcpOracleZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudExadataInfrastructureProperty>(guardedValue, (value) => GetCloudExadataInfrastructureProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
