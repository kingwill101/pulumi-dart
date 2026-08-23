// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_exadata_infrastructure_property.dart';

/// Result data returned by getCloudExadataInfrastructure.
class GetCloudExadataInfrastructureResult {
  final String cloudExadataInfrastructureId;
  final String createTime;
  final String deletionPolicy;
  final bool deletionProtection;
  final String displayName;
  final Map<String, String> effectiveLabels;
  final String entitlementId;
  final String gcpOracleZone;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String? project;
  final List<GetCloudExadataInfrastructureProperty> properties;
  final Map<String, String> pulumiLabels;

  /// Creates a new [GetCloudExadataInfrastructureResult].
  /// [cloudExadataInfrastructureId] Required.
  /// [createTime] Required.
  /// [deletionPolicy] Required.
  /// [deletionProtection] Required.
  /// [displayName] Required.
  /// [effectiveLabels] Required.
  /// [entitlementId] Required.
  /// [gcpOracleZone] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [location] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [properties] Required.
  /// [pulumiLabels] Required.
  const GetCloudExadataInfrastructureResult({
    required this.cloudExadataInfrastructureId,
    required this.createTime,
    required this.deletionPolicy,
    required this.deletionProtection,
    required this.displayName,
    required this.effectiveLabels,
    required this.entitlementId,
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
      'cloudExadataInfrastructureId': cloudExadataInfrastructureId,
      'createTime': createTime,
      'deletionPolicy': deletionPolicy,
      'deletionProtection': deletionProtection,
      'displayName': displayName,
      'effectiveLabels': effectiveLabels,
      'entitlementId': entitlementId,
      'gcpOracleZone': gcpOracleZone,
      'id': id,
      'labels': labels,
      'location': location,
      'name': name,
      'project': ?project,
      'properties': pulumi.Input.encodeList<GetCloudExadataInfrastructureProperty, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'pulumiLabels': pulumiLabels,
    };
  }

  factory GetCloudExadataInfrastructureResult.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureResult(
      cloudExadataInfrastructureId: map['cloudExadataInfrastructureId'] as String,
      createTime: map['createTime'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      displayName: map['displayName'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      entitlementId: map['entitlementId'] as String,
      gcpOracleZone: map['gcpOracleZone'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: pulumi.Input.decodeList<GetCloudExadataInfrastructureProperty>(map['properties']!, (value) => GetCloudExadataInfrastructureProperty.fromMap((value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
    );
  }
}
