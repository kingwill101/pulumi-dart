// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_mongodb_config_database_mongodb_config_args_doc}
/// The set of arguments for DatabaseMongodbConfig.
/// {@endtemplate}
/// {@macro pulumi_index_database_mongodb_config_database_mongodb_config_args_doc}
class DatabaseMongodbConfigArgs {
  /// The ID of the target MongoDB cluster.
  final pulumi.Input<String> clusterId;
  /// Specifies the default consistency behavior of reads from the database. Data that is returned from the query with may or may not have been acknowledged by all nodes in the replicaset depending on this value. Learn more [here](https://www.mongodb.com/docs/manual/reference/read-concern/).
  final pulumi.Input<String>? defaultReadConcern;
  /// Describes the level of acknowledgment requested from MongoDB for write operations clusters. This field can set to either `majority` or a number`0...n` which will describe the number of nodes that must acknowledge the write operation before it is fully accepted. Setting to `0` will request no acknowledgement of the write operation. Learn more [here](https://www.mongodb.com/docs/manual/reference/write-concern/).
  final pulumi.Input<String>? defaultWriteConcern;
  /// Operations that run for longer than this threshold are considered slow which are then recorded to the diagnostic logs. Higher log levels (verbosity) will record all operations regardless of this threshold on the primary node. <em>Changing this parameter will lead to a restart of the MongoDB service.</em> Learn more [here](https://www.mongodb.com/docs/manual/reference/configuration-options/#mongodb-setting-operationProfiling.slowOpThresholdMs).
  final pulumi.Input<int>? slowOpThresholdMs;
  /// Specifies the lifetime of multi-document transactions. Transactions that exceed this limit are considered expired and will be aborted by a periodic cleanup process. The cleanup process runs every `transactionLifetimeLimitSeconds/2 seconds` or at least once every 60 seconds. <em>Changing this parameter will lead to a restart of the MongoDB service.</em> Learn more [here](https://www.mongodb.com/docs/manual/reference/parameters/#mongodb-parameter-param.transactionLifetimeLimitSeconds).
  final pulumi.Input<int>? transactionLifetimeLimitSeconds;
  /// The log message verbosity level. The verbosity level determines the amount of Informational and Debug messages MongoDB outputs. 0 includes informational messages while 1...5 increases the level to include debug messages. <em>Changing this parameter will lead to a restart of the MongoDB service.</em> Learn more [here](https://www.mongodb.com/docs/manual/reference/configuration-options/#mongodb-setting-systemLog.verbosity).
  final pulumi.Input<int>? verbosity;

  /// Creates a new [DatabaseMongodbConfigArgs].
  /// [clusterId] The ID of the target MongoDB cluster.
  /// [defaultReadConcern] Specifies the default consistency behavior of reads from the database. Data that is returned from the query with may or may not have been acknowledged by all nodes in the replicaset depending on this value. Learn more [here](https://www.mongodb.com/docs/manual/reference/read-concern/).
  /// [defaultWriteConcern] Describes the level of acknowledgment requested from MongoDB for write operations clusters. This field can set to either `majority` or a number`0...n` which will describe the number of nodes that must acknowledge the write operation before it is fully accepted. Setting to `0` will request no acknowledgement of the write operation. Learn more [here](https://www.mongodb.com/docs/manual/reference/write-concern/).
  /// [slowOpThresholdMs] Operations that run for longer than this threshold are considered slow which are then recorded to the diagnostic logs. Higher log levels (verbosity) will record all operations regardless of this threshold on the primary node. <em>Changing this parameter will lead to a restart of the MongoDB service.</em> Learn more [here](https://www.mongodb.com/docs/manual/reference/configuration-options/#mongodb-setting-operationProfiling.slowOpThresholdMs).
  /// [transactionLifetimeLimitSeconds] Specifies the lifetime of multi-document transactions. Transactions that exceed this limit are considered expired and will be aborted by a periodic cleanup process. The cleanup process runs every `transactionLifetimeLimitSeconds/2 seconds` or at least once every 60 seconds. <em>Changing this parameter will lead to a restart of the MongoDB service.</em> Learn more [here](https://www.mongodb.com/docs/manual/reference/parameters/#mongodb-parameter-param.transactionLifetimeLimitSeconds).
  /// [verbosity] The log message verbosity level. The verbosity level determines the amount of Informational and Debug messages MongoDB outputs. 0 includes informational messages while 1...5 increases the level to include debug messages. <em>Changing this parameter will lead to a restart of the MongoDB service.</em> Learn more [here](https://www.mongodb.com/docs/manual/reference/configuration-options/#mongodb-setting-systemLog.verbosity).
  DatabaseMongodbConfigArgs({
    required pulumi.Output<String> clusterId,
    pulumi.Output<String>? defaultReadConcern,
    pulumi.Output<String>? defaultWriteConcern,
    pulumi.Output<int>? slowOpThresholdMs,
    pulumi.Output<int>? transactionLifetimeLimitSeconds,
    pulumi.Output<int>? verbosity,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      defaultReadConcern = pulumi.Input.asOptionalInput<String>(defaultReadConcern),
      defaultWriteConcern = pulumi.Input.asOptionalInput<String>(defaultWriteConcern),
      slowOpThresholdMs = pulumi.Input.asOptionalInput<int>(slowOpThresholdMs),
      transactionLifetimeLimitSeconds = pulumi.Input.asOptionalInput<int>(transactionLifetimeLimitSeconds),
      verbosity = pulumi.Input.asOptionalInput<int>(verbosity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'defaultReadConcern': ?defaultReadConcern,
      'defaultWriteConcern': ?defaultWriteConcern,
      'slowOpThresholdMs': ?slowOpThresholdMs,
      'transactionLifetimeLimitSeconds': ?transactionLifetimeLimitSeconds,
      'verbosity': ?verbosity,
    };
  }

  factory DatabaseMongodbConfigArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseMongodbConfigArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      defaultReadConcern: map['defaultReadConcern'] == null ? null : pulumi.Output.create<String>(map['defaultReadConcern'] as String),
      defaultWriteConcern: map['defaultWriteConcern'] == null ? null : pulumi.Output.create<String>(map['defaultWriteConcern'] as String),
      slowOpThresholdMs: map['slowOpThresholdMs'] == null ? null : pulumi.Output.create<int>(map['slowOpThresholdMs'] as int),
      transactionLifetimeLimitSeconds: map['transactionLifetimeLimitSeconds'] == null ? null : pulumi.Output.create<int>(map['transactionLifetimeLimitSeconds'] as int),
      verbosity: map['verbosity'] == null ? null : pulumi.Output.create<int>(map['verbosity'] as int),
    );
  }
}

