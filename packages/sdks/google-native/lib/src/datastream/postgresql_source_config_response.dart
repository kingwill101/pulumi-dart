// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_rdbms_response.dart';

/// PostgreSQL data source configuration
class PostgresqlSourceConfigResponse {
  /// PostgreSQL objects to exclude from the stream.
  final pulumi.Input<PostgresqlRdbmsResponse> excludeObjects;
  /// PostgreSQL objects to include in the stream.
  final pulumi.Input<PostgresqlRdbmsResponse> includeObjects;
  /// Maximum number of concurrent backfill tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  final pulumi.Input<int> maxConcurrentBackfillTasks;
  /// The name of the publication that includes the set of all tables that are defined in the stream's include_objects.
  final pulumi.Input<String> publication;
  /// Immutable. The name of the logical replication slot that's configured with the pgoutput plugin.
  final pulumi.Input<String> replicationSlot;

  /// Creates a new [PostgresqlSourceConfigResponse].
  /// [excludeObjects] PostgreSQL objects to exclude from the stream.
  /// [includeObjects] PostgreSQL objects to include in the stream.
  /// [maxConcurrentBackfillTasks] Maximum number of concurrent backfill tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  /// [publication] The name of the publication that includes the set of all tables that are defined in the stream's include_objects.
  /// [replicationSlot] Immutable. The name of the logical replication slot that's configured with the pgoutput plugin.
  const PostgresqlSourceConfigResponse({
    required this.excludeObjects,
    required this.includeObjects,
    required this.maxConcurrentBackfillTasks,
    required this.publication,
    required this.replicationSlot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeObjects': pulumi.Input.mapInputValue<PostgresqlRdbmsResponse, Map<String, dynamic>>(excludeObjects, (value) => value.toMap()),
      'includeObjects': pulumi.Input.mapInputValue<PostgresqlRdbmsResponse, Map<String, dynamic>>(includeObjects, (value) => value.toMap()),
      'maxConcurrentBackfillTasks': maxConcurrentBackfillTasks,
      'publication': publication,
      'replicationSlot': replicationSlot,
    };
  }

  factory PostgresqlSourceConfigResponse.fromMap(Map<String, dynamic> map) {
    return PostgresqlSourceConfigResponse(
      excludeObjects: pulumi.Input.fromValue(PostgresqlRdbmsResponse.fromMap((map['excludeObjects']! as Map).cast<String, dynamic>())),
      includeObjects: pulumi.Input.fromValue(PostgresqlRdbmsResponse.fromMap((map['includeObjects']! as Map).cast<String, dynamic>())),
      maxConcurrentBackfillTasks: pulumi.Input.fromValue(map['maxConcurrentBackfillTasks'] as int),
      publication: pulumi.Input.fromValue(map['publication'] as String),
      replicationSlot: pulumi.Input.fromValue(map['replicationSlot'] as String),
    );
  }
}

