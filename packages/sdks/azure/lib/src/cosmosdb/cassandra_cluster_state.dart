// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_cluster_identity.dart';

/// Input properties used for looking up and filtering CassandraCluster resources.
class CassandraClusterState {
  /// The authentication method that is used to authenticate clients. Possible values are `None` and `Cassandra`. Defaults to `Cassandra`.
  final pulumi.Input<String>? authenticationMethod;
  /// A list of TLS certificates that is used to authorize client connecting to the Cassandra Cluster.
  final pulumi.Input<List<String>>? clientCertificatePems;
  /// The initial admin password for this Cassandra Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? defaultAdminPassword;
  /// The ID of the delegated management subnet for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created.
  final pulumi.Input<String>? delegatedManagementSubnetId;
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
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The version of Cassandra what the Cluster converges to run. Possible values are `3.11`, `4.0`, `4.1` and `5.0`. Defaults to `3.11`. Changing this forces a new Cassandra Cluster to be created.
  final pulumi.Input<String>? version;

  /// Creates a new [CassandraClusterState].
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
  CassandraClusterState({
    this.authenticationMethod,
    this.clientCertificatePems,
    this.defaultAdminPassword,
    this.delegatedManagementSubnetId,
    this.externalGossipCertificatePems,
    this.externalSeedNodeIpAddresses,
    this.hoursBetweenBackups,
    this.identity,
    this.location,
    this.name,
    this.repairEnabled,
    this.resourceGroupName,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMethod': ?authenticationMethod,
      'clientCertificatePems': ?clientCertificatePems,
      'defaultAdminPassword': ?defaultAdminPassword,
      'delegatedManagementSubnetId': ?delegatedManagementSubnetId,
      'externalGossipCertificatePems': ?externalGossipCertificatePems,
      'externalSeedNodeIpAddresses': ?externalSeedNodeIpAddresses,
      'hoursBetweenBackups': ?hoursBetweenBackups,
      'identity': ?pulumi.Input.mapOptionalInputValue<CassandraClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'repairEnabled': ?repairEnabled,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory CassandraClusterState.fromMap(Map<String, dynamic> map) {
    return CassandraClusterState(
      authenticationMethod: map['authenticationMethod'] == null ? null : (map['authenticationMethod'] as String).input(),
      clientCertificatePems: map['clientCertificatePems'] == null ? null : ((map['clientCertificatePems'] as List).cast<String>()).input(),
      defaultAdminPassword: map['defaultAdminPassword'] == null ? null : (map['defaultAdminPassword'] as String).input(),
      delegatedManagementSubnetId: map['delegatedManagementSubnetId'] == null ? null : (map['delegatedManagementSubnetId'] as String).input(),
      externalGossipCertificatePems: map['externalGossipCertificatePems'] == null ? null : ((map['externalGossipCertificatePems'] as List).cast<String>()).input(),
      externalSeedNodeIpAddresses: map['externalSeedNodeIpAddresses'] == null ? null : ((map['externalSeedNodeIpAddresses'] as List).cast<String>()).input(),
      hoursBetweenBackups: map['hoursBetweenBackups'] == null ? null : (map['hoursBetweenBackups'] as int).input(),
      identity: map['identity'] == null ? null : (CassandraClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      repairEnabled: map['repairEnabled'] == null ? null : (map['repairEnabled'] as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

