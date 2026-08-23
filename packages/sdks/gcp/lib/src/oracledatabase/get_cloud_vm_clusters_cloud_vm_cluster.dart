// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_clusters_cloud_vm_cluster_identity_connector.dart';
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
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String> deletionPolicy;
  /// Whether Terraform will be prevented from destroying the cluster. Deleting this cluster via terraform destroy or terraform apply will only succeed if this field is false in the Terraform state.
  final pulumi.Input<bool> deletionProtection;
  /// User friendly name for this resource.
  final pulumi.Input<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>> effectiveLabels;
  /// The name of the Exadata Infrastructure resource on which VM cluster
  /// resource is created, in the following format:
  /// projects/{project}/locations/{region}/cloudExadataInfrastuctures/{cloud_extradata_infrastructure}
  final pulumi.Input<String> exadataInfrastructure;
  /// The name of ExascaleDbStorageVault associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/exascaleDbStorageVaults/{exascale_db_storage_vault}
  final pulumi.Input<String> exascaleDbStorageVault;
  /// GCP location where Oracle Exadata is hosted. It is same as GCP Oracle zone
  /// of Exadata infrastructure.
  final pulumi.Input<String> gcpOracleZone;
  /// The identity connector details which will allow OCI to securely access
  /// the resources in the customer project.
  final pulumi.Input<List<GetCloudVmClustersCloudVmClusterIdentityConnector>> identityConnectors;
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
  /// the odbSubnet and backup_odb_subnet.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// [deletionProtection] Whether Terraform will be prevented from destroying the cluster. Deleting this cluster via terraform destroy or terraform apply will only succeed if this field is false in the Terraform state.
  /// [displayName] User friendly name for this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  /// [exadataInfrastructure] The name of the Exadata Infrastructure resource on which VM cluster
  /// [exascaleDbStorageVault] The name of ExascaleDbStorageVault associated with the VM Cluster.
  /// [gcpOracleZone] GCP location where Oracle Exadata is hosted. It is same as GCP Oracle zone
  /// [identityConnectors] The identity connector details which will allow OCI to securely access
  /// [labels] Labels or tags associated with the VM Cluster.
  /// [location] The location of the resource.
  /// [name] Identifier. The name of the VM Cluster resource with the format:
  /// [network] The name of the VPC network.
  /// [odbNetwork] The name of the OdbNetwork associated with the VM Cluster.
  /// [odbSubnet] The name of the OdbSubnet associated with the VM Cluster for
  /// [project] The project to which the resource belongs. If it
  /// [properties] Various properties and settings associated with Exadata VM cluster.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  const GetCloudVmClustersCloudVmCluster({
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
    required this.identityConnectors,
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
      'deletionPolicy': deletionPolicy,
      'deletionProtection': deletionProtection,
      'displayName': displayName,
      'effectiveLabels': effectiveLabels,
      'exadataInfrastructure': exadataInfrastructure,
      'exascaleDbStorageVault': exascaleDbStorageVault,
      'gcpOracleZone': gcpOracleZone,
      'identityConnectors': pulumi.Input.mapInputValue<List<GetCloudVmClustersCloudVmClusterIdentityConnector>, List<Map<String, dynamic>>>(identityConnectors, (value) => pulumi.Input.encodeList<GetCloudVmClustersCloudVmClusterIdentityConnector, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      backupOdbSubnet: pulumi.Input.fromValue(map['backupOdbSubnet'] as String),
      backupSubnetCidr: pulumi.Input.fromValue(map['backupSubnetCidr'] as String),
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      cloudVmClusterId: pulumi.Input.fromValue(map['cloudVmClusterId'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deletionPolicy: pulumi.Input.fromValue(map['deletionPolicy'] as String),
      deletionProtection: pulumi.Input.fromValue(map['deletionProtection'] as bool),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      effectiveLabels: pulumi.Input.fromValue((map['effectiveLabels'] as Map).cast<String, String>()),
      exadataInfrastructure: pulumi.Input.fromValue(map['exadataInfrastructure'] as String),
      exascaleDbStorageVault: pulumi.Input.fromValue(map['exascaleDbStorageVault'] as String),
      gcpOracleZone: pulumi.Input.fromValue(map['gcpOracleZone'] as String),
      identityConnectors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCloudVmClustersCloudVmClusterIdentityConnector>(map['identityConnectors']!, (value) => GetCloudVmClustersCloudVmClusterIdentityConnector.fromMap((value as Map).cast<String, dynamic>()))),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      odbNetwork: pulumi.Input.fromValue(map['odbNetwork'] as String),
      odbSubnet: pulumi.Input.fromValue(map['odbSubnet'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      properties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCloudVmClustersCloudVmClusterProperty>(map['properties']!, (value) => GetCloudVmClustersCloudVmClusterProperty.fromMap((value as Map).cast<String, dynamic>()))),
      pulumiLabels: pulumi.Input.fromValue((map['pulumiLabels'] as Map).cast<String, String>()),
    );
  }
}
