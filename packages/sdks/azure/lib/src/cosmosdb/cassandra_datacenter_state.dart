// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CassandraDatacenter resources.
class CassandraDatacenterState {
  /// Determines whether availability zones are enabled. Defaults to `true`.
  final pulumi.Input<bool>? availabilityZonesEnabled;
  /// The key URI of the customer key to use for the encryption of the backup Storage Account.
  final pulumi.Input<String>? backupStorageCustomerKeyUri;
  /// The fragment of the cassandra.yaml configuration file to be included in the cassandra.yaml for all nodes in this Cassandra Datacenter. The fragment should be Base64 encoded and only a subset of keys is allowed.
  final pulumi.Input<String>? base64EncodedYamlFragment;
  /// The ID of the Cassandra Cluster. Changing this forces a new Cassandra Datacenter to be created.
  final pulumi.Input<String>? cassandraClusterId;
  /// The ID of the delegated management subnet for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created.
  final pulumi.Input<String>? delegatedManagementSubnetId;
  /// Determines the number of p30 disks that are attached to each node.
  final pulumi.Input<int>? diskCount;
  /// The Disk SKU that is used for this Cassandra Datacenter. Defaults to `P30`.
  final pulumi.Input<String>? diskSku;
  /// The Azure Region where the Cassandra Datacenter should exist. Changing this forces a new Cassandra Datacenter to be created.
  final pulumi.Input<String>? location;
  /// The key URI of the customer key to use for the encryption of the Managed Disk.
  final pulumi.Input<String>? managedDiskCustomerKeyUri;
  /// The name which should be used for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created.
  final pulumi.Input<String>? name;
  /// The number of nodes the Cassandra Datacenter should have. The number should be equal or greater than `3`. Defaults to `3`.
  final pulumi.Input<int>? nodeCount;
  /// A list of IP Address for the seed nodes in this Cassandra Datacenter.
  final pulumi.Input<List<String>>? seedNodeIpAddresses;
  /// Determines the selected sku. Defaults to `Standard_E16s_v5`.
  ///
  /// > **Note:** In v4.0 of the provider the `sku_name` will have a default value of `Standard_E16s_v5`.
  final pulumi.Input<String>? skuName;

  /// Creates a new [CassandraDatacenterState].
  /// [availabilityZonesEnabled] Determines whether availability zones are enabled. Defaults to `true`.
  /// [backupStorageCustomerKeyUri] The key URI of the customer key to use for the encryption of the backup Storage Account.
  /// [base64EncodedYamlFragment] The fragment of the cassandra.yaml configuration file to be included in the cassandra.yaml for all nodes in this Cassandra Datacenter. The fragment should be Base64 encoded and only a subset of keys is allowed.
  /// [cassandraClusterId] The ID of the Cassandra Cluster. Changing this forces a new Cassandra Datacenter to be created.
  /// [delegatedManagementSubnetId] The ID of the delegated management subnet for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created.
  /// [diskCount] Determines the number of p30 disks that are attached to each node.
  /// [diskSku] The Disk SKU that is used for this Cassandra Datacenter. Defaults to `P30`.
  /// [location] The Azure Region where the Cassandra Datacenter should exist. Changing this forces a new Cassandra Datacenter to be created.
  /// [managedDiskCustomerKeyUri] The key URI of the customer key to use for the encryption of the Managed Disk.
  /// [name] The name which should be used for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created.
  /// [nodeCount] The number of nodes the Cassandra Datacenter should have. The number should be equal or greater than `3`. Defaults to `3`.
  /// [seedNodeIpAddresses] A list of IP Address for the seed nodes in this Cassandra Datacenter.
  /// [skuName] Determines the selected sku. Defaults to `Standard_E16s_v5`.
  CassandraDatacenterState({
    pulumi.Output<bool>? availabilityZonesEnabled,
    pulumi.Output<String>? backupStorageCustomerKeyUri,
    pulumi.Output<String>? base64EncodedYamlFragment,
    pulumi.Output<String>? cassandraClusterId,
    pulumi.Output<String>? delegatedManagementSubnetId,
    pulumi.Output<int>? diskCount,
    pulumi.Output<String>? diskSku,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedDiskCustomerKeyUri,
    pulumi.Output<String>? name,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<List<String>>? seedNodeIpAddresses,
    pulumi.Output<String>? skuName,
  }) :
      availabilityZonesEnabled = pulumi.Input.asOptionalInput<bool>(availabilityZonesEnabled),
      backupStorageCustomerKeyUri = pulumi.Input.asOptionalInput<String>(backupStorageCustomerKeyUri),
      base64EncodedYamlFragment = pulumi.Input.asOptionalInput<String>(base64EncodedYamlFragment),
      cassandraClusterId = pulumi.Input.asOptionalInput<String>(cassandraClusterId),
      delegatedManagementSubnetId = pulumi.Input.asOptionalInput<String>(delegatedManagementSubnetId),
      diskCount = pulumi.Input.asOptionalInput<int>(diskCount),
      diskSku = pulumi.Input.asOptionalInput<String>(diskSku),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedDiskCustomerKeyUri = pulumi.Input.asOptionalInput<String>(managedDiskCustomerKeyUri),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      seedNodeIpAddresses = pulumi.Input.asOptionalInput<List<String>>(seedNodeIpAddresses),
      skuName = pulumi.Input.asOptionalInput<String>(skuName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZonesEnabled': ?availabilityZonesEnabled,
      'backupStorageCustomerKeyUri': ?backupStorageCustomerKeyUri,
      'base64EncodedYamlFragment': ?base64EncodedYamlFragment,
      'cassandraClusterId': ?cassandraClusterId,
      'delegatedManagementSubnetId': ?delegatedManagementSubnetId,
      'diskCount': ?diskCount,
      'diskSku': ?diskSku,
      'location': ?location,
      'managedDiskCustomerKeyUri': ?managedDiskCustomerKeyUri,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'seedNodeIpAddresses': ?seedNodeIpAddresses,
      'skuName': ?skuName,
    };
  }

  factory CassandraDatacenterState.fromMap(Map<String, dynamic> map) {
    return CassandraDatacenterState(
      availabilityZonesEnabled: map['availabilityZonesEnabled'] == null ? null : pulumi.Output.create<bool>(map['availabilityZonesEnabled'] as bool),
      backupStorageCustomerKeyUri: map['backupStorageCustomerKeyUri'] == null ? null : pulumi.Output.create<String>(map['backupStorageCustomerKeyUri'] as String),
      base64EncodedYamlFragment: map['base64EncodedYamlFragment'] == null ? null : pulumi.Output.create<String>(map['base64EncodedYamlFragment'] as String),
      cassandraClusterId: map['cassandraClusterId'] == null ? null : pulumi.Output.create<String>(map['cassandraClusterId'] as String),
      delegatedManagementSubnetId: map['delegatedManagementSubnetId'] == null ? null : pulumi.Output.create<String>(map['delegatedManagementSubnetId'] as String),
      diskCount: map['diskCount'] == null ? null : pulumi.Output.create<int>(map['diskCount'] as int),
      diskSku: map['diskSku'] == null ? null : pulumi.Output.create<String>(map['diskSku'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedDiskCustomerKeyUri: map['managedDiskCustomerKeyUri'] == null ? null : pulumi.Output.create<String>(map['managedDiskCustomerKeyUri'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      seedNodeIpAddresses: map['seedNodeIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['seedNodeIpAddresses'] as List).cast<String>()),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
    );
  }
}

