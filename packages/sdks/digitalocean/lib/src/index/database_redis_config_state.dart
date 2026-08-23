// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabaseRedisConfig resources.
class DatabaseRedisConfigState {
  /// Determines default pub/sub channels' ACL for new users if an ACL is not supplied. When this option is not defined, `allchannels` is assumed to keep backward compatibility. This option doesn't affect Redis' `acl-pubsub-default` configuration. Supported values are: `allchannels` and `resetchannels`
  final pulumi.Input<String>? aclChannelsDefault;
  /// The ID of the target Redis cluster.
  final pulumi.Input<String>? clusterId;
  /// The Redis IO thread count.
  final pulumi.Input<int>? ioThreads;
  /// The LFU maxmemory policy counter decay time in minutes.
  final pulumi.Input<int>? lfuDecayTime;
  /// The counter logarithm factor for volatile-lfu and allkeys-lfu maxmemory policies.
  final pulumi.Input<int>? lfuLogFactor;
  /// A string specifying the desired eviction policy for the Redis cluster.Supported values are: `noeviction`, `allkeys-lru`, `allkeys-random`, `volatile-lru`, `volatile-random`, `volatile-ttl`
  final pulumi.Input<String>? maxmemoryPolicy;
  /// The `notify-keyspace-events` option. Requires at least `K` or `E`.
  final pulumi.Input<String>? notifyKeyspaceEvents;
  /// The number of Redis databases. Changing this will cause a restart of Redis service.
  final pulumi.Input<int>? numberOfDatabases;
  /// When persistence is `rdb`, Redis does RDB dumps each 10 minutes if any key is changed. Also RDB dumps are done according to backup schedule for backup purposes. When persistence is `off`, no RDB dumps and backups are done, so data can be lost at any moment if service is restarted for any reason, or if service is powered off. Also service can't be forked.
  final pulumi.Input<String>? persistence;
  /// The output buffer limit for pub/sub clients in MB. The value is the hard limit, the soft limit is 1/4 of the hard limit. When setting the limit, be mindful of the available memory in the selected service plan.
  final pulumi.Input<int>? pubsubClientOutputBufferLimit;
  /// A boolean indicating whether to require SSL to access Redis.
  /// - When enabled, Redis accepts only SSL connections on port `25061`.
  /// - When disabled, port `25060` is opened for non-SSL connections, while port `25061` remains available for SSL connections.
  final pulumi.Input<bool>? ssl;
  /// The Redis idle connection timeout in seconds.
  final pulumi.Input<int>? timeout;

  /// Creates a new [DatabaseRedisConfigState].
  /// [aclChannelsDefault] Determines default pub/sub channels' ACL for new users if an ACL is not supplied. When this option is not defined, `allchannels` is assumed to keep backward compatibility. This option doesn't affect Redis' `acl-pubsub-default` configuration. Supported values are: `allchannels` and `resetchannels`
  /// [clusterId] The ID of the target Redis cluster.
  /// [ioThreads] The Redis IO thread count.
  /// [lfuDecayTime] The LFU maxmemory policy counter decay time in minutes.
  /// [lfuLogFactor] The counter logarithm factor for volatile-lfu and allkeys-lfu maxmemory policies.
  /// [maxmemoryPolicy] A string specifying the desired eviction policy for the Redis cluster.Supported values are: `noeviction`, `allkeys-lru`, `allkeys-random`, `volatile-lru`, `volatile-random`, `volatile-ttl`
  /// [notifyKeyspaceEvents] The `notify-keyspace-events` option. Requires at least `K` or `E`.
  /// [numberOfDatabases] The number of Redis databases. Changing this will cause a restart of Redis service.
  /// [persistence] When persistence is `rdb`, Redis does RDB dumps each 10 minutes if any key is changed. Also RDB dumps are done according to backup schedule for backup purposes. When persistence is `off`, no RDB dumps and backups are done, so data can be lost at any moment if service is restarted for any reason, or if service is powered off. Also service can't be forked.
  /// [pubsubClientOutputBufferLimit] The output buffer limit for pub/sub clients in MB. The value is the hard limit, the soft limit is 1/4 of the hard limit. When setting the limit, be mindful of the available memory in the selected service plan.
  /// [ssl] A boolean indicating whether to require SSL to access Redis.
  /// [timeout] The Redis idle connection timeout in seconds.
  const DatabaseRedisConfigState({
    this.aclChannelsDefault,
    this.clusterId,
    this.ioThreads,
    this.lfuDecayTime,
    this.lfuLogFactor,
    this.maxmemoryPolicy,
    this.notifyKeyspaceEvents,
    this.numberOfDatabases,
    this.persistence,
    this.pubsubClientOutputBufferLimit,
    this.ssl,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclChannelsDefault': ?aclChannelsDefault,
      'clusterId': ?clusterId,
      'ioThreads': ?ioThreads,
      'lfuDecayTime': ?lfuDecayTime,
      'lfuLogFactor': ?lfuLogFactor,
      'maxmemoryPolicy': ?maxmemoryPolicy,
      'notifyKeyspaceEvents': ?notifyKeyspaceEvents,
      'numberOfDatabases': ?numberOfDatabases,
      'persistence': ?persistence,
      'pubsubClientOutputBufferLimit': ?pubsubClientOutputBufferLimit,
      'ssl': ?ssl,
      'timeout': ?timeout,
    };
  }

  factory DatabaseRedisConfigState.fromMap(Map<String, dynamic> map) {
    return DatabaseRedisConfigState(
      aclChannelsDefault: (() { final guardedValue = map['aclChannelsDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ioThreads: (() { final guardedValue = map['ioThreads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lfuDecayTime: (() { final guardedValue = map['lfuDecayTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lfuLogFactor: (() { final guardedValue = map['lfuLogFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxmemoryPolicy: (() { final guardedValue = map['maxmemoryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifyKeyspaceEvents: (() { final guardedValue = map['notifyKeyspaceEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfDatabases: (() { final guardedValue = map['numberOfDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      persistence: (() { final guardedValue = map['persistence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pubsubClientOutputBufferLimit: (() { final guardedValue = map['pubsubClientOutputBufferLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ssl: (() { final guardedValue = map['ssl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
