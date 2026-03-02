// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_clusters_cloud_vm_cluster_property.dart';

class GetCloudVmClustersCloudVmCluster {
  /// The name of the backup OdbSubnet associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String> backupOdbSubnet;
  /// CIDR range of the backup subnet.
  final pulumi.Input<String> backupSubnetCidr;
  /// Network settings. CIDR to use for cluster IP allocation.
  final pulumi.Input<String> cidr;
  /// The ID of the VM Cluster to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String> cloudVmClusterId;
  /// The date and time that the VM cluster was created.
  final pulumi.Input<String> createTime;
  final pulumi.Input<bool> deletionProtection;
  /// User friendly name for this resource.
  final pulumi.Input<String> displayName;
  final pulumi.Input<Map<String, String>> effectiveLabels;
  /// The name of the Exadata Infrastructure resource on which VM cluster
  /// resource is created, in the following format:
  /// projects/{project}/locations/{region}/cloudExadataInfrastuctures/{cloud_extradata_infrastructure}
  final pulumi.Input<String> exadataInfrastructure;
  /// GCP location where Oracle Exadata is hosted. It is same as GCP Oracle zone
  /// of Exadata infrastructure.
  final pulumi.Input<String> gcpOracleZone;
  /// Labels or tags associated with the VM Cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>> labels;
  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// Identifier. The name of the VM Cluster resource with the format:
  /// projects/{project}/locations/{region}/cloudVmClusters/{cloud_vm_cluster}
  final pulumi.Input<String> name;
  /// The name of the VPC network.
  /// Format: projects/{project}/global/networks/{network}
  final pulumi.Input<String> network;
  /// The name of the OdbNetwork associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the odb_subnet and backup_odb_subnet.
  final pulumi.Input<String> odbNetwork;
  /// The name of the OdbSubnet associated with the VM Cluster for
  /// IP allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String> odbSubnet;
  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String> project;
  /// Various properties and settings associated with Exadata VM cluster.
  final pulumi.Input<List<GetCloudVmClustersCloudVmClusterProperty>> properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>> pulumiLabels;

  /// Creates a new [GetCloudVmClustersCloudVmCluster].
  /// [backupOdbSubnet] The name of the backup OdbSubnet associated with the VM Cluster.
  /// [backupSubnetCidr] CIDR range of the backup subnet.
  /// [cidr] Network settings. CIDR to use for cluster IP allocation.
  /// [cloudVmClusterId] The ID of the VM Cluster to create. This value is restricted
  /// [createTime] The date and time that the VM cluster was created.
  /// [deletionProtection] Required.
  /// [displayName] User friendly name for this resource.
  /// [effectiveLabels] Required.
  /// [exadataInfrastructure] The name of the Exadata Infrastructure resource on which VM cluster
  /// [gcpOracleZone] GCP location where Oracle Exadata is hosted. It is same as GCP Oracle zone
  /// [labels] Labels or tags associated with the VM Cluster.
  /// [location] The location of the resource.
  /// [name] Identifier. The name of the VM Cluster resource with the format:
  /// [network] The name of the VPC network.
  /// [odbNetwork] The name of the OdbNetwork associated with the VM Cluster.
  /// [odbSubnet] The name of the OdbSubnet associated with the VM Cluster for
  /// [project] The project to which the resource belongs. If it
  /// [properties] Various properties and settings associated with Exadata VM cluster.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  GetCloudVmClustersCloudVmCluster({
    required this.backupOdbSubnet,
    required this.backupSubnetCidr,
    required this.cidr,
    required this.cloudVmClusterId,
    required this.createTime,
    required this.deletionProtection,
    required this.displayName,
    required this.effectiveLabels,
    required this.exadataInfrastructure,
    required this.gcpOracleZone,
    required this.labels,
    required this.location,
    required this.name,
    required this.network,
    required this.odbNetwork,
    required this.odbSubnet,
    required this.project,
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
      'deletionProtection': deletionProtection,
      'displayName': displayName,
      'effectiveLabels': effectiveLabels,
      'exadataInfrastructure': exadataInfrastructure,
      'gcpOracleZone': gcpOracleZone,
      'labels': labels,
      'location': location,
      'name': name,
      'network': network,
      'odbNetwork': odbNetwork,
      'odbSubnet': odbSubnet,
      'project': project,
      'properties': pulumi.Input.mapInputValue<List<GetCloudVmClustersCloudVmClusterProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<GetCloudVmClustersCloudVmClusterProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pulumiLabels': pulumiLabels,
    };
  }

  factory GetCloudVmClustersCloudVmCluster.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClustersCloudVmCluster(
      backupOdbSubnet: (map['backupOdbSubnet'] as String).input(),
      backupSubnetCidr: (map['backupSubnetCidr'] as String).input(),
      cidr: (map['cidr'] as String).input(),
      cloudVmClusterId: (map['cloudVmClusterId'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      deletionProtection: (map['deletionProtection'] as bool).input(),
      displayName: (map['displayName'] as String).input(),
      effectiveLabels: ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      exadataInfrastructure: (map['exadataInfrastructure'] as String).input(),
      gcpOracleZone: (map['gcpOracleZone'] as String).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      network: (map['network'] as String).input(),
      odbNetwork: (map['odbNetwork'] as String).input(),
      odbSubnet: (map['odbSubnet'] as String).input(),
      project: (map['project'] as String).input(),
      properties: (pulumi.Input.decodeList<GetCloudVmClustersCloudVmClusterProperty>(map['properties'], (value) => GetCloudVmClustersCloudVmClusterProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pulumiLabels: ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
    );
  }
}

