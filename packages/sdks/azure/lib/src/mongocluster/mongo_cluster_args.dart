// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_cluster_customer_managed_key.dart';
import 'mongo_cluster_identity.dart';
import 'mongo_cluster_restore.dart';

/// {@template pulumi_mongocluster_mongo_cluster_mongo_cluster_args_doc}
/// The set of arguments for MongoCluster.
/// {@endtemplate}
/// {@macro pulumi_mongocluster_mongo_cluster_mongo_cluster_args_doc}
class MongoClusterArgs {
  /// The Password associated with the `administrator_username` for the MongoDB Cluster.
  final pulumi.Input<String>? administratorPassword;
  /// The administrator username of the MongoDB Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? administratorUsername;
  /// A list of allowed authentication modes for the MongoDB Cluster. Possible values are `NativeAuth` and `MicrosoftEntraID`.
  final pulumi.Input<List<String>>? authenticationMethods;
  /// The compute tier to assign to the MongoDB Cluster. Possible values are `Free`, `M10`, `M20`, `M25`, `M30`, `M40`, `M50`, `M60`, `M80`, and `M200`.
  final pulumi.Input<String>? computeTier;
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
  final pulumi.Input<String> resourceGroupName;
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

  /// Creates a new [MongoClusterArgs].
  /// [administratorPassword] The Password associated with the `administrator_username` for the MongoDB Cluster.
  /// [administratorUsername] The administrator username of the MongoDB Cluster. Changing this forces a new resource to be created.
  /// [authenticationMethods] A list of allowed authentication modes for the MongoDB Cluster. Possible values are `NativeAuth` and `MicrosoftEntraID`.
  /// [computeTier] The compute tier to assign to the MongoDB Cluster. Possible values are `Free`, `M10`, `M20`, `M25`, `M30`, `M40`, `M50`, `M60`, `M80`, and `M200`.
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
  MongoClusterArgs({
    pulumi.Output<String>? administratorPassword,
    pulumi.Output<String>? administratorUsername,
    pulumi.Output<List<String>>? authenticationMethods,
    pulumi.Output<String>? computeTier,
    pulumi.Output<String>? createMode,
    pulumi.Output<MongoClusterCustomerManagedKey>? customerManagedKey,
    pulumi.Output<bool>? dataApiModeEnabled,
    pulumi.Output<String>? highAvailabilityMode,
    pulumi.Output<MongoClusterIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? previewFeatures,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<MongoClusterRestore>? restore,
    pulumi.Output<int>? shardCount,
    pulumi.Output<String>? sourceLocation,
    pulumi.Output<String>? sourceServerId,
    pulumi.Output<int>? storageSizeInGb,
    pulumi.Output<String>? storageType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      administratorPassword = pulumi.Input.asOptionalInput<String>(administratorPassword),
      administratorUsername = pulumi.Input.asOptionalInput<String>(administratorUsername),
      authenticationMethods = pulumi.Input.asOptionalInput<List<String>>(authenticationMethods),
      computeTier = pulumi.Input.asOptionalInput<String>(computeTier),
      createMode = pulumi.Input.asOptionalInput<String>(createMode),
      customerManagedKey = pulumi.Input.asOptionalInput<MongoClusterCustomerManagedKey>(customerManagedKey),
      dataApiModeEnabled = pulumi.Input.asOptionalInput<bool>(dataApiModeEnabled),
      highAvailabilityMode = pulumi.Input.asOptionalInput<String>(highAvailabilityMode),
      identity = pulumi.Input.asOptionalInput<MongoClusterIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      previewFeatures = pulumi.Input.asOptionalInput<List<String>>(previewFeatures),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      restore = pulumi.Input.asOptionalInput<MongoClusterRestore>(restore),
      shardCount = pulumi.Input.asOptionalInput<int>(shardCount),
      sourceLocation = pulumi.Input.asOptionalInput<String>(sourceLocation),
      sourceServerId = pulumi.Input.asOptionalInput<String>(sourceServerId),
      storageSizeInGb = pulumi.Input.asOptionalInput<int>(storageSizeInGb),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorPassword': ?administratorPassword,
      'administratorUsername': ?administratorUsername,
      'authenticationMethods': ?authenticationMethods,
      'computeTier': ?computeTier,
      'createMode': ?createMode,
      'customerManagedKey': ?pulumi.Input.mapOptionalInputValue<MongoClusterCustomerManagedKey, Map<String, dynamic>>(customerManagedKey, (value) => value.toMap()),
      'dataApiModeEnabled': ?dataApiModeEnabled,
      'highAvailabilityMode': ?highAvailabilityMode,
      'identity': ?pulumi.Input.mapOptionalInputValue<MongoClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'previewFeatures': ?previewFeatures,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
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

  factory MongoClusterArgs.fromMap(Map<String, dynamic> map) {
    return MongoClusterArgs(
      administratorPassword: map['administratorPassword'] == null ? null : pulumi.Output.create<String>(map['administratorPassword'] as String),
      administratorUsername: map['administratorUsername'] == null ? null : pulumi.Output.create<String>(map['administratorUsername'] as String),
      authenticationMethods: map['authenticationMethods'] == null ? null : pulumi.Output.create<List<String>>((map['authenticationMethods'] as List).cast<String>()),
      computeTier: map['computeTier'] == null ? null : pulumi.Output.create<String>(map['computeTier'] as String),
      createMode: map['createMode'] == null ? null : pulumi.Output.create<String>(map['createMode'] as String),
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<MongoClusterCustomerManagedKey>(MongoClusterCustomerManagedKey.fromMap((map['customerManagedKey'] as Map).cast<String, dynamic>())),
      dataApiModeEnabled: map['dataApiModeEnabled'] == null ? null : pulumi.Output.create<bool>(map['dataApiModeEnabled'] as bool),
      highAvailabilityMode: map['highAvailabilityMode'] == null ? null : pulumi.Output.create<String>(map['highAvailabilityMode'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<MongoClusterIdentity>(MongoClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      previewFeatures: map['previewFeatures'] == null ? null : pulumi.Output.create<List<String>>((map['previewFeatures'] as List).cast<String>()),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      restore: map['restore'] == null ? null : pulumi.Output.create<MongoClusterRestore>(MongoClusterRestore.fromMap((map['restore'] as Map).cast<String, dynamic>())),
      shardCount: map['shardCount'] == null ? null : pulumi.Output.create<int>(map['shardCount'] as int),
      sourceLocation: map['sourceLocation'] == null ? null : pulumi.Output.create<String>(map['sourceLocation'] as String),
      sourceServerId: map['sourceServerId'] == null ? null : pulumi.Output.create<String>(map['sourceServerId'] as String),
      storageSizeInGb: map['storageSizeInGb'] == null ? null : pulumi.Output.create<int>(map['storageSizeInGb'] as int),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

