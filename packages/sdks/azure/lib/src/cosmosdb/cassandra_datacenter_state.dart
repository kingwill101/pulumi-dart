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
  /// &gt; **Note:** In v4.0 of the provider the `sku_name` will have a default value of `Standard_E16s_v5`.
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
    this.availabilityZonesEnabled,
    this.backupStorageCustomerKeyUri,
    this.base64EncodedYamlFragment,
    this.cassandraClusterId,
    this.delegatedManagementSubnetId,
    this.diskCount,
    this.diskSku,
    this.location,
    this.managedDiskCustomerKeyUri,
    this.name,
    this.nodeCount,
    this.seedNodeIpAddresses,
    this.skuName,
  });

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
      availabilityZonesEnabled: (() {
        final guardedValue = map['availabilityZonesEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      backupStorageCustomerKeyUri: (() {
        final guardedValue = map['backupStorageCustomerKeyUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      base64EncodedYamlFragment: (() {
        final guardedValue = map['base64EncodedYamlFragment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cassandraClusterId: (() {
        final guardedValue = map['cassandraClusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      delegatedManagementSubnetId: (() {
        final guardedValue = map['delegatedManagementSubnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskCount: (() {
        final guardedValue = map['diskCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      diskSku: (() {
        final guardedValue = map['diskSku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedDiskCustomerKeyUri: (() {
        final guardedValue = map['managedDiskCustomerKeyUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeCount: (() {
        final guardedValue = map['nodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      seedNodeIpAddresses: (() {
        final guardedValue = map['seedNodeIpAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      skuName: (() {
        final guardedValue = map['skuName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
