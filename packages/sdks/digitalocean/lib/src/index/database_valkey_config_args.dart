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
    pulumi.Output<String>? aclChannelsDefault,
    required pulumi.Output<String> clusterId,
    pulumi.Output<bool>? frequentSnapshots,
    pulumi.Output<int>? ioThreads,
    pulumi.Output<int>? lfuDecayTime,
    pulumi.Output<int>? lfuLogFactor,
    pulumi.Output<String>? notifyKeyspaceEvents,
    pulumi.Output<int>? numberOfDatabases,
    pulumi.Output<String>? persistence,
    pulumi.Output<int>? pubsubClientOutputBufferLimit,
    pulumi.Output<bool>? ssl,
    pulumi.Output<int>? timeout,
    pulumi.Output<int>? valkeyActiveExpireEffort,
    pulumi.Output<String>? valkeyMaxmemoryPolicy,
  }) :
      aclChannelsDefault = pulumi.Input.asOptionalInput<String>(aclChannelsDefault),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      frequentSnapshots = pulumi.Input.asOptionalInput<bool>(frequentSnapshots),
      ioThreads = pulumi.Input.asOptionalInput<int>(ioThreads),
      lfuDecayTime = pulumi.Input.asOptionalInput<int>(lfuDecayTime),
      lfuLogFactor = pulumi.Input.asOptionalInput<int>(lfuLogFactor),
      notifyKeyspaceEvents = pulumi.Input.asOptionalInput<String>(notifyKeyspaceEvents),
      numberOfDatabases = pulumi.Input.asOptionalInput<int>(numberOfDatabases),
      persistence = pulumi.Input.asOptionalInput<String>(persistence),
      pubsubClientOutputBufferLimit = pulumi.Input.asOptionalInput<int>(pubsubClientOutputBufferLimit),
      ssl = pulumi.Input.asOptionalInput<bool>(ssl),
      timeout = pulumi.Input.asOptionalInput<int>(timeout),
      valkeyActiveExpireEffort = pulumi.Input.asOptionalInput<int>(valkeyActiveExpireEffort),
      valkeyMaxmemoryPolicy = pulumi.Input.asOptionalInput<String>(valkeyMaxmemoryPolicy);

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
      aclChannelsDefault: map['aclChannelsDefault'] == null ? null : pulumi.Output.create<String>(map['aclChannelsDefault'] as String),
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      frequentSnapshots: map['frequentSnapshots'] == null ? null : pulumi.Output.create<bool>(map['frequentSnapshots'] as bool),
      ioThreads: map['ioThreads'] == null ? null : pulumi.Output.create<int>(map['ioThreads'] as int),
      lfuDecayTime: map['lfuDecayTime'] == null ? null : pulumi.Output.create<int>(map['lfuDecayTime'] as int),
      lfuLogFactor: map['lfuLogFactor'] == null ? null : pulumi.Output.create<int>(map['lfuLogFactor'] as int),
      notifyKeyspaceEvents: map['notifyKeyspaceEvents'] == null ? null : pulumi.Output.create<String>(map['notifyKeyspaceEvents'] as String),
      numberOfDatabases: map['numberOfDatabases'] == null ? null : pulumi.Output.create<int>(map['numberOfDatabases'] as int),
      persistence: map['persistence'] == null ? null : pulumi.Output.create<String>(map['persistence'] as String),
      pubsubClientOutputBufferLimit: map['pubsubClientOutputBufferLimit'] == null ? null : pulumi.Output.create<int>(map['pubsubClientOutputBufferLimit'] as int),
      ssl: map['ssl'] == null ? null : pulumi.Output.create<bool>(map['ssl'] as bool),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<int>(map['timeout'] as int),
      valkeyActiveExpireEffort: map['valkeyActiveExpireEffort'] == null ? null : pulumi.Output.create<int>(map['valkeyActiveExpireEffort'] as int),
      valkeyMaxmemoryPolicy: map['valkeyMaxmemoryPolicy'] == null ? null : pulumi.Output.create<String>(map['valkeyMaxmemoryPolicy'] as String),
    );
  }
}

