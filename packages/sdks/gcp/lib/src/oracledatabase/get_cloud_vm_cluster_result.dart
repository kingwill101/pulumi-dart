// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_cluster_identity_connector.dart';
import 'get_cloud_vm_cluster_property.dart';

/// Result data returned by getCloudVmCluster.
class GetCloudVmClusterResult {
  final String backupOdbSubnet;
  final String backupSubnetCidr;
  final String cidr;
  final String cloudVmClusterId;
  final String createTime;
  final String deletionPolicy;
  final bool deletionProtection;
  final String displayName;
  final Map<String, String> effectiveLabels;
  final String exadataInfrastructure;
  final String exascaleDbStorageVault;
  final String gcpOracleZone;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetCloudVmClusterIdentityConnector> identityConnectors;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String network;
  final String odbNetwork;
  final String odbSubnet;
  final String? project;
  final List<GetCloudVmClusterProperty> properties;
  final Map<String, String> pulumiLabels;

  /// Creates a new [GetCloudVmClusterResult].
  /// [backupOdbSubnet] Required.
  /// [backupSubnetCidr] Required.
  /// [cidr] Required.
  /// [cloudVmClusterId] Required.
  /// [createTime] Required.
  /// [deletionPolicy] Required.
  /// [deletionProtection] Required.
  /// [displayName] Required.
  /// [effectiveLabels] Required.
  /// [exadataInfrastructure] Required.
  /// [exascaleDbStorageVault] Required.
  /// [gcpOracleZone] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityConnectors] Required.
  /// [labels] Required.
  /// [location] Required.
  /// [name] Required.
  /// [network] Required.
  /// [odbNetwork] Required.
  /// [odbSubnet] Required.
  /// [project] Optional.
  /// [properties] Required.
  /// [pulumiLabels] Required.
  const GetCloudVmClusterResult({
    required this.backupOdbSubnet,
    required this.backupSubnetCidr,
    required this.cidr,
    required this.cloudVmClusterId,
    required this.createTime,
    required this.deletionPolicy,
    required this.deletionProtection,
    required this.displayName,
    required this.effectiveLabels,
    required this.exadataInfrastructure,
    required this.exascaleDbStorageVault,
    required this.gcpOracleZone,
    required this.id,
    required this.identityConnectors,
    required this.labels,
    required this.location,
    required this.name,
    required this.network,
    required this.odbNetwork,
    required this.odbSubnet,
    this.project,
    required this.properties,
    required this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupOdbSubnet': backupOdbSubnet,
      'backupSubnetCidr': backupSubnetCidr,
      'cidr': cidr,
      'cloudVmClusterId': cloudVmClusterId,
      'createTime': createTime,
      'deletionPolicy': deletionPolicy,
      'deletionProtection': deletionProtection,
      'displayName': displayName,
      'effectiveLabels': effectiveLabels,
      'exadataInfrastructure': exadataInfrastructure,
      'exascaleDbStorageVault': exascaleDbStorageVault,
      'gcpOracleZone': gcpOracleZone,
      'id': id,
      'identityConnectors': pulumi.Input.encodeList<GetCloudVmClusterIdentityConnector, Map<String, dynamic>>(identityConnectors, (value) => value.toMap()),
      'labels': labels,
      'location': location,
      'name': name,
      'network': network,
      'odbNetwork': odbNetwork,
      'odbSubnet': odbSubnet,
      'project': ?project,
      'properties': pulumi.Input.encodeList<GetCloudVmClusterProperty, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'pulumiLabels': pulumiLabels,
    };
  }

  factory GetCloudVmClusterResult.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterResult(
      backupOdbSubnet: map['backupOdbSubnet'] as String,
      backupSubnetCidr: map['backupSubnetCidr'] as String,
      cidr: map['cidr'] as String,
      cloudVmClusterId: map['cloudVmClusterId'] as String,
      createTime: map['createTime'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      displayName: map['displayName'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      exadataInfrastructure: map['exadataInfrastructure'] as String,
      exascaleDbStorageVault: map['exascaleDbStorageVault'] as String,
      gcpOracleZone: map['gcpOracleZone'] as String,
      id: map['id'] as String,
      identityConnectors: pulumi.Input.decodeList<GetCloudVmClusterIdentityConnector>(map['identityConnectors']!, (value) => GetCloudVmClusterIdentityConnector.fromMap((value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      odbNetwork: map['odbNetwork'] as String,
      odbSubnet: map['odbSubnet'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: pulumi.Input.decodeList<GetCloudVmClusterProperty>(map['properties']!, (value) => GetCloudVmClusterProperty.fromMap((value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
    );
  }
}
