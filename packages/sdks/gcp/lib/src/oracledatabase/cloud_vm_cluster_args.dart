// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_vm_cluster_properties.dart';

/// {@template pulumi_oracledatabase_cloud_vm_cluster_cloud_vm_cluster_args_doc}
/// The set of arguments for CloudVmCluster.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_cloud_vm_cluster_cloud_vm_cluster_args_doc}
class CloudVmClusterArgs {
  /// The name of the backup OdbSubnet associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String?>? backupOdbSubnet;
  /// CIDR range of the backup subnet.
  final pulumi.Input<String?>? backupSubnetCidr;
  /// Network settings. CIDR to use for cluster IP allocation.
  final pulumi.Input<String?>? cidr;
  /// The ID of the VM Cluster to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String> cloudVmClusterId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Whether Terraform will be prevented from destroying the cluster. Deleting this cluster via terraform destroy or pulumi up will only succeed if this field is false in the Terraform state.
  final pulumi.Input<bool?>? deletionProtection;
  /// User friendly name for this resource.
  final pulumi.Input<String?>? displayName;
  /// The name of the Exadata Infrastructure resource on which VM cluster
  /// resource is created, in the following format:
  /// projects/{project}/locations/{region}/cloudExadataInfrastuctures/{cloud_extradata_infrastructure}
  final pulumi.Input<String> exadataInfrastructure;
  /// The name of ExascaleDbStorageVault associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/exascaleDbStorageVaults/{exascale_db_storage_vault}
  final pulumi.Input<String?>? exascaleDbStorageVault;
  /// Labels or tags associated with the VM Cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/DbNode`.
  final pulumi.Input<String> location;
  /// The name of the VPC network.
  /// Format: projects/{project}/global/networks/{network}
  final pulumi.Input<String?>? network;
  /// The name of the OdbNetwork associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the odbSubnet and backup_odb_subnet.
  final pulumi.Input<String?>? odbNetwork;
  /// The name of the OdbSubnet associated with the VM Cluster for
  /// IP allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String?>? odbSubnet;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Various properties and settings associated with Exadata VM cluster.
  /// Structure is documented below.
  final pulumi.Input<CloudVmClusterProperties?>? properties;

  /// Creates a new [CloudVmClusterArgs].
  /// [backupOdbSubnet] The name of the backup OdbSubnet associated with the VM Cluster.
  /// [backupSubnetCidr] CIDR range of the backup subnet.
  /// [cidr] Network settings. CIDR to use for cluster IP allocation.
  /// [cloudVmClusterId] The ID of the VM Cluster to create. This value is restricted
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether Terraform will be prevented from destroying the cluster. Deleting this cluster via terraform destroy or pulumi up will only succeed if this field is false in the Terraform state.
  /// [displayName] User friendly name for this resource.
  /// [exadataInfrastructure] The name of the Exadata Infrastructure resource on which VM cluster
  /// [exascaleDbStorageVault] The name of ExascaleDbStorageVault associated with the VM Cluster.
  /// [labels] Labels or tags associated with the VM Cluster.
  /// [location] Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/DbNode`.
  /// [network] The name of the VPC network.
  /// [odbNetwork] The name of the OdbNetwork associated with the VM Cluster.
  /// [odbSubnet] The name of the OdbSubnet associated with the VM Cluster for
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] Various properties and settings associated with Exadata VM cluster.
  const CloudVmClusterArgs({
    this.backupOdbSubnet,
    this.backupSubnetCidr,
    this.cidr,
    required this.cloudVmClusterId,
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    required this.exadataInfrastructure,
    this.exascaleDbStorageVault,
    this.labels,
    required this.location,
    this.network,
    this.odbNetwork,
    this.odbSubnet,
    this.project,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupOdbSubnet': ?backupOdbSubnet,
      'backupSubnetCidr': ?backupSubnetCidr,
      'cidr': ?cidr,
      'cloudVmClusterId': cloudVmClusterId,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'exadataInfrastructure': exadataInfrastructure,
      'exascaleDbStorageVault': ?exascaleDbStorageVault,
      'labels': ?labels,
      'location': location,
      'network': ?network,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'project': ?project,
      'properties': ?pulumi.Input.mapOptionalInputValue<CloudVmClusterProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory CloudVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterArgs(
      backupOdbSubnet: (() { final guardedValue = map['backupOdbSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupSubnetCidr: (() { final guardedValue = map['backupSubnetCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudVmClusterId: pulumi.Input.fromValue(map['cloudVmClusterId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exadataInfrastructure: pulumi.Input.fromValue(map['exadataInfrastructure'] as String),
      exascaleDbStorageVault: (() { final guardedValue = map['exascaleDbStorageVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetwork: (() { final guardedValue = map['odbNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbSubnet: (() { final guardedValue = map['odbSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudVmClusterProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
