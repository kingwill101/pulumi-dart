// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exadb_vm_cluster_identity_connector.dart';
import 'exadb_vm_cluster_properties.dart';

/// Input properties used for looking up and filtering ExadbVmCluster resources.
class ExadbVmClusterState {
  /// The name of the backup OdbSubnet associated with the ExadbVmCluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String>? backupOdbSubnet;
  /// The date and time that the ExadbVmCluster was created.
  final pulumi.Input<String>? createTime;
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
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The ID of the subscription entitlement associated with the ExadbVmCluster.
  final pulumi.Input<String>? entitlementId;
  /// The ID of the ExadbVmCluster to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  final pulumi.Input<String>? exadbVmClusterId;
  /// The GCP Oracle zone where Oracle ExadbVmCluster is hosted.
  /// Example: us-east4-b-r2.
  /// During creation, the system will pick the zone assigned to the
  /// ExascaleDbStorageVault.
  final pulumi.Input<String>? gcpOracleZone;
  /// The identity connector details which will allow OCI to securely access
  /// the resources in the customer project.
  /// Structure is documented below.
  final pulumi.Input<List<ExadbVmClusterIdentityConnector>>? identityConnectors;
  /// The labels or tags associated with the ExadbVmCluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The name of the ExadbVmCluster resource in the following format:
  /// projects/{project}/locations/{region}/exadbVmClusters/{exadb_vm_cluster}
  final pulumi.Input<String>? name;
  /// The name of the OdbNetwork associated with the ExadbVmCluster.
  /// Format: projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the OdbSubnet.
  final pulumi.Input<String>? odbNetwork;
  /// The name of the OdbSubnet associated with the ExadbVmCluster for IP
  /// allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String>? odbSubnet;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The properties of an ExadbVmCluster.
  /// Structure is documented below.
  final pulumi.Input<ExadbVmClusterProperties>? properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Creates a new [ExadbVmClusterState].
  /// [backupOdbSubnet] The name of the backup OdbSubnet associated with the ExadbVmCluster.
  /// [createTime] The date and time that the ExadbVmCluster was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  /// [displayName] The display name for the ExadbVmCluster. The name does not have to
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [entitlementId] The ID of the subscription entitlement associated with the ExadbVmCluster.
  /// [exadbVmClusterId] The ID of the ExadbVmCluster to create. This value is
  /// [gcpOracleZone] The GCP Oracle zone where Oracle ExadbVmCluster is hosted.
  /// [identityConnectors] The identity connector details which will allow OCI to securely access
  /// [labels] The labels or tags associated with the ExadbVmCluster.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The name of the ExadbVmCluster resource in the following format:
  /// [odbNetwork] The name of the OdbNetwork associated with the ExadbVmCluster.
  /// [odbSubnet] The name of the OdbSubnet associated with the ExadbVmCluster for IP
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] The properties of an ExadbVmCluster.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  const ExadbVmClusterState({
    this.backupOdbSubnet,
    this.createTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    this.effectiveLabels,
    this.entitlementId,
    this.exadbVmClusterId,
    this.gcpOracleZone,
    this.identityConnectors,
    this.labels,
    this.location,
    this.name,
    this.odbNetwork,
    this.odbSubnet,
    this.project,
    this.properties,
    this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupOdbSubnet': ?backupOdbSubnet,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'entitlementId': ?entitlementId,
      'exadbVmClusterId': ?exadbVmClusterId,
      'gcpOracleZone': ?gcpOracleZone,
      'identityConnectors': ?pulumi.Input.mapOptionalInputValue<List<ExadbVmClusterIdentityConnector>, List<Map<String, dynamic>>>(identityConnectors, (value) => pulumi.Input.encodeList<ExadbVmClusterIdentityConnector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'project': ?project,
      'properties': ?pulumi.Input.mapOptionalInputValue<ExadbVmClusterProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory ExadbVmClusterState.fromMap(Map<String, dynamic> map) {
    return ExadbVmClusterState(
      backupOdbSubnet: (() { final guardedValue = map['backupOdbSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      entitlementId: (() { final guardedValue = map['entitlementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exadbVmClusterId: (() { final guardedValue = map['exadbVmClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcpOracleZone: (() { final guardedValue = map['gcpOracleZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityConnectors: (() { final guardedValue = map['identityConnectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExadbVmClusterIdentityConnector>(guardedValue, (value) => ExadbVmClusterIdentityConnector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetwork: (() { final guardedValue = map['odbNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbSubnet: (() { final guardedValue = map['odbSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExadbVmClusterProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
