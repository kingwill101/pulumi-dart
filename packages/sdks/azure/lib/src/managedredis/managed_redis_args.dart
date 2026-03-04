// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_redis_customer_managed_key.dart';
import 'managed_redis_default_database.dart';
import 'managed_redis_identity.dart';

/// {@template pulumi_managedredis_managed_redis_managed_redis_args_doc}
/// The set of arguments for ManagedRedis.
/// {@endtemplate}
/// {@macro pulumi_managedredis_managed_redis_managed_redis_args_doc}
class ManagedRedisArgs {
  /// A `customer_managed_key` block as defined below.
  final pulumi.Input<ManagedRedisCustomerManagedKey>? customerManagedKey;

  /// A `default_database` block as defined below.
  ///
  /// &gt; **Note:** `default_database` is Required when creating a new Managed Redis.
  ///
  /// &gt; **Note:** A `default_database` can be deleted or recreated in-place but most properties will trigger an entire cluster replacement if changed. Data will be lost and Managed Redis will be unavailable during recreation.
  final pulumi.Input<ManagedRedisDefaultDatabase>? defaultDatabase;

  /// Whether to enable high availability for the Managed Redis instance. Defaults to `true`. Changing this forces a new Managed Redis instance to be created.
  final pulumi.Input<bool>? highAvailabilityEnabled;

  /// An `identity` block as defined below.
  final pulumi.Input<ManagedRedisIdentity>? identity;

  /// The Azure Region where the Managed Redis instance should exist. Refer to "Redis Cache" on the [product availability documentation](https://azure.microsoft.com/explore/global-infrastructure/products-by-region/table) for supported locations. Changing this forces a new Managed Redis instance to be created.
  final pulumi.Input<String>? location;

  /// The name which should be used for this Managed Redis instance. Changing this forces a new Managed Redis instance to be created.
  final pulumi.Input<String>? name;

  /// The public network access setting for the Managed Redis instance. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  final pulumi.Input<String>? publicNetworkAccess;

  /// The name of the Resource Group where the Managed Redis instance should exist. Changing this forces a new Managed Redis instance to be created.
  final pulumi.Input<String> resourceGroupName;

  /// The features and specification of the Managed Redis instance to deploy. Possible values are `Balanced_B0`, `Balanced_B1`, `Balanced_B10`, `Balanced_B100`, `Balanced_B1000`, `Balanced_B150`, `Balanced_B20`, `Balanced_B250`, `Balanced_B3`, `Balanced_B350`, `Balanced_B5`, `Balanced_B50`, `Balanced_B500`, `Balanced_B700`, `ComputeOptimized_X10`, `ComputeOptimized_X100`, `ComputeOptimized_X150`, `ComputeOptimized_X20`, `ComputeOptimized_X250`, `ComputeOptimized_X3`, `ComputeOptimized_X350`, `ComputeOptimized_X5`, `ComputeOptimized_X50`, `ComputeOptimized_X500`, `ComputeOptimized_X700`, `FlashOptimized_A1000`, `FlashOptimized_A1500`, `FlashOptimized_A2000`, `FlashOptimized_A250`, `FlashOptimized_A4500`, `FlashOptimized_A500`, `FlashOptimized_A700`, `MemoryOptimized_M10`, `MemoryOptimized_M100`, `MemoryOptimized_M1000`, `MemoryOptimized_M150`, `MemoryOptimized_M1500`, `MemoryOptimized_M20`, `MemoryOptimized_M2000`, `MemoryOptimized_M250`, `MemoryOptimized_M350`, `MemoryOptimized_M50`, `MemoryOptimized_M500` and `MemoryOptimized_M700`. `Balanced_B3` SKU or higher is required for geo-replication.
  ///
  /// &gt; **Note:** `Enterprise_` and `EnterpriseFlash_` prefixed SKUs were previously used by Redis Enterprise, and [not supported by Managed Redis](https://learn.microsoft.com/azure/redis/migrate/migrate-overview).
  ///
  /// &gt; **Note:** Changing `sku_name` to a lower tier is restricted by Azure under certain conditions, in which case the resource will be marked for recreation. Validation for this is on a best-effort basis, if the provider is unable to determine whether it can change the SKU in-place, it will attempt to do regardless and this request may fail. Please refer to the [Azure documentation](https://learn.microsoft.com/en-us/azure/redis/how-to-scale) for more information.
  final pulumi.Input<String> skuName;

  /// A mapping of tags which should be assigned to the Managed Redis instance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedRedisArgs].
  /// [customerManagedKey] A `customer_managed_key` block as defined below.
  /// [defaultDatabase] A `default_database` block as defined below.
  /// [highAvailabilityEnabled] Whether to enable high availability for the Managed Redis instance. Defaults to `true`. Changing this forces a new Managed Redis instance to be created.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Managed Redis instance should exist. Refer to "Redis Cache" on the [product availability documentation](https://azure.microsoft.com/explore/global-infrastructure/products-by-region/table) for supported locations. Changing this forces a new Managed Redis instance to be created.
  /// [name] The name which should be used for this Managed Redis instance. Changing this forces a new Managed Redis instance to be created.
  /// [publicNetworkAccess] The public network access setting for the Managed Redis instance. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the Resource Group where the Managed Redis instance should exist. Changing this forces a new Managed Redis instance to be created.
  /// [skuName] The features and specification of the Managed Redis instance to deploy. Possible values are `Balanced_B0`, `Balanced_B1`, `Balanced_B10`, `Balanced_B100`, `Balanced_B1000`, `Balanced_B150`, `Balanced_B20`, `Balanced_B250`, `Balanced_B3`, `Balanced_B350`, `Balanced_B5`, `Balanced_B50`, `Balanced_B500`, `Balanced_B700`, `ComputeOptimized_X10`, `ComputeOptimized_X100`, `ComputeOptimized_X150`, `ComputeOptimized_X20`, `ComputeOptimized_X250`, `ComputeOptimized_X3`, `ComputeOptimized_X350`, `ComputeOptimized_X5`, `ComputeOptimized_X50`, `ComputeOptimized_X500`, `ComputeOptimized_X700`, `FlashOptimized_A1000`, `FlashOptimized_A1500`, `FlashOptimized_A2000`, `FlashOptimized_A250`, `FlashOptimized_A4500`, `FlashOptimized_A500`, `FlashOptimized_A700`, `MemoryOptimized_M10`, `MemoryOptimized_M100`, `MemoryOptimized_M1000`, `MemoryOptimized_M150`, `MemoryOptimized_M1500`, `MemoryOptimized_M20`, `MemoryOptimized_M2000`, `MemoryOptimized_M250`, `MemoryOptimized_M350`, `MemoryOptimized_M50`, `MemoryOptimized_M500` and `MemoryOptimized_M700`. `Balanced_B3` SKU or higher is required for geo-replication.
  /// [tags] A mapping of tags which should be assigned to the Managed Redis instance.
  ManagedRedisArgs({
    this.customerManagedKey,
    this.defaultDatabase,
    this.highAvailabilityEnabled,
    this.identity,
    this.location,
    this.name,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    required this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKey':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedRedisCustomerManagedKey,
            Map<String, dynamic>
          >(customerManagedKey, (value) => value.toMap()),
      'defaultDatabase':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedRedisDefaultDatabase,
            Map<String, dynamic>
          >(defaultDatabase, (value) => value.toMap()),
      'highAvailabilityEnabled': ?highAvailabilityEnabled,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedRedisIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': ?tags,
    };
  }

  factory ManagedRedisArgs.fromMap(Map<String, dynamic> map) {
    return ManagedRedisArgs(
      customerManagedKey: (() {
        final guardedValue = map['customerManagedKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedRedisCustomerManagedKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      defaultDatabase: (() {
        final guardedValue = map['defaultDatabase'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedRedisDefaultDatabase.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      highAvailabilityEnabled: (() {
        final guardedValue = map['highAvailabilityEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedRedisIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
