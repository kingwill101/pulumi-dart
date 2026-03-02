// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_valkey_config_database_valkey_config_args_doc}
/// The set of arguments for DatabaseValkeyConfig.
/// {@endtemplate}
/// {@macro pulumi_index_database_valkey_config_database_valkey_config_args_doc}
class DatabaseValkeyConfigArgs {
  /// Determines default pub/sub channels' ACL for new users if an ACL is not supplied. When this option is not defined, `allchannels` is assumed to keep backward compatibility. This option doesn't affect Valkey' `acl-pubsub-default` configuration. Supported values are: `allchannels` and `resetchannels`
  final pulumi.Input<String>? aclChannelsDefault;
  /// The ID of the target Valkey cluster.
  final pulumi.Input<String> clusterId;
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

  /// Creates a new [DatabaseValkeyConfigArgs].
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
  DatabaseValkeyConfigArgs({
    this.aclChannelsDefault,
    required this.clusterId,
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
      'clusterId': clusterId,
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

  factory DatabaseValkeyConfigArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseValkeyConfigArgs(
      aclChannelsDefault: map['aclChannelsDefault'] == null ? null : (map['aclChannelsDefault']! as String).input(),
      clusterId: (map['clusterId'] as String).input(),
      frequentSnapshots: map['frequentSnapshots'] == null ? null : (map['frequentSnapshots']! as bool).input(),
      ioThreads: map['ioThreads'] == null ? null : (map['ioThreads']! as int).input(),
      lfuDecayTime: map['lfuDecayTime'] == null ? null : (map['lfuDecayTime']! as int).input(),
      lfuLogFactor: map['lfuLogFactor'] == null ? null : (map['lfuLogFactor']! as int).input(),
      notifyKeyspaceEvents: map['notifyKeyspaceEvents'] == null ? null : (map['notifyKeyspaceEvents']! as String).input(),
      numberOfDatabases: map['numberOfDatabases'] == null ? null : (map['numberOfDatabases']! as int).input(),
      persistence: map['persistence'] == null ? null : (map['persistence']! as String).input(),
      pubsubClientOutputBufferLimit: map['pubsubClientOutputBufferLimit'] == null ? null : (map['pubsubClientOutputBufferLimit']! as int).input(),
      ssl: map['ssl'] == null ? null : (map['ssl']! as bool).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as int).input(),
      valkeyActiveExpireEffort: map['valkeyActiveExpireEffort'] == null ? null : (map['valkeyActiveExpireEffort']! as int).input(),
      valkeyMaxmemoryPolicy: map['valkeyMaxmemoryPolicy'] == null ? null : (map['valkeyMaxmemoryPolicy']! as String).input(),
    );
  }
}

