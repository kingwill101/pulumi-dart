// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CacheRedisConfiguration {
  /// Enable Microsoft Entra (AAD) authentication. Defaults to `false`.
  final pulumi.Input<bool>? activeDirectoryAuthenticationEnabled;
  /// Enable or disable AOF persistence for this Redis Cache. Defaults to `false`.
  ///
  /// > **NOTE:** `aof_backup_enabled` can only be set when SKU is `Premium`.
  final pulumi.Input<bool>? aofBackupEnabled;
  /// First Storage Account connection string for AOF persistence.
  final pulumi.Input<String>? aofStorageConnectionString0;
  /// Second Storage Account connection string for AOF persistence.
  ///
  /// Example usage:
  final pulumi.Input<String>? aofStorageConnectionString1;
  /// If set to `false`, the Redis instance will be accessible without authentication. Defaults to `true`.
  ///
  /// > **NOTE:** `authentication_enabled` can only be set to `false` if a `subnet_id` is specified; and only works if there aren't existing instances within the subnet with `authentication_enabled` set to `true`.
  final pulumi.Input<bool>? authenticationEnabled;
  /// Preferred auth method to communicate to storage account used for data persistence. Possible values are `SAS` and `ManagedIdentity`.
  final pulumi.Input<String>? dataPersistenceAuthenticationMethod;
  /// Returns the max number of connected clients at the same time.
  final pulumi.Input<int>? maxclients;
  /// Value in megabytes reserved to accommodate for memory fragmentation. Defaults are shown below.
  final pulumi.Input<int>? maxfragmentationmemoryReserved;
  /// The max-memory delta for this Redis instance. Defaults are shown below.
  final pulumi.Input<int>? maxmemoryDelta;
  /// How Redis will select what to remove when `maxmemory` is reached. Defaults to `volatile-lru`.
  final pulumi.Input<String>? maxmemoryPolicy;
  /// Value in megabytes reserved for non-cache usage e.g. failover. Defaults are shown below.
  final pulumi.Input<int>? maxmemoryReserved;
  /// Keyspace notifications allows clients to subscribe to Pub/Sub channels in order to receive events affecting the Redis data set in some way. [Reference](https://redis.io/topics/notifications#configuration)
  final pulumi.Input<String>? notifyKeyspaceEvents;
  /// Is Backup Enabled? Only supported on Premium SKUs. Defaults to `false`.
  ///
  /// > **NOTE:** If `rdb_backup_enabled` set to `true`, `rdb_storage_connection_string` must also be set.
  final pulumi.Input<bool>? rdbBackupEnabled;
  /// The Backup Frequency in Minutes. Only supported on Premium SKUs. Possible values are: `15`, `30`, `60`, `360`, `720` and `1440`.
  final pulumi.Input<int>? rdbBackupFrequency;
  /// The maximum number of snapshots to create as a backup. Only supported for Premium SKUs.
  final pulumi.Input<int>? rdbBackupMaxSnapshotCount;
  /// The Connection String to the Storage Account. Only supported for Premium SKUs. In the format: `DefaultEndpointsProtocol=https;BlobEndpoint=${azurerm_storage_account.example.primary_blob_endpoint};AccountName=${azurerm_storage_account.example.name};AccountKey=${azurerm_storage_account.example.primary_access_key}`.
  ///
  /// > **NOTE:** There's a bug in the Redis API where the original storage connection string isn't being returned, which [is being tracked in this issue](https://github.com/Azure/azure-rest-api-specs/issues/3037). In the interim you can use [the `ignoreChanges` attribute to ignore changes to this field](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) e.g.:
  final pulumi.Input<String>? rdbStorageConnectionString;
  /// The ID of the Subscription containing the Storage Account.
  final pulumi.Input<String>? storageAccountSubscriptionId;

  /// Creates a new [CacheRedisConfiguration].
  /// [activeDirectoryAuthenticationEnabled] Enable Microsoft Entra (AAD) authentication. Defaults to `false`.
  /// [aofBackupEnabled] Enable or disable AOF persistence for this Redis Cache. Defaults to `false`.
  /// [aofStorageConnectionString0] First Storage Account connection string for AOF persistence.
  /// [aofStorageConnectionString1] Second Storage Account connection string for AOF persistence.
  /// [authenticationEnabled] If set to `false`, the Redis instance will be accessible without authentication. Defaults to `true`.
  /// [dataPersistenceAuthenticationMethod] Preferred auth method to communicate to storage account used for data persistence. Possible values are `SAS` and `ManagedIdentity`.
  /// [maxclients] Returns the max number of connected clients at the same time.
  /// [maxfragmentationmemoryReserved] Value in megabytes reserved to accommodate for memory fragmentation. Defaults are shown below.
  /// [maxmemoryDelta] The max-memory delta for this Redis instance. Defaults are shown below.
  /// [maxmemoryPolicy] How Redis will select what to remove when `maxmemory` is reached. Defaults to `volatile-lru`.
  /// [maxmemoryReserved] Value in megabytes reserved for non-cache usage e.g. failover. Defaults are shown below.
  /// [notifyKeyspaceEvents] Keyspace notifications allows clients to subscribe to Pub/Sub channels in order to receive events affecting the Redis data set in some way. [Reference](https://redis.io/topics/notifications#configuration)
  /// [rdbBackupEnabled] Is Backup Enabled? Only supported on Premium SKUs. Defaults to `false`.
  /// [rdbBackupFrequency] The Backup Frequency in Minutes. Only supported on Premium SKUs. Possible values are: `15`, `30`, `60`, `360`, `720` and `1440`.
  /// [rdbBackupMaxSnapshotCount] The maximum number of snapshots to create as a backup. Only supported for Premium SKUs.
  /// [rdbStorageConnectionString] The Connection String to the Storage Account. Only supported for Premium SKUs. In the format: `DefaultEndpointsProtocol=https;BlobEndpoint=${azurerm_storage_account.example.primary_blob_endpoint};AccountName=${azurerm_storage_account.example.name};AccountKey=${azurerm_storage_account.example.primary_access_key}`.
  /// [storageAccountSubscriptionId] The ID of the Subscription containing the Storage Account.
  CacheRedisConfiguration({
    this.activeDirectoryAuthenticationEnabled,
    this.aofBackupEnabled,
    this.aofStorageConnectionString0,
    this.aofStorageConnectionString1,
    this.authenticationEnabled,
    this.dataPersistenceAuthenticationMethod,
    this.maxclients,
    this.maxfragmentationmemoryReserved,
    this.maxmemoryDelta,
    this.maxmemoryPolicy,
    this.maxmemoryReserved,
    this.notifyKeyspaceEvents,
    this.rdbBackupEnabled,
    this.rdbBackupFrequency,
    this.rdbBackupMaxSnapshotCount,
    this.rdbStorageConnectionString,
    this.storageAccountSubscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryAuthenticationEnabled': ?activeDirectoryAuthenticationEnabled,
      'aofBackupEnabled': ?aofBackupEnabled,
      'aofStorageConnectionString0': ?aofStorageConnectionString0,
      'aofStorageConnectionString1': ?aofStorageConnectionString1,
      'authenticationEnabled': ?authenticationEnabled,
      'dataPersistenceAuthenticationMethod': ?dataPersistenceAuthenticationMethod,
      'maxclients': ?maxclients,
      'maxfragmentationmemoryReserved': ?maxfragmentationmemoryReserved,
      'maxmemoryDelta': ?maxmemoryDelta,
      'maxmemoryPolicy': ?maxmemoryPolicy,
      'maxmemoryReserved': ?maxmemoryReserved,
      'notifyKeyspaceEvents': ?notifyKeyspaceEvents,
      'rdbBackupEnabled': ?rdbBackupEnabled,
      'rdbBackupFrequency': ?rdbBackupFrequency,
      'rdbBackupMaxSnapshotCount': ?rdbBackupMaxSnapshotCount,
      'rdbStorageConnectionString': ?rdbStorageConnectionString,
      'storageAccountSubscriptionId': ?storageAccountSubscriptionId,
    };
  }

  factory CacheRedisConfiguration.fromMap(Map<String, dynamic> map) {
    return CacheRedisConfiguration(
      activeDirectoryAuthenticationEnabled: map['activeDirectoryAuthenticationEnabled'] == null ? null : (map['activeDirectoryAuthenticationEnabled'] as bool).input(),
      aofBackupEnabled: map['aofBackupEnabled'] == null ? null : (map['aofBackupEnabled'] as bool).input(),
      aofStorageConnectionString0: map['aofStorageConnectionString0'] == null ? null : (map['aofStorageConnectionString0'] as String).input(),
      aofStorageConnectionString1: map['aofStorageConnectionString1'] == null ? null : (map['aofStorageConnectionString1'] as String).input(),
      authenticationEnabled: map['authenticationEnabled'] == null ? null : (map['authenticationEnabled'] as bool).input(),
      dataPersistenceAuthenticationMethod: map['dataPersistenceAuthenticationMethod'] == null ? null : (map['dataPersistenceAuthenticationMethod'] as String).input(),
      maxclients: map['maxclients'] == null ? null : (map['maxclients'] as int).input(),
      maxfragmentationmemoryReserved: map['maxfragmentationmemoryReserved'] == null ? null : (map['maxfragmentationmemoryReserved'] as int).input(),
      maxmemoryDelta: map['maxmemoryDelta'] == null ? null : (map['maxmemoryDelta'] as int).input(),
      maxmemoryPolicy: map['maxmemoryPolicy'] == null ? null : (map['maxmemoryPolicy'] as String).input(),
      maxmemoryReserved: map['maxmemoryReserved'] == null ? null : (map['maxmemoryReserved'] as int).input(),
      notifyKeyspaceEvents: map['notifyKeyspaceEvents'] == null ? null : (map['notifyKeyspaceEvents'] as String).input(),
      rdbBackupEnabled: map['rdbBackupEnabled'] == null ? null : (map['rdbBackupEnabled'] as bool).input(),
      rdbBackupFrequency: map['rdbBackupFrequency'] == null ? null : (map['rdbBackupFrequency'] as int).input(),
      rdbBackupMaxSnapshotCount: map['rdbBackupMaxSnapshotCount'] == null ? null : (map['rdbBackupMaxSnapshotCount'] as int).input(),
      rdbStorageConnectionString: map['rdbStorageConnectionString'] == null ? null : (map['rdbStorageConnectionString'] as String).input(),
      storageAccountSubscriptionId: map['storageAccountSubscriptionId'] == null ? null : (map['storageAccountSubscriptionId'] as String).input(),
    );
  }
}

