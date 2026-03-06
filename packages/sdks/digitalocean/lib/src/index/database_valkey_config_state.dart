// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabaseValkeyConfig resources.
class DatabaseValkeyConfigState {
  /// Determines default pub/sub channels' ACL for new users if an ACL is not supplied. When this option is not defined, `allchannels` is assumed to keep backward compatibility. This option doesn't affect Valkey' `acl-pubsub-default` configuration. Supported values are: `allchannels` and `resetchannels`
  final pulumi.Input<String>? aclChannelsDefault;
  /// The ID of the target Valkey cluster.
  final pulumi.Input<String>? clusterId;
  /// Frequent RDB snapshots. When enabled, Valkey will create frequent local RDB snapshots. When disabled, Valkey will only take RDB snapshots when a backup is created, based on the backup schedule. This setting is ignored when valkey_persistence is set to off.
  final pulumi.Input<bool>? frequentSnapshots;
  /// The Valkey IO thread count.
  final pulumi.Input<int>? ioThreads;
  /// The LFU maxmemory policy counter decay time in minutes.
  final pulumi.Input<int>? lfuDecayTime;
  /// The counter logarithm factor for volatile-lfu and allkeys-lfu maxmemory policies.
  final pulumi.Input<int>? lfuLogFactor;
  /// The `notify-keyspace-events` option. Requires at least `K` or `E`.
  final pulumi.Input<String>? notifyKeyspaceEvents;
  /// The number of Valkey databases. Changing this will cause a restart of Valkey service.
  final pulumi.Input<int>? numberOfDatabases;
  /// When persistence is 'rdb', Valkey does RDB dumps each 10 minutes if any key is changed. Also RDB dumps are done according to backup schedule for backup purposes. When persistence is 'off', no RDB dumps and backups are done, so data can be lost at any moment if service is restarted for any reason, or if service is powered off. Also service can't be forked.
  final pulumi.Input<String>? persistence;
  /// The output buffer limit for pub/sub clients in MB. The value is the hard limit, the soft limit is 1/4 of the hard limit. When setting the limit, be mindful of the available memory in the selected service plan.
  final pulumi.Input<int>? pubsubClientOutputBufferLimit;
  /// A boolean indicating whether to require SSL to access Valkey.
  final pulumi.Input<bool>? ssl;
  /// The Valkey idle connection timeout in seconds.
  final pulumi.Input<int>? timeout;
  /// Active expire effort. Valkey reclaims expired keys both when accessed and in the background. The background process scans for expired keys to free memory. Increasing the active-expire-effort setting (default 1, max 10) uses more CPU to reclaim expired keys faster, reducing memory usage but potentially increasing latency.
  final pulumi.Input<int>? valkeyActiveExpireEffort;
  /// Eviction policy model
  final pulumi.Input<String>? valkeyMaxmemoryPolicy;

  /// Creates a new [DatabaseValkeyConfigState].
  /// [aclChannelsDefault] Determines default pub/sub channels' ACL for new users if an ACL is not supplied. When this option is not defined, `allchannels` is assumed to keep backward compatibility. This option doesn't affect Valkey' `acl-pubsub-default` configuration. Supported values are: `allchannels` and `resetchannels`
  /// [clusterId] The ID of the target Valkey cluster.
  /// [frequentSnapshots] Frequent RDB snapshots. When enabled, Valkey will create frequent local RDB snapshots. When disabled, Valkey will only take RDB snapshots when a backup is created, based on the backup schedule. This setting is ignored when valkey_persistence is set to off.
  /// [ioThreads] The Valkey IO thread count.
  /// [lfuDecayTime] The LFU maxmemory policy counter decay time in minutes.
  /// [lfuLogFactor] The counter logarithm factor for volatile-lfu and allkeys-lfu maxmemory policies.
  /// [notifyKeyspaceEvents] The `notify-keyspace-events` option. Requires at least `K` or `E`.
  /// [numberOfDatabases] The number of Valkey databases. Changing this will cause a restart of Valkey service.
  /// [persistence] When persistence is 'rdb', Valkey does RDB dumps each 10 minutes if any key is changed. Also RDB dumps are done according to backup schedule for backup purposes. When persistence is 'off', no RDB dumps and backups are done, so data can be lost at any moment if service is restarted for any reason, or if service is powered off. Also service can't be forked.
  /// [pubsubClientOutputBufferLimit] The output buffer limit for pub/sub clients in MB. The value is the hard limit, the soft limit is 1/4 of the hard limit. When setting the limit, be mindful of the available memory in the selected service plan.
  /// [ssl] A boolean indicating whether to require SSL to access Valkey.
  /// [timeout] The Valkey idle connection timeout in seconds.
  /// [valkeyActiveExpireEffort] Active expire effort. Valkey reclaims expired keys both when accessed and in the background. The background process scans for expired keys to free memory. Increasing the active-expire-effort setting (default 1, max 10) uses more CPU to reclaim expired keys faster, reducing memory usage but potentially increasing latency.
  /// [valkeyMaxmemoryPolicy] Eviction policy model
  const DatabaseValkeyConfigState({
    this.aclChannelsDefault,
    this.clusterId,
    this.frequentSnapshots,
    this.ioThreads,
    this.lfuDecayTime,
    this.lfuLogFactor,
    this.notifyKeyspaceEvents,
    this.numberOfDatabases,
    this.persistence,
    this.pubsubClientOutputBufferLimit,
    this.ssl,
    this.timeout,
    this.valkeyActiveExpireEffort,
    this.valkeyMaxmemoryPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclChannelsDefault': ?aclChannelsDefault,
      'clusterId': ?clusterId,
      'frequentSnapshots': ?frequentSnapshots,
      'ioThreads': ?ioThreads,
      'lfuDecayTime': ?lfuDecayTime,
      'lfuLogFactor': ?lfuLogFactor,
      'notifyKeyspaceEvents': ?notifyKeyspaceEvents,
      'numberOfDatabases': ?numberOfDatabases,
      'persistence': ?persistence,
      'pubsubClientOutputBufferLimit': ?pubsubClientOutputBufferLimit,
      'ssl': ?ssl,
      'timeout': ?timeout,
      'valkeyActiveExpireEffort': ?valkeyActiveExpireEffort,
      'valkeyMaxmemoryPolicy': ?valkeyMaxmemoryPolicy,
    };
  }

  factory DatabaseValkeyConfigState.fromMap(Map<String, dynamic> map) {
    return DatabaseValkeyConfigState(
      aclChannelsDefault: (() { final guardedValue = map['aclChannelsDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequentSnapshots: (() { final guardedValue = map['frequentSnapshots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ioThreads: (() { final guardedValue = map['ioThreads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lfuDecayTime: (() { final guardedValue = map['lfuDecayTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lfuLogFactor: (() { final guardedValue = map['lfuLogFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      notifyKeyspaceEvents: (() { final guardedValue = map['notifyKeyspaceEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfDatabases: (() { final guardedValue = map['numberOfDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      persistence: (() { final guardedValue = map['persistence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pubsubClientOutputBufferLimit: (() { final guardedValue = map['pubsubClientOutputBufferLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ssl: (() { final guardedValue = map['ssl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      valkeyActiveExpireEffort: (() { final guardedValue = map['valkeyActiveExpireEffort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      valkeyMaxmemoryPolicy: (() { final guardedValue = map['valkeyMaxmemoryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

