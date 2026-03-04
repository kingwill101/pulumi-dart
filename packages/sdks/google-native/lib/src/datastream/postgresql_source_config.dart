// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_rdbms.dart';

/// PostgreSQL data source configuration
class PostgresqlSourceConfig {
  /// PostgreSQL objects to exclude from the stream.
  final pulumi.Input<PostgresqlRdbms>? excludeObjects;

  /// PostgreSQL objects to include in the stream.
  final pulumi.Input<PostgresqlRdbms>? includeObjects;

  /// Maximum number of concurrent backfill tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  final pulumi.Input<int>? maxConcurrentBackfillTasks;

  /// The name of the publication that includes the set of all tables that are defined in the stream's include_objects.
  final pulumi.Input<String> publication;

  /// Immutable. The name of the logical replication slot that's configured with the pgoutput plugin.
  final pulumi.Input<String> replicationSlot;

  /// Creates a new [PostgresqlSourceConfig].
  /// [excludeObjects] PostgreSQL objects to exclude from the stream.
  /// [includeObjects] PostgreSQL objects to include in the stream.
  /// [maxConcurrentBackfillTasks] Maximum number of concurrent backfill tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  /// [publication] The name of the publication that includes the set of all tables that are defined in the stream's include_objects.
  /// [replicationSlot] Immutable. The name of the logical replication slot that's configured with the pgoutput plugin.
  PostgresqlSourceConfig({
    this.excludeObjects,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
    required this.publication,
    required this.replicationSlot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeObjects':
          ?pulumi.Input.mapOptionalInputValue<
            PostgresqlRdbms,
            Map<String, dynamic>
          >(excludeObjects, (value) => value.toMap()),
      'includeObjects':
          ?pulumi.Input.mapOptionalInputValue<
            PostgresqlRdbms,
            Map<String, dynamic>
          >(includeObjects, (value) => value.toMap()),
      'maxConcurrentBackfillTasks': ?maxConcurrentBackfillTasks,
      'publication': publication,
      'replicationSlot': replicationSlot,
    };
  }

  factory PostgresqlSourceConfig.fromMap(Map<String, dynamic> map) {
    return PostgresqlSourceConfig(
      excludeObjects: (() {
        final guardedValue = map['excludeObjects'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PostgresqlRdbms.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      includeObjects: (() {
        final guardedValue = map['includeObjects'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PostgresqlRdbms.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maxConcurrentBackfillTasks: (() {
        final guardedValue = map['maxConcurrentBackfillTasks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      publication: pulumi.Input.fromValue(map['publication'] as String),
      replicationSlot: pulumi.Input.fromValue(map['replicationSlot'] as String),
    );
  }
}
