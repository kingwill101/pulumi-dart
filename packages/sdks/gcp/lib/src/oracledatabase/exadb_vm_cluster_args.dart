// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exadb_vm_cluster_properties.dart';

/// {@template pulumi_oracledatabase_exadb_vm_cluster_exadb_vm_cluster_args_doc}
/// The set of arguments for ExadbVmCluster.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_exadb_vm_cluster_exadb_vm_cluster_args_doc}
class ExadbVmClusterArgs {
  /// The name of the backup OdbSubnet associated with the ExadbVmCluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String> backupOdbSubnet;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  final pulumi.Input<bool>? deletionProtection;
  /// The display name for the ExadbVmCluster. The name does not have to
  /// be unique within your project. The name must be 1-255 characters long and
  /// can only contain alphanumeric characters.
  final pulumi.Input<String> displayName;
  /// The ID of the ExadbVmCluster to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  final pulumi.Input<String> exadbVmClusterId;
  /// The labels or tags associated with the ExadbVmCluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The name of the OdbNetwork associated with the ExadbVmCluster.
  /// Format: projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the OdbSubnet.
  final pulumi.Input<String>? odbNetwork;
  /// The name of the OdbSubnet associated with the ExadbVmCluster for IP
  /// allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String> odbSubnet;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The properties of an ExadbVmCluster.
  /// Structure is documented below.
  final pulumi.Input<ExadbVmClusterProperties> properties;

  /// Creates a new [ExadbVmClusterArgs].
  /// [backupOdbSubnet] The name of the backup OdbSubnet associated with the ExadbVmCluster.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  /// [displayName] The display name for the ExadbVmCluster. The name does not have to
  /// [exadbVmClusterId] The ID of the ExadbVmCluster to create. This value is
  /// [labels] The labels or tags associated with the ExadbVmCluster.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [odbNetwork] The name of the OdbNetwork associated with the ExadbVmCluster.
  /// [odbSubnet] The name of the OdbSubnet associated with the ExadbVmCluster for IP
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] The properties of an ExadbVmCluster.
  const ExadbVmClusterArgs({
    required this.backupOdbSubnet,
    this.deletionPolicy,
    this.deletionProtection,
    required this.displayName,
    required this.exadbVmClusterId,
    this.labels,
    required this.location,
    this.odbNetwork,
    required this.odbSubnet,
    this.project,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupOdbSubnet': backupOdbSubnet,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': displayName,
      'exadbVmClusterId': exadbVmClusterId,
      'labels': ?labels,
      'location': location,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': odbSubnet,
      'project': ?project,
      'properties': pulumi.Input.mapInputValue<ExadbVmClusterProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory ExadbVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return ExadbVmClusterArgs(
      backupOdbSubnet: pulumi.Input.fromValue(map['backupOdbSubnet'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      exadbVmClusterId: pulumi.Input.fromValue(map['exadbVmClusterId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      odbNetwork: (() { final guardedValue = map['odbNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbSubnet: pulumi.Input.fromValue(map['odbSubnet'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(ExadbVmClusterProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}
