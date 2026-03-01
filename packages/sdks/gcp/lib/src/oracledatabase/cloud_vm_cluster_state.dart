// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_vm_cluster_properties.dart';

/// Input properties used for looking up and filtering CloudVmCluster resources.
class CloudVmClusterState {
  /// The name of the backup OdbSubnet associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String>? backupOdbSubnet;
  /// CIDR range of the backup subnet.
  final pulumi.Input<String>? backupSubnetCidr;
  /// Network settings. CIDR to use for cluster IP allocation.
  final pulumi.Input<String>? cidr;
  /// The ID of the VM Cluster to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String>? cloudVmClusterId;
  /// The date and time that the VM cluster was created.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<bool>? deletionProtection;
  /// User friendly name for this resource.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The name of the Exadata Infrastructure resource on which VM cluster
  /// resource is created, in the following format:
  /// projects/{project}/locations/{region}/cloudExadataInfrastuctures/{cloud_extradata_infrastructure}
  final pulumi.Input<String>? exadataInfrastructure;
  /// GCP location where Oracle Exadata is hosted. It is same as GCP Oracle zone
  /// of Exadata infrastructure.
  final pulumi.Input<String>? gcpOracleZone;
  /// Labels or tags associated with the VM Cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/DbNode`.
  final pulumi.Input<String>? location;
  /// Identifier. The name of the VM Cluster resource with the format:
  /// projects/{project}/locations/{region}/cloudVmClusters/{cloud_vm_cluster}
  final pulumi.Input<String>? name;
  /// The name of the VPC network.
  /// Format: projects/{project}/global/networks/{network}
  final pulumi.Input<String>? network;
  /// The name of the OdbNetwork associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the odb_subnet and backup_odb_subnet.
  final pulumi.Input<String>? odbNetwork;
  /// The name of the OdbSubnet associated with the VM Cluster for
  /// IP allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String>? odbSubnet;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Various properties and settings associated with Exadata VM cluster.
  /// Structure is documented below.
  final pulumi.Input<CloudVmClusterProperties>? properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Creates a new [CloudVmClusterState].
  /// [backupOdbSubnet] The name of the backup OdbSubnet associated with the VM Cluster.
  /// [backupSubnetCidr] CIDR range of the backup subnet.
  /// [cidr] Network settings. CIDR to use for cluster IP allocation.
  /// [cloudVmClusterId] The ID of the VM Cluster to create. This value is restricted
  /// [createTime] The date and time that the VM cluster was created.
  /// [deletionProtection] Optional.
  /// [displayName] User friendly name for this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [exadataInfrastructure] The name of the Exadata Infrastructure resource on which VM cluster
  /// [gcpOracleZone] GCP location where Oracle Exadata is hosted. It is same as GCP Oracle zone
  /// [labels] Labels or tags associated with the VM Cluster.
  /// [location] Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/DbNode`.
  /// [name] Identifier. The name of the VM Cluster resource with the format:
  /// [network] The name of the VPC network.
  /// [odbNetwork] The name of the OdbNetwork associated with the VM Cluster.
  /// [odbSubnet] The name of the OdbSubnet associated with the VM Cluster for
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] Various properties and settings associated with Exadata VM cluster.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  CloudVmClusterState({
    pulumi.Output<String>? backupOdbSubnet,
    pulumi.Output<String>? backupSubnetCidr,
    pulumi.Output<String>? cidr,
    pulumi.Output<String>? cloudVmClusterId,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? exadataInfrastructure,
    pulumi.Output<String>? gcpOracleZone,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? odbNetwork,
    pulumi.Output<String>? odbSubnet,
    pulumi.Output<String>? project,
    pulumi.Output<CloudVmClusterProperties>? properties,
    pulumi.Output<Map<String, String>>? pulumiLabels,
  }) :
      backupOdbSubnet = pulumi.Input.asOptionalInput<String>(backupOdbSubnet),
      backupSubnetCidr = pulumi.Input.asOptionalInput<String>(backupSubnetCidr),
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      cloudVmClusterId = pulumi.Input.asOptionalInput<String>(cloudVmClusterId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      exadataInfrastructure = pulumi.Input.asOptionalInput<String>(exadataInfrastructure),
      gcpOracleZone = pulumi.Input.asOptionalInput<String>(gcpOracleZone),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      odbNetwork = pulumi.Input.asOptionalInput<String>(odbNetwork),
      odbSubnet = pulumi.Input.asOptionalInput<String>(odbSubnet),
      project = pulumi.Input.asOptionalInput<String>(project),
      properties = pulumi.Input.asOptionalInput<CloudVmClusterProperties>(properties),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupOdbSubnet': ?backupOdbSubnet,
      'backupSubnetCidr': ?backupSubnetCidr,
      'cidr': ?cidr,
      'cloudVmClusterId': ?cloudVmClusterId,
      'createTime': ?createTime,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'exadataInfrastructure': ?exadataInfrastructure,
      'gcpOracleZone': ?gcpOracleZone,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'project': ?project,
      'properties': ?pulumi.Input.mapOptionalInputValue<CloudVmClusterProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory CloudVmClusterState.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterState(
      backupOdbSubnet: map['backupOdbSubnet'] == null ? null : pulumi.Output.create<String>(map['backupOdbSubnet'] as String),
      backupSubnetCidr: map['backupSubnetCidr'] == null ? null : pulumi.Output.create<String>(map['backupSubnetCidr'] as String),
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      cloudVmClusterId: map['cloudVmClusterId'] == null ? null : pulumi.Output.create<String>(map['cloudVmClusterId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      exadataInfrastructure: map['exadataInfrastructure'] == null ? null : pulumi.Output.create<String>(map['exadataInfrastructure'] as String),
      gcpOracleZone: map['gcpOracleZone'] == null ? null : pulumi.Output.create<String>(map['gcpOracleZone'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      odbNetwork: map['odbNetwork'] == null ? null : pulumi.Output.create<String>(map['odbNetwork'] as String),
      odbSubnet: map['odbSubnet'] == null ? null : pulumi.Output.create<String>(map['odbSubnet'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<CloudVmClusterProperties>(CloudVmClusterProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
    );
  }
}

