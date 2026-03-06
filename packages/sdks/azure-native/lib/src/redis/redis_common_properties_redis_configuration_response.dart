// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// All Redis Settings. Few possible keys: rdb-backup-enabled,rdb-storage-connection-string,rdb-backup-frequency,maxmemory-delta, maxmemory-policy,notify-keyspace-events, aof-backup-enabled, aof-storage-connection-string-0, aof-storage-connection-string-1 etc.
class RedisCommonPropertiesRedisConfigurationResponse {
  /// Specifies whether AAD based authentication has been enabled or disabled for the cache
  final pulumi.Input<String>? aadEnabled;
  /// Specifies whether the aof backup is enabled
  final pulumi.Input<String>? aofBackupEnabled;
  /// First storage account connection string
  final pulumi.Input<String>? aofStorageConnectionString0;
  /// Second storage account connection string
  final pulumi.Input<String>? aofStorageConnectionString1;
  /// Specifies whether the authentication is disabled. Setting this property is highly discouraged from security point of view; you should never disable authentication using this property!
  final pulumi.Input<String>? authnotrequired;
  /// The max clients config
  final pulumi.Input<String> maxclients;
  /// Value in megabytes reserved for fragmentation per shard
  final pulumi.Input<String>? maxfragmentationmemoryReserved;
  /// Value in megabytes reserved for non-cache usage per shard e.g. failover.
  final pulumi.Input<String>? maxmemoryDelta;
  /// The eviction strategy used when your data won't fit within its memory limit.
  final pulumi.Input<String>? maxmemoryPolicy;
  /// Value in megabytes reserved for non-cache usage per shard e.g. failover.
  final pulumi.Input<String>? maxmemoryReserved;
  /// The keyspace events which should be monitored.
  final pulumi.Input<String>? notifyKeyspaceEvents;
  /// Preferred auth method to communicate to storage account used for data archive, specify SAS or ManagedIdentity, default value is SAS
  final pulumi.Input<String> preferredDataArchiveAuthMethod;
  /// Preferred auth method to communicate to storage account used for data persistence, specify SAS or ManagedIdentity, default value is SAS
  final pulumi.Input<String>? preferredDataPersistenceAuthMethod;
  /// Specifies whether the RDB backup is enabled
  final pulumi.Input<String>? rdbBackupEnabled;
  /// Specifies the frequency for creating rdb backup in minutes. Valid values: (15, 30, 60, 360, 720, 1440)
  final pulumi.Input<String>? rdbBackupFrequency;
  /// Specifies the maximum number of snapshots for rdb backup
  final pulumi.Input<String>? rdbBackupMaxSnapshotCount;
  /// The storage account connection string for storing rdb file
  final pulumi.Input<String>? rdbStorageConnectionString;
  /// SubscriptionId of the storage account for persistence (aof/rdb) using ManagedIdentity.
  final pulumi.Input<String>? storageSubscriptionId;
  /// Zonal Configuration
  final pulumi.Input<String> zonalConfiguration;

  /// Creates a new [RedisCommonPropertiesRedisConfigurationResponse].
  /// [aadEnabled] Specifies whether AAD based authentication has been enabled or disabled for the cache
  /// [aofBackupEnabled] Specifies whether the aof backup is enabled
  /// [aofStorageConnectionString0] First storage account connection string
  /// [aofStorageConnectionString1] Second storage account connection string
  /// [authnotrequired] Specifies whether the authentication is disabled. Setting this property is highly discouraged from security point of view; you should never disable authentication using this property!
  /// [maxclients] The max clients config
  /// [maxfragmentationmemoryReserved] Value in megabytes reserved for fragmentation per shard
  /// [maxmemoryDelta] Value in megabytes reserved for non-cache usage per shard e.g. failover.
  /// [maxmemoryPolicy] The eviction strategy used when your data won't fit within its memory limit.
  /// [maxmemoryReserved] Value in megabytes reserved for non-cache usage per shard e.g. failover.
  /// [notifyKeyspaceEvents] The keyspace events which should be monitored.
  /// [preferredDataArchiveAuthMethod] Preferred auth method to communicate to storage account used for data archive, specify SAS or ManagedIdentity, default value is SAS
  /// [preferredDataPersistenceAuthMethod] Preferred auth method to communicate to storage account used for data persistence, specify SAS or ManagedIdentity, default value is SAS
  /// [rdbBackupEnabled] Specifies whether the RDB backup is enabled
  /// [rdbBackupFrequency] Specifies the frequency for creating rdb backup in minutes. Valid values: (15, 30, 60, 360, 720, 1440)
  /// [rdbBackupMaxSnapshotCount] Specifies the maximum number of snapshots for rdb backup
  /// [rdbStorageConnectionString] The storage account connection string for storing rdb file
  /// [storageSubscriptionId] SubscriptionId of the storage account for persistence (aof/rdb) using ManagedIdentity.
  /// [zonalConfiguration] Zonal Configuration
  const RedisCommonPropertiesRedisConfigurationResponse({
    this.aadEnabled,
    this.aofBackupEnabled,
    this.aofStorageConnectionString0,
    this.aofStorageConnectionString1,
    this.authnotrequired,
    required this.maxclients,
    this.maxfragmentationmemoryReserved,
    this.maxmemoryDelta,
    this.maxmemoryPolicy,
    this.maxmemoryReserved,
    this.notifyKeyspaceEvents,
    required this.preferredDataArchiveAuthMethod,
    this.preferredDataPersistenceAuthMethod,
    this.rdbBackupEnabled,
    this.rdbBackupFrequency,
    this.rdbBackupMaxSnapshotCount,
    this.rdbStorageConnectionString,
    this.storageSubscriptionId,
    required this.zonalConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadEnabled': ?aadEnabled,
      'aofBackupEnabled': ?aofBackupEnabled,
      'aofStorageConnectionString0': ?aofStorageConnectionString0,
      'aofStorageConnectionString1': ?aofStorageConnectionString1,
      'authnotrequired': ?authnotrequired,
      'maxclients': maxclients,
      'maxfragmentationmemoryReserved': ?maxfragmentationmemoryReserved,
      'maxmemoryDelta': ?maxmemoryDelta,
      'maxmemoryPolicy': ?maxmemoryPolicy,
      'maxmemoryReserved': ?maxmemoryReserved,
      'notifyKeyspaceEvents': ?notifyKeyspaceEvents,
      'preferredDataArchiveAuthMethod': preferredDataArchiveAuthMethod,
      'preferredDataPersistenceAuthMethod': ?preferredDataPersistenceAuthMethod,
      'rdbBackupEnabled': ?rdbBackupEnabled,
      'rdbBackupFrequency': ?rdbBackupFrequency,
      'rdbBackupMaxSnapshotCount': ?rdbBackupMaxSnapshotCount,
      'rdbStorageConnectionString': ?rdbStorageConnectionString,
      'storageSubscriptionId': ?storageSubscriptionId,
      'zonalConfiguration': zonalConfiguration,
    };
  }

  factory RedisCommonPropertiesRedisConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return RedisCommonPropertiesRedisConfigurationResponse(
      aadEnabled: (() { final guardedValue = map['aadEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aofBackupEnabled: (() { final guardedValue = map['aofBackupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aofStorageConnectionString0: (() { final guardedValue = map['aofStorageConnectionString0']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aofStorageConnectionString1: (() { final guardedValue = map['aofStorageConnectionString1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authnotrequired: (() { final guardedValue = map['authnotrequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxclients: pulumi.Input.fromValue(map['maxclients'] as String),
      maxfragmentationmemoryReserved: (() { final guardedValue = map['maxfragmentationmemoryReserved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxmemoryDelta: (() { final guardedValue = map['maxmemoryDelta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxmemoryPolicy: (() { final guardedValue = map['maxmemoryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxmemoryReserved: (() { final guardedValue = map['maxmemoryReserved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifyKeyspaceEvents: (() { final guardedValue = map['notifyKeyspaceEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredDataArchiveAuthMethod: pulumi.Input.fromValue(map['preferredDataArchiveAuthMethod'] as String),
      preferredDataPersistenceAuthMethod: (() { final guardedValue = map['preferredDataPersistenceAuthMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdbBackupEnabled: (() { final guardedValue = map['rdbBackupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdbBackupFrequency: (() { final guardedValue = map['rdbBackupFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdbBackupMaxSnapshotCount: (() { final guardedValue = map['rdbBackupMaxSnapshotCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdbStorageConnectionString: (() { final guardedValue = map['rdbStorageConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSubscriptionId: (() { final guardedValue = map['storageSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zonalConfiguration: pulumi.Input.fromValue(map['zonalConfiguration'] as String),
    );
  }
}

