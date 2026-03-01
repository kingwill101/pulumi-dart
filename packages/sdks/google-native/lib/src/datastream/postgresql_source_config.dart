// ignore_for_file: unused_element, unnecessary_cast

import 'postgresql_rdbms.dart';

/// PostgreSQL data source configuration
class PostgresqlSourceConfig {
  /// PostgreSQL objects to exclude from the stream.
  final PostgresqlRdbms? excludeObjects;
  /// PostgreSQL objects to include in the stream.
  final PostgresqlRdbms? includeObjects;
  /// Maximum number of concurrent backfill tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  final int? maxConcurrentBackfillTasks;
  /// The name of the publication that includes the set of all tables that are defined in the stream's include_objects.
  final String publication;
  /// Immutable. The name of the logical replication slot that's configured with the pgoutput plugin.
  final String replicationSlot;

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
      'excludeObjects': ?excludeObjects == null ? null : excludeObjects!.toMap(),
      'includeObjects': ?includeObjects == null ? null : includeObjects!.toMap(),
      'maxConcurrentBackfillTasks': ?maxConcurrentBackfillTasks,
      'publication': publication,
      'replicationSlot': replicationSlot,
    };
  }

  factory PostgresqlSourceConfig.fromMap(Map<String, dynamic> map) {
    return PostgresqlSourceConfig(
      excludeObjects: map['excludeObjects'] == null ? null : PostgresqlRdbms.fromMap((map['excludeObjects'] as Map).cast<String, dynamic>()),
      includeObjects: map['includeObjects'] == null ? null : PostgresqlRdbms.fromMap((map['includeObjects'] as Map).cast<String, dynamic>()),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] == null ? null : map['maxConcurrentBackfillTasks'] as int,
      publication: map['publication'] as String,
      replicationSlot: map['replicationSlot'] as String,
    );
  }
}

