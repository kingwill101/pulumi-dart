// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_cluster_connection_string.dart';
import 'mongo_cluster_customer_managed_key.dart';
import 'mongo_cluster_identity.dart';
import 'mongo_cluster_restore.dart';

/// Input properties used for looking up and filtering MongoCluster resources.
class MongoClusterState {
  /// The Password associated with the `administrator_username` for the MongoDB Cluster.
  final pulumi.Input<String>? administratorPassword;
  /// The administrator username of the MongoDB Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? administratorUsername;
  /// A list of allowed authentication modes for the MongoDB Cluster. Possible values are `NativeAuth` and `MicrosoftEntraID`.
  final pulumi.Input<List<String>>? authenticationMethods;
  /// The compute tier to assign to the MongoDB Cluster. Possible values are `Free`, `M10`, `M20`, `M25`, `M30`, `M40`, `M50`, `M60`, `M80`, and `M200`.
  final pulumi.Input<String>? computeTier;
  /// One or more `connection_strings` blocks as defined below.
  final pulumi.Input<List<MongoClusterConnectionString>>? connectionStrings;
  /// The creation mode for the MongoDB Cluster. Possible values are `Default`, `GeoReplica` and `PointInTimeRestore`. Defaults to `Default`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? createMode;
  /// A `customer_managed_key` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<MongoClusterCustomerManagedKey>? customerManagedKey;
  /// Is the Data API for the MongoDB Cluster enabled? Defaults to `false`.
  ///
  /// > **Note:** `data_api_mode_enabled` can only be set when `create_mode` is `Default`. Once enabled, it can only be disabled by recreating the resource.
  final pulumi.Input<bool>? dataApiModeEnabled;
  /// The high availability mode for the MongoDB Cluster. Possibles values are `Disabled` and `ZoneRedundantPreferred`.
  final pulumi.Input<String>? highAvailabilityMode;
  /// An `identity` block as detailed below.
  ///
  /// > **Note:** When adding or removing `identity`, a resource recreation will be triggered.
  final pulumi.Input<MongoClusterIdentity>? identity;
  /// The supported Azure location where the MongoDB Cluster exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for the MongoDB Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The preview features that can be enabled on the MongoDB Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? previewFeatures;
  /// The Public Network Access setting for the MongoDB Cluster. Possibles values are `Disabled` and `Enabled`. Defaults to `Enabled`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group in which to create the MongoDB Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `restore` block as defined below. Required when `create_mode` is set to `PointInTimeRestore`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When `PointInTimeRestore` is enabled, service API will also assign a value to `source_server_id`. The user has to explicitly set this property in the Terraform configuration or handle it using `ignore_changes`.
  final pulumi.Input<MongoClusterRestore>? restore;
  /// The Number of shards to provision on the MongoDB Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<int>? shardCount;
  /// The location of the source MongoDB Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceLocation;
  /// The ID of the replication source MongoDB Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceServerId;
  /// The size of the data disk space for the MongoDB Cluster.
  final pulumi.Input<int>? storageSizeInGb;
  /// The storage type for the MongoDB Cluster. Possible values are `PremiumSSD` and `PremiumSSDv2`. Defaults to `PremiumSSD`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageType;
  /// A mapping of tags to assign to the MongoDB Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// The version for the MongoDB Cluster. Possibles values are `5.0`, `6.0`, `7.0` and `8.0`.
  final pulumi.Input<String>? version;

  /// Creates a new [MongoClusterState].
  /// [administratorPassword] The Password associated with the `administrator_username` for the MongoDB Cluster.
  /// [administratorUsername] The administrator username of the MongoDB Cluster. Changing this forces a new resource to be created.
  /// [authenticationMethods] A list of allowed authentication modes for the MongoDB Cluster. Possible values are `NativeAuth` and `MicrosoftEntraID`.
  /// [computeTier] The compute tier to assign to the MongoDB Cluster. Possible values are `Free`, `M10`, `M20`, `M25`, `M30`, `M40`, `M50`, `M60`, `M80`, and `M200`.
  /// [connectionStrings] One or more `connection_strings` blocks as defined below.
  /// [createMode] The creation mode for the MongoDB Cluster. Possible values are `Default`, `GeoReplica` and `PointInTimeRestore`. Defaults to `Default`. Changing this forces a new resource to be created.
  /// [customerManagedKey] A `customer_managed_key` block as defined below. Changing this forces a new resource to be created.
  /// [dataApiModeEnabled] Is the Data API for the MongoDB Cluster enabled? Defaults to `false`.
  /// [highAvailabilityMode] The high availability mode for the MongoDB Cluster. Possibles values are `Disabled` and `ZoneRedundantPreferred`.
  /// [identity] An `identity` block as detailed below.
  /// [location] The supported Azure location where the MongoDB Cluster exists. Changing this forces a new resource to be created.
  /// [name] The name which should be used for the MongoDB Cluster. Changing this forces a new resource to be created.
  /// [previewFeatures] The preview features that can be enabled on the MongoDB Cluster. Changing this forces a new resource to be created.
  /// [publicNetworkAccess] The Public Network Access setting for the MongoDB Cluster. Possibles values are `Disabled` and `Enabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the resource group in which to create the MongoDB Cluster. Changing this forces a new resource to be created.
  /// [restore] A `restore` block as defined below. Required when `create_mode` is set to `PointInTimeRestore`. Changing this forces a new resource to be created.
  /// [shardCount] The Number of shards to provision on the MongoDB Cluster. Changing this forces a new resource to be created.
  /// [sourceLocation] The location of the source MongoDB Cluster. Changing this forces a new resource to be created.
  /// [sourceServerId] The ID of the replication source MongoDB Cluster. Changing this forces a new resource to be created.
  /// [storageSizeInGb] The size of the data disk space for the MongoDB Cluster.
  /// [storageType] The storage type for the MongoDB Cluster. Possible values are `PremiumSSD` and `PremiumSSDv2`. Defaults to `PremiumSSD`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the MongoDB Cluster.
  /// [version] The version for the MongoDB Cluster. Possibles values are `5.0`, `6.0`, `7.0` and `8.0`.
  MongoClusterState({
    this.administratorPassword,
    this.administratorUsername,
    this.authenticationMethods,
    this.computeTier,
    this.connectionStrings,
    this.createMode,
    this.customerManagedKey,
    this.dataApiModeEnabled,
    this.highAvailabilityMode,
    this.identity,
    this.location,
    this.name,
    this.previewFeatures,
    this.publicNetworkAccess,
    this.resourceGroupName,
    this.restore,
    this.shardCount,
    this.sourceLocation,
    this.sourceServerId,
    this.storageSizeInGb,
    this.storageType,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorPassword': ?administratorPassword,
      'administratorUsername': ?administratorUsername,
      'authenticationMethods': ?authenticationMethods,
      'computeTier': ?computeTier,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<MongoClusterConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<MongoClusterConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createMode': ?createMode,
      'customerManagedKey': ?pulumi.Input.mapOptionalInputValue<MongoClusterCustomerManagedKey, Map<String, dynamic>>(customerManagedKey, (value) => value.toMap()),
      'dataApiModeEnabled': ?dataApiModeEnabled,
      'highAvailabilityMode': ?highAvailabilityMode,
      'identity': ?pulumi.Input.mapOptionalInputValue<MongoClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'previewFeatures': ?previewFeatures,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': ?resourceGroupName,
      'restore': ?pulumi.Input.mapOptionalInputValue<MongoClusterRestore, Map<String, dynamic>>(restore, (value) => value.toMap()),
      'shardCount': ?shardCount,
      'sourceLocation': ?sourceLocation,
      'sourceServerId': ?sourceServerId,
      'storageSizeInGb': ?storageSizeInGb,
      'storageType': ?storageType,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory MongoClusterState.fromMap(Map<String, dynamic> map) {
    return MongoClusterState(
      administratorPassword: map['administratorPassword'] == null ? null : (map['administratorPassword']! as String).input(),
      administratorUsername: map['administratorUsername'] == null ? null : (map['administratorUsername']! as String).input(),
      authenticationMethods: map['authenticationMethods'] == null ? null : ((map['authenticationMethods']! as List).cast<String>()).input(),
      computeTier: map['computeTier'] == null ? null : (map['computeTier']! as String).input(),
      connectionStrings: map['connectionStrings'] == null ? null : (pulumi.Input.decodeList<MongoClusterConnectionString>(map['connectionStrings']!, (value) => MongoClusterConnectionString.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createMode: map['createMode'] == null ? null : (map['createMode']! as String).input(),
      customerManagedKey: map['customerManagedKey'] == null ? null : (MongoClusterCustomerManagedKey.fromMap((map['customerManagedKey']! as Map).cast<String, dynamic>())).input(),
      dataApiModeEnabled: map['dataApiModeEnabled'] == null ? null : (map['dataApiModeEnabled']! as bool).input(),
      highAvailabilityMode: map['highAvailabilityMode'] == null ? null : (map['highAvailabilityMode']! as String).input(),
      identity: map['identity'] == null ? null : (MongoClusterIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      previewFeatures: map['previewFeatures'] == null ? null : ((map['previewFeatures']! as List).cast<String>()).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      restore: map['restore'] == null ? null : (MongoClusterRestore.fromMap((map['restore']! as Map).cast<String, dynamic>())).input(),
      shardCount: map['shardCount'] == null ? null : (map['shardCount']! as int).input(),
      sourceLocation: map['sourceLocation'] == null ? null : (map['sourceLocation']! as String).input(),
      sourceServerId: map['sourceServerId'] == null ? null : (map['sourceServerId']! as String).input(),
      storageSizeInGb: map['storageSizeInGb'] == null ? null : (map['storageSizeInGb']! as int).input(),
      storageType: map['storageType'] == null ? null : (map['storageType']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

