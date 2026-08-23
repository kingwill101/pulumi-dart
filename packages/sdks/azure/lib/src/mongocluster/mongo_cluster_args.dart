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
  /// The Password associated with the `administratorUsername` for the MongoDB Cluster.
  final pulumi.Input<String>? administratorPassword;
  /// The administrator username of the MongoDB Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? administratorUsername;
  /// A list of allowed authentication modes for the MongoDB Cluster. Possible values are `NativeAuth` and `MicrosoftEntraID`.
  final pulumi.Input<List<String>>? authenticationMethods;
  /// The compute tier to assign to the MongoDB Cluster. Possible values are `Free`, `M10`, `M20`, `M25`, `M30`, `M40`, `M50`, `M60`, `M80`, and `M200`.
  final pulumi.Input<String>? computeTier;
  /// The creation mode for the MongoDB Cluster. Possible values are `Default`, `GeoReplica` and `PointInTimeRestore`. Defaults to `Default`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? createMode;
  /// A `customerManagedKey` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<MongoClusterCustomerManagedKey>? customerManagedKey;
  /// Is the Data API for the MongoDB Cluster enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** `dataApiModeEnabled` can only be set when `createMode` is `Default`. Once enabled, it can only be disabled by recreating the resource.
  final pulumi.Input<bool>? dataApiModeEnabled;
  /// The high availability mode for the MongoDB Cluster. Possibles values are `Disabled` and `ZoneRedundantPreferred`.
  final pulumi.Input<String>? highAvailabilityMode;
  /// An `identity` block as detailed below.
  ///
  /// &gt; **Note:** When adding or removing `identity`, a resource recreation will be triggered.
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
  /// A `restore` block as defined below. Required when `createMode` is set to `PointInTimeRestore`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `PointInTimeRestore` is enabled, service API will also assign a value to `sourceServerId`. The user has to explicitly set this property in the Terraform configuration or handle it using `ignoreChanges`.
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
  ///
  /// &gt; **Note:** `version` is required when `createMode` is `Default`.
  final pulumi.Input<String>? version;

  /// Creates a new [MongoClusterArgs].
  /// [administratorPassword] The Password associated with the `administratorUsername` for the MongoDB Cluster.
  /// [administratorUsername] The administrator username of the MongoDB Cluster. Changing this forces a new resource to be created.
  /// [authenticationMethods] A list of allowed authentication modes for the MongoDB Cluster. Possible values are `NativeAuth` and `MicrosoftEntraID`.
  /// [computeTier] The compute tier to assign to the MongoDB Cluster. Possible values are `Free`, `M10`, `M20`, `M25`, `M30`, `M40`, `M50`, `M60`, `M80`, and `M200`.
  /// [createMode] The creation mode for the MongoDB Cluster. Possible values are `Default`, `GeoReplica` and `PointInTimeRestore`. Defaults to `Default`. Changing this forces a new resource to be created.
  /// [customerManagedKey] A `customerManagedKey` block as defined below. Changing this forces a new resource to be created.
  /// [dataApiModeEnabled] Is the Data API for the MongoDB Cluster enabled? Defaults to `false`.
  /// [highAvailabilityMode] The high availability mode for the MongoDB Cluster. Possibles values are `Disabled` and `ZoneRedundantPreferred`.
  /// [identity] An `identity` block as detailed below.
  /// [location] The supported Azure location where the MongoDB Cluster exists. Changing this forces a new resource to be created.
  /// [name] The name which should be used for the MongoDB Cluster. Changing this forces a new resource to be created.
  /// [previewFeatures] The preview features that can be enabled on the MongoDB Cluster. Changing this forces a new resource to be created.
  /// [publicNetworkAccess] The Public Network Access setting for the MongoDB Cluster. Possibles values are `Disabled` and `Enabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the resource group in which to create the MongoDB Cluster. Changing this forces a new resource to be created.
  /// [restore] A `restore` block as defined below. Required when `createMode` is set to `PointInTimeRestore`. Changing this forces a new resource to be created.
  /// [shardCount] The Number of shards to provision on the MongoDB Cluster. Changing this forces a new resource to be created.
  /// [sourceLocation] The location of the source MongoDB Cluster. Changing this forces a new resource to be created.
  /// [sourceServerId] The ID of the replication source MongoDB Cluster. Changing this forces a new resource to be created.
  /// [storageSizeInGb] The size of the data disk space for the MongoDB Cluster.
  /// [storageType] The storage type for the MongoDB Cluster. Possible values are `PremiumSSD` and `PremiumSSDv2`. Defaults to `PremiumSSD`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the MongoDB Cluster.
  /// [version] The version for the MongoDB Cluster. Possibles values are `5.0`, `6.0`, `7.0` and `8.0`.
  const MongoClusterArgs({
    this.administratorPassword,
    this.administratorUsername,
    this.authenticationMethods,
    this.computeTier,
    this.createMode,
    this.customerManagedKey,
    this.dataApiModeEnabled,
    this.highAvailabilityMode,
    this.identity,
    this.location,
    this.name,
    this.previewFeatures,
    this.publicNetworkAccess,
    required this.resourceGroupName,
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
      administratorPassword: (() { final guardedValue = map['administratorPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      administratorUsername: (() { final guardedValue = map['administratorUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationMethods: (() { final guardedValue = map['authenticationMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      computeTier: (() { final guardedValue = map['computeTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoClusterCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataApiModeEnabled: (() { final guardedValue = map['dataApiModeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      highAvailabilityMode: (() { final guardedValue = map['highAvailabilityMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      previewFeatures: (() { final guardedValue = map['previewFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      restore: (() { final guardedValue = map['restore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoClusterRestore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shardCount: (() { final guardedValue = map['shardCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceLocation: (() { final guardedValue = map['sourceLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceServerId: (() { final guardedValue = map['sourceServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSizeInGb: (() { final guardedValue = map['storageSizeInGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
