// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_cluster_identity.dart';

/// {@template pulumi_cosmosdb_cassandra_cluster_cassandra_cluster_args_doc}
/// The set of arguments for CassandraCluster.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_cassandra_cluster_cassandra_cluster_args_doc}
class CassandraClusterArgs {
  /// The authentication method that is used to authenticate clients. Possible values are `None` and `Cassandra`. Defaults to `Cassandra`.
  final pulumi.Input<String>? authenticationMethod;
  /// A list of TLS certificates that is used to authorize client connecting to the Cassandra Cluster.
  final pulumi.Input<List<String>>? clientCertificatePems;
  /// The initial admin password for this Cassandra Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> defaultAdminPassword;
  /// The ID of the delegated management subnet for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created.
  final pulumi.Input<String> delegatedManagementSubnetId;
  /// A list of TLS certificates that is used to authorize gossip from unmanaged Cassandra Data Center.
  final pulumi.Input<List<String>>? externalGossipCertificatePems;
  /// A list of IP Addresses of the seed nodes in unmanaged the Cassandra Data Center which will be added to the seed node lists of all managed nodes.
  final pulumi.Input<List<String>>? externalSeedNodeIpAddresses;
  /// The number of hours to wait between taking a backup of the Cassandra Cluster. Defaults to `24`.
  ///
  /// > **Note:** To disable this feature, set this property to `0`.
  final pulumi.Input<int>? hoursBetweenBackups;
  /// An `identity` block as defined below.
  final pulumi.Input<CassandraClusterIdentity>? identity;
  /// The Azure Region where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created.
  final pulumi.Input<String>? name;
  /// Is the automatic repair enabled on the Cassandra Cluster? Defaults to `true`.
  final pulumi.Input<bool>? repairEnabled;
  /// The name of the Resource Group where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The version of Cassandra what the Cluster converges to run. Possible values are `3.11`, `4.0`, `4.1` and `5.0`. Defaults to `3.11`. Changing this forces a new Cassandra Cluster to be created.
  final pulumi.Input<String>? version;

  /// Creates a new [CassandraClusterArgs].
  /// [authenticationMethod] The authentication method that is used to authenticate clients. Possible values are `None` and `Cassandra`. Defaults to `Cassandra`.
  /// [clientCertificatePems] A list of TLS certificates that is used to authorize client connecting to the Cassandra Cluster.
  /// [defaultAdminPassword] The initial admin password for this Cassandra Cluster. Changing this forces a new resource to be created.
  /// [delegatedManagementSubnetId] The ID of the delegated management subnet for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created.
  /// [externalGossipCertificatePems] A list of TLS certificates that is used to authorize gossip from unmanaged Cassandra Data Center.
  /// [externalSeedNodeIpAddresses] A list of IP Addresses of the seed nodes in unmanaged the Cassandra Data Center which will be added to the seed node lists of all managed nodes.
  /// [hoursBetweenBackups] The number of hours to wait between taking a backup of the Cassandra Cluster. Defaults to `24`.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created.
  /// [name] The name which should be used for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created.
  /// [repairEnabled] Is the automatic repair enabled on the Cassandra Cluster? Defaults to `true`.
  /// [resourceGroupName] The name of the Resource Group where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created.
  /// [tags] A mapping of tags assigned to the resource.
  /// [version] The version of Cassandra what the Cluster converges to run. Possible values are `3.11`, `4.0`, `4.1` and `5.0`. Defaults to `3.11`. Changing this forces a new Cassandra Cluster to be created.
  CassandraClusterArgs({
    pulumi.Output<String>? authenticationMethod,
    pulumi.Output<List<String>>? clientCertificatePems,
    required pulumi.Output<String> defaultAdminPassword,
    required pulumi.Output<String> delegatedManagementSubnetId,
    pulumi.Output<List<String>>? externalGossipCertificatePems,
    pulumi.Output<List<String>>? externalSeedNodeIpAddresses,
    pulumi.Output<int>? hoursBetweenBackups,
    pulumi.Output<CassandraClusterIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? repairEnabled,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      authenticationMethod = pulumi.Input.asOptionalInput<String>(authenticationMethod),
      clientCertificatePems = pulumi.Input.asOptionalInput<List<String>>(clientCertificatePems),
      defaultAdminPassword = pulumi.Input.asInput<String>(defaultAdminPassword),
      delegatedManagementSubnetId = pulumi.Input.asInput<String>(delegatedManagementSubnetId),
      externalGossipCertificatePems = pulumi.Input.asOptionalInput<List<String>>(externalGossipCertificatePems),
      externalSeedNodeIpAddresses = pulumi.Input.asOptionalInput<List<String>>(externalSeedNodeIpAddresses),
      hoursBetweenBackups = pulumi.Input.asOptionalInput<int>(hoursBetweenBackups),
      identity = pulumi.Input.asOptionalInput<CassandraClusterIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      repairEnabled = pulumi.Input.asOptionalInput<bool>(repairEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMethod': ?authenticationMethod,
      'clientCertificatePems': ?clientCertificatePems,
      'defaultAdminPassword': defaultAdminPassword,
      'delegatedManagementSubnetId': delegatedManagementSubnetId,
      'externalGossipCertificatePems': ?externalGossipCertificatePems,
      'externalSeedNodeIpAddresses': ?externalSeedNodeIpAddresses,
      'hoursBetweenBackups': ?hoursBetweenBackups,
      'identity': ?pulumi.Input.mapOptionalInputValue<CassandraClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'repairEnabled': ?repairEnabled,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory CassandraClusterArgs.fromMap(Map<String, dynamic> map) {
    return CassandraClusterArgs(
      authenticationMethod: map['authenticationMethod'] == null ? null : pulumi.Output.create<String>(map['authenticationMethod'] as String),
      clientCertificatePems: map['clientCertificatePems'] == null ? null : pulumi.Output.create<List<String>>((map['clientCertificatePems'] as List).cast<String>()),
      defaultAdminPassword: pulumi.Output.create<String>(map['defaultAdminPassword'] as String),
      delegatedManagementSubnetId: pulumi.Output.create<String>(map['delegatedManagementSubnetId'] as String),
      externalGossipCertificatePems: map['externalGossipCertificatePems'] == null ? null : pulumi.Output.create<List<String>>((map['externalGossipCertificatePems'] as List).cast<String>()),
      externalSeedNodeIpAddresses: map['externalSeedNodeIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['externalSeedNodeIpAddresses'] as List).cast<String>()),
      hoursBetweenBackups: map['hoursBetweenBackups'] == null ? null : pulumi.Output.create<int>(map['hoursBetweenBackups'] as int),
      identity: map['identity'] == null ? null : pulumi.Output.create<CassandraClusterIdentity>(CassandraClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      repairEnabled: map['repairEnabled'] == null ? null : pulumi.Output.create<bool>(map['repairEnabled'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

