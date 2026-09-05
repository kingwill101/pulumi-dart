// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CacheRedisConfiguration {
  /// Enable Microsoft Entra (AAD) authentication. Defaults to `false`.
  final pulumi.Input<bool?>? activeDirectoryAuthenticationEnabled;
  /// Enable or disable AOF persistence for this Redis Cache. Defaults to `false`.
  ///
  /// &gt; **NOTE:** `aofBackupEnabled` can only be set when SKU is `Premium`.
  final pulumi.Input<bool?>? aofBackupEnabled;
  /// First Storage Account connection string for AOF persistence.
  final pulumi.Input<String?>? aofStorageConnectionString0;
  /// Second Storage Account connection string for AOF persistence.
  ///
  /// Example usage:
  final pulumi.Input<String?>? aofStorageConnectionString1;
  /// If set to `false`, the Redis instance will be accessible without authentication. Defaults to `true`.
  ///
  /// &gt; **NOTE:** `authenticationEnabled` can only be set to `false` if a `subnetId` is specified; and only works if there aren't existing instances within the subnet with `authenticationEnabled` set to `true`.
  final pulumi.Input<bool?>? authenticationEnabled;
  /// Preferred auth method to communicate to storage account used for data persistence. Possible values are `SAS` and `ManagedIdentity`.
  final pulumi.Input<String?>? dataPersistenceAuthenticationMethod;
  /// Returns the max number of connected clients at the same time.
  final pulumi.Input<int?>? maxclients;
  /// Value in megabytes reserved to accommodate for memory fragmentation. Defaults are shown below.
  final pulumi.Input<int?>? maxfragmentationmemoryReserved;
  /// The max-memory delta for this Redis instance. Defaults are shown below.
  final pulumi.Input<int?>? maxmemoryDelta;
  /// How Redis will select what to remove when `maxmemory` is reached. Defaults to `volatile-lru`.
  final pulumi.Input<String?>? maxmemoryPolicy;
  /// Value in megabytes reserved for non-cache usage e.g. failover. Defaults are shown below.
  final pulumi.Input<int?>? maxmemoryReserved;
  /// Keyspace notifications allows clients to subscribe to Pub/Sub channels in order to receive events affecting the Redis data set in some way. [Reference](https://redis.io/topics/notifications#configuration)
  final pulumi.Input<String?>? notifyKeyspaceEvents;
  /// Is Backup Enabled? Only supported on Premium SKUs. Defaults to `false`.
  ///
  /// &gt; **NOTE:** If `rdbBackupEnabled` set to `true`, `rdbStorageConnectionString` must also be set.
  final pulumi.Input<bool?>? rdbBackupEnabled;
  /// The Backup Frequency in Minutes. Only supported on Premium SKUs. Possible values are: `15`, `30`, `60`, `360`, `720` and `1440`.
  final pulumi.Input<int?>? rdbBackupFrequency;
  /// The maximum number of snapshots to create as a backup. Only supported for Premium SKUs.
  final pulumi.Input<int?>? rdbBackupMaxSnapshotCount;
  /// The Connection String to the Storage Account. Only supported for Premium SKUs. In the format: `DefaultEndpointsProtocol=https;BlobEndpoint=${azurerm_storage_account.example.primary_blob_endpoint};AccountName=${azurerm_storage_account.example.name};AccountKey=${azurerm_storage_account.example.primary_access_key}`.
  ///
  /// &gt; **NOTE:** There's a bug in the Redis API where the original storage connection string isn't being returned, which [is being tracked in this issue](https://github.com/Azure/azure-rest-api-specs/issues/3037). In the interim you can use [the `ignoreChanges` attribute to ignore changes to this field](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) e.g.:
  final pulumi.Input<String?>? rdbStorageConnectionString;
  /// The ID of the Subscription containing the Storage Account.
  final pulumi.Input<String?>? storageAccountSubscriptionId;

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
  const CacheRedisConfiguration({
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
      activeDirectoryAuthenticationEnabled: (() { final guardedValue = map['activeDirectoryAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      aofBackupEnabled: (() { final guardedValue = map['aofBackupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      aofStorageConnectionString0: (() { final guardedValue = map['aofStorageConnectionString0']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aofStorageConnectionString1: (() { final guardedValue = map['aofStorageConnectionString1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationEnabled: (() { final guardedValue = map['authenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataPersistenceAuthenticationMethod: (() { final guardedValue = map['dataPersistenceAuthenticationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxclients: (() { final guardedValue = map['maxclients']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxfragmentationmemoryReserved: (() { final guardedValue = map['maxfragmentationmemoryReserved']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxmemoryDelta: (() { final guardedValue = map['maxmemoryDelta']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxmemoryPolicy: (() { final guardedValue = map['maxmemoryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxmemoryReserved: (() { final guardedValue = map['maxmemoryReserved']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      notifyKeyspaceEvents: (() { final guardedValue = map['notifyKeyspaceEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdbBackupEnabled: (() { final guardedValue = map['rdbBackupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rdbBackupFrequency: (() { final guardedValue = map['rdbBackupFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      rdbBackupMaxSnapshotCount: (() { final guardedValue = map['rdbBackupMaxSnapshotCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      rdbStorageConnectionString: (() { final guardedValue = map['rdbStorageConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountSubscriptionId: (() { final guardedValue = map['storageAccountSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
