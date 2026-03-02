// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionCloudSpanner {
  /// Cloud Spanner database in the form `project/instance/database'.
  final pulumi.Input<String> database;
  /// Cloud Spanner database role for fine-grained access control. The Cloud Spanner admin should have provisioned the database role with appropriate permissions, such as `SELECT` and `INSERT`. Other users should only use roles provided by their Cloud Spanner admins. The database role name must start with a letter, and can only contain letters, numbers, and underscores. For more details, see https://cloud.google.com/spanner/docs/fgac-about.
  final pulumi.Input<String>? databaseRole;
  /// Allows setting max parallelism per query when executing on Spanner independent compute resources. If unspecified, default values of parallelism are chosen that are dependent on the Cloud Spanner instance configuration. `useParallelism` and `useDataBoost` must be set when setting max parallelism.
  final pulumi.Input<int>? maxParallelism;
  /// If set, the request will be executed via Spanner independent compute resources. `use_parallelism` must be set when using data boost.
  final pulumi.Input<bool>? useDataBoost;
  /// If parallelism should be used when reading from Cloud Spanner.
  final pulumi.Input<bool>? useParallelism;
  /// (Optional, Deprecated)
  /// If the serverless analytics service should be used to read data from Cloud Spanner. `useParallelism` must be set when using serverless analytics.
  ///
  /// > **Warning:** `useServerlessAnalytics` is deprecated and will be removed in a future major release. Use `useDataBoost` instead.
  final pulumi.Input<bool>? useServerlessAnalytics;

  /// Creates a new [ConnectionCloudSpanner].
  /// [database] Cloud Spanner database in the form `project/instance/database'.
  /// [databaseRole] Cloud Spanner database role for fine-grained access control. The Cloud Spanner admin should have provisioned the database role with appropriate permissions, such as `SELECT` and `INSERT`. Other users should only use roles provided by their Cloud Spanner admins. The database role name must start with a letter, and can only contain letters, numbers, and underscores. For more details, see https://cloud.google.com/spanner/docs/fgac-about.
  /// [maxParallelism] Allows setting max parallelism per query when executing on Spanner independent compute resources. If unspecified, default values of parallelism are chosen that are dependent on the Cloud Spanner instance configuration. `useParallelism` and `useDataBoost` must be set when setting max parallelism.
  /// [useDataBoost] If set, the request will be executed via Spanner independent compute resources. `use_parallelism` must be set when using data boost.
  /// [useParallelism] If parallelism should be used when reading from Cloud Spanner.
  /// [useServerlessAnalytics] (Optional, Deprecated)
  ConnectionCloudSpanner({
    required this.database,
    this.databaseRole,
    this.maxParallelism,
    this.useDataBoost,
    this.useParallelism,
    this.useServerlessAnalytics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'databaseRole': ?databaseRole,
      'maxParallelism': ?maxParallelism,
      'useDataBoost': ?useDataBoost,
      'useParallelism': ?useParallelism,
      'useServerlessAnalytics': ?useServerlessAnalytics,
    };
  }

  factory ConnectionCloudSpanner.fromMap(Map<String, dynamic> map) {
    return ConnectionCloudSpanner(
      database: (map['database'] as String).input(),
      databaseRole: map['databaseRole'] == null ? null : (map['databaseRole'] as String).input(),
      maxParallelism: map['maxParallelism'] == null ? null : (map['maxParallelism'] as int).input(),
      useDataBoost: map['useDataBoost'] == null ? null : (map['useDataBoost'] as bool).input(),
      useParallelism: map['useParallelism'] == null ? null : (map['useParallelism'] as bool).input(),
      useServerlessAnalytics: map['useServerlessAnalytics'] == null ? null : (map['useServerlessAnalytics'] as bool).input(),
    );
  }
}

