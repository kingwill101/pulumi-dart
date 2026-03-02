// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCacheRedisConfiguration {
  /// Specifies if Microsoft Entra (AAD) authentication is enabled.
  final pulumi.Input<bool> activeDirectoryAuthenticationEnabled;
  final pulumi.Input<bool> aofBackupEnabled;
  final pulumi.Input<String> aofStorageConnectionString0;
  final pulumi.Input<String> aofStorageConnectionString1;
  final pulumi.Input<bool> authenticationEnabled;
  final pulumi.Input<String> dataPersistenceAuthenticationMethod;
  final pulumi.Input<int> maxclients;
  /// Value in megabytes reserved to accommodate for memory fragmentation.
  final pulumi.Input<int> maxfragmentationmemoryReserved;
  /// The max-memory delta for this Redis instance.
  final pulumi.Input<int> maxmemoryDelta;
  /// How Redis will select what to remove when `maxmemory` is reached.
  final pulumi.Input<String> maxmemoryPolicy;
  /// The value in megabytes reserved for non-cache usage e.g. failover
  final pulumi.Input<int> maxmemoryReserved;
  final pulumi.Input<String> notifyKeyspaceEvents;
  /// Is Backup Enabled? Only supported on Premium SKUs.
  final pulumi.Input<bool> rdbBackupEnabled;
  /// The Backup Frequency in Minutes. Only supported on Premium SKUs.
  final pulumi.Input<int> rdbBackupFrequency;
  /// The maximum number of snapshots that can be created as a backup.
  final pulumi.Input<int> rdbBackupMaxSnapshotCount;
  /// The Connection String to the Storage Account. Only supported for Premium SKUs.
  final pulumi.Input<String> rdbStorageConnectionString;
  /// The ID of the Subscription containing the Storage Account.
  final pulumi.Input<String> storageAccountSubscriptionId;

  /// Creates a new [GetCacheRedisConfiguration].
  /// [activeDirectoryAuthenticationEnabled] Specifies if Microsoft Entra (AAD) authentication is enabled.
  /// [aofBackupEnabled] Required.
  /// [aofStorageConnectionString0] Required.
  /// [aofStorageConnectionString1] Required.
  /// [authenticationEnabled] Required.
  /// [dataPersistenceAuthenticationMethod] Required.
  /// [maxclients] Required.
  /// [maxfragmentationmemoryReserved] Value in megabytes reserved to accommodate for memory fragmentation.
  /// [maxmemoryDelta] The max-memory delta for this Redis instance.
  /// [maxmemoryPolicy] How Redis will select what to remove when `maxmemory` is reached.
  /// [maxmemoryReserved] The value in megabytes reserved for non-cache usage e.g. failover
  /// [notifyKeyspaceEvents] Required.
  /// [rdbBackupEnabled] Is Backup Enabled? Only supported on Premium SKUs.
  /// [rdbBackupFrequency] The Backup Frequency in Minutes. Only supported on Premium SKUs.
  /// [rdbBackupMaxSnapshotCount] The maximum number of snapshots that can be created as a backup.
  /// [rdbStorageConnectionString] The Connection String to the Storage Account. Only supported for Premium SKUs.
  /// [storageAccountSubscriptionId] The ID of the Subscription containing the Storage Account.
  GetCacheRedisConfiguration({
    required this.activeDirectoryAuthenticationEnabled,
    required this.aofBackupEnabled,
    required this.aofStorageConnectionString0,
    required this.aofStorageConnectionString1,
    required this.authenticationEnabled,
    required this.dataPersistenceAuthenticationMethod,
    required this.maxclients,
    required this.maxfragmentationmemoryReserved,
    required this.maxmemoryDelta,
    required this.maxmemoryPolicy,
    required this.maxmemoryReserved,
    required this.notifyKeyspaceEvents,
    required this.rdbBackupEnabled,
    required this.rdbBackupFrequency,
    required this.rdbBackupMaxSnapshotCount,
    required this.rdbStorageConnectionString,
    required this.storageAccountSubscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryAuthenticationEnabled': activeDirectoryAuthenticationEnabled,
      'aofBackupEnabled': aofBackupEnabled,
      'aofStorageConnectionString0': aofStorageConnectionString0,
      'aofStorageConnectionString1': aofStorageConnectionString1,
      'authenticationEnabled': authenticationEnabled,
      'dataPersistenceAuthenticationMethod': dataPersistenceAuthenticationMethod,
      'maxclients': maxclients,
      'maxfragmentationmemoryReserved': maxfragmentationmemoryReserved,
      'maxmemoryDelta': maxmemoryDelta,
      'maxmemoryPolicy': maxmemoryPolicy,
      'maxmemoryReserved': maxmemoryReserved,
      'notifyKeyspaceEvents': notifyKeyspaceEvents,
      'rdbBackupEnabled': rdbBackupEnabled,
      'rdbBackupFrequency': rdbBackupFrequency,
      'rdbBackupMaxSnapshotCount': rdbBackupMaxSnapshotCount,
      'rdbStorageConnectionString': rdbStorageConnectionString,
      'storageAccountSubscriptionId': storageAccountSubscriptionId,
    };
  }

  factory GetCacheRedisConfiguration.fromMap(Map<String, dynamic> map) {
    return GetCacheRedisConfiguration(
      activeDirectoryAuthenticationEnabled: (map['activeDirectoryAuthenticationEnabled'] as bool).input(),
      aofBackupEnabled: (map['aofBackupEnabled'] as bool).input(),
      aofStorageConnectionString0: (map['aofStorageConnectionString0'] as String).input(),
      aofStorageConnectionString1: (map['aofStorageConnectionString1'] as String).input(),
      authenticationEnabled: (map['authenticationEnabled'] as bool).input(),
      dataPersistenceAuthenticationMethod: (map['dataPersistenceAuthenticationMethod'] as String).input(),
      maxclients: (map['maxclients'] as int).input(),
      maxfragmentationmemoryReserved: (map['maxfragmentationmemoryReserved'] as int).input(),
      maxmemoryDelta: (map['maxmemoryDelta'] as int).input(),
      maxmemoryPolicy: (map['maxmemoryPolicy'] as String).input(),
      maxmemoryReserved: (map['maxmemoryReserved'] as int).input(),
      notifyKeyspaceEvents: (map['notifyKeyspaceEvents'] as String).input(),
      rdbBackupEnabled: (map['rdbBackupEnabled'] as bool).input(),
      rdbBackupFrequency: (map['rdbBackupFrequency'] as int).input(),
      rdbBackupMaxSnapshotCount: (map['rdbBackupMaxSnapshotCount'] as int).input(),
      rdbStorageConnectionString: (map['rdbStorageConnectionString'] as String).input(),
      storageAccountSubscriptionId: (map['storageAccountSubscriptionId'] as String).input(),
    );
  }
}

