// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_cluster_identity_connector.dart';
import 'get_cloud_vm_cluster_property.dart';

/// Result data returned by getCloudVmCluster.
class GetCloudVmClusterResult {
  final String? backupOdbSubnet;
  final String? backupSubnetCidr;
  final String? cidr;
  final String? cloudVmClusterId;
  final String? createTime;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final String? displayName;
  final Map<String, String>? effectiveLabels;
  final String? exadataInfrastructure;
  final String? exascaleDbStorageVault;
  final String? gcpOracleZone;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetCloudVmClusterIdentityConnector>? identityConnectors;
  final Map<String, String>? labels;
  final String? location;
  final String? name;
  final String? network;
  final String? odbNetwork;
  final String? odbSubnet;
  final String? project;
  final List<GetCloudVmClusterProperty>? properties;
  final Map<String, String>? pulumiLabels;

  /// Creates a new [GetCloudVmClusterResult].
  /// [backupOdbSubnet] Optional.
  /// [backupSubnetCidr] Optional.
  /// [cidr] Optional.
  /// [cloudVmClusterId] Optional.
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [displayName] Optional.
  /// [effectiveLabels] Optional.
  /// [exadataInfrastructure] Optional.
  /// [exascaleDbStorageVault] Optional.
  /// [gcpOracleZone] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityConnectors] Optional.
  /// [labels] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [network] Optional.
  /// [odbNetwork] Optional.
  /// [odbSubnet] Optional.
  /// [project] Optional.
  /// [properties] Optional.
  /// [pulumiLabels] Optional.
  const GetCloudVmClusterResult({
    this.backupOdbSubnet,
    this.backupSubnetCidr,
    this.cidr,
    this.cloudVmClusterId,
    this.createTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    this.effectiveLabels,
    this.exadataInfrastructure,
    this.exascaleDbStorageVault,
    this.gcpOracleZone,
    this.id,
    this.identityConnectors,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.odbNetwork,
    this.odbSubnet,
    this.project,
    this.properties,
    this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupOdbSubnet': ?backupOdbSubnet,
      'backupSubnetCidr': ?backupSubnetCidr,
      'cidr': ?cidr,
      'cloudVmClusterId': ?cloudVmClusterId,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'exadataInfrastructure': ?exadataInfrastructure,
      'exascaleDbStorageVault': ?exascaleDbStorageVault,
      'gcpOracleZone': ?gcpOracleZone,
      'id': ?id,
      'identityConnectors': ?(() { final guardedValue = identityConnectors; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudVmClusterIdentityConnector, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'project': ?project,
      'properties': ?(() { final guardedValue = properties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudVmClusterProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory GetCloudVmClusterResult.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterResult(
      backupOdbSubnet: (() { final guardedValue = map['backupOdbSubnet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupSubnetCidr: (() { final guardedValue = map['backupSubnetCidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudVmClusterId: (() { final guardedValue = map['cloudVmClusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      exadataInfrastructure: (() { final guardedValue = map['exadataInfrastructure']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exascaleDbStorageVault: (() { final guardedValue = map['exascaleDbStorageVault']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gcpOracleZone: (() { final guardedValue = map['gcpOracleZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityConnectors: (() { final guardedValue = map['identityConnectors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudVmClusterIdentityConnector>(guardedValue, (value) => GetCloudVmClusterIdentityConnector.fromMap((value as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbNetwork: (() { final guardedValue = map['odbNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbSubnet: (() { final guardedValue = map['odbSubnet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudVmClusterProperty>(guardedValue, (value) => GetCloudVmClusterProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
