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
  const GetCacheRedisConfiguration({
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
      activeDirectoryAuthenticationEnabled: pulumi.Input.fromValue(map['activeDirectoryAuthenticationEnabled'] as bool),
      aofBackupEnabled: pulumi.Input.fromValue(map['aofBackupEnabled'] as bool),
      aofStorageConnectionString0: pulumi.Input.fromValue(map['aofStorageConnectionString0'] as String),
      aofStorageConnectionString1: pulumi.Input.fromValue(map['aofStorageConnectionString1'] as String),
      authenticationEnabled: pulumi.Input.fromValue(map['authenticationEnabled'] as bool),
      dataPersistenceAuthenticationMethod: pulumi.Input.fromValue(map['dataPersistenceAuthenticationMethod'] as String),
      maxclients: pulumi.Input.fromValue((map['maxclients'] as num).toInt()),
      maxfragmentationmemoryReserved: pulumi.Input.fromValue((map['maxfragmentationmemoryReserved'] as num).toInt()),
      maxmemoryDelta: pulumi.Input.fromValue((map['maxmemoryDelta'] as num).toInt()),
      maxmemoryPolicy: pulumi.Input.fromValue(map['maxmemoryPolicy'] as String),
      maxmemoryReserved: pulumi.Input.fromValue((map['maxmemoryReserved'] as num).toInt()),
      notifyKeyspaceEvents: pulumi.Input.fromValue(map['notifyKeyspaceEvents'] as String),
      rdbBackupEnabled: pulumi.Input.fromValue(map['rdbBackupEnabled'] as bool),
      rdbBackupFrequency: pulumi.Input.fromValue((map['rdbBackupFrequency'] as num).toInt()),
      rdbBackupMaxSnapshotCount: pulumi.Input.fromValue((map['rdbBackupMaxSnapshotCount'] as num).toInt()),
      rdbStorageConnectionString: pulumi.Input.fromValue(map['rdbStorageConnectionString'] as String),
      storageAccountSubscriptionId: pulumi.Input.fromValue(map['storageAccountSubscriptionId'] as String),
    );
  }
}
