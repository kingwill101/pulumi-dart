// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_postgresql_source_config_exclude_objects.dart';
import 'stream_source_config_postgresql_source_config_include_objects.dart';

class StreamSourceConfigPostgresqlSourceConfig {
  /// PostgreSQL objects to exclude from the stream.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigPostgresqlSourceConfigExcludeObjects>? excludeObjects;
  /// PostgreSQL objects to retrieve from the source.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigPostgresqlSourceConfigIncludeObjects>? includeObjects;
  /// Maximum number of concurrent backfill tasks. The number should be non
  /// negative. If not set (or set to 0), the system's default value will be used.
  final pulumi.Input<int>? maxConcurrentBackfillTasks;
  /// The name of the publication that includes the set of all tables
  /// that are defined in the stream's include_objects.
  final pulumi.Input<String> publication;
  /// The name of the logical replication slot that's configured with
  /// the pgoutput plugin.
  final pulumi.Input<String> replicationSlot;

  /// Creates a new [StreamSourceConfigPostgresqlSourceConfig].
  /// [excludeObjects] PostgreSQL objects to exclude from the stream.
  /// [includeObjects] PostgreSQL objects to retrieve from the source.
  /// [maxConcurrentBackfillTasks] Maximum number of concurrent backfill tasks. The number should be non
  /// [publication] The name of the publication that includes the set of all tables
  /// [replicationSlot] The name of the logical replication slot that's configured with
  StreamSourceConfigPostgresqlSourceConfig({
    this.excludeObjects,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
    required this.publication,
    required this.replicationSlot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeObjects': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigPostgresqlSourceConfigExcludeObjects, Map<String, dynamic>>(excludeObjects, (value) => value.toMap()),
      'includeObjects': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigPostgresqlSourceConfigIncludeObjects, Map<String, dynamic>>(includeObjects, (value) => value.toMap()),
      'maxConcurrentBackfillTasks': ?maxConcurrentBackfillTasks,
      'publication': publication,
      'replicationSlot': replicationSlot,
    };
  }

  factory StreamSourceConfigPostgresqlSourceConfig.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigPostgresqlSourceConfig(
      excludeObjects: map['excludeObjects'] == null ? null : (StreamSourceConfigPostgresqlSourceConfigExcludeObjects.fromMap((map['excludeObjects']! as Map).cast<String, dynamic>())).input(),
      includeObjects: map['includeObjects'] == null ? null : (StreamSourceConfigPostgresqlSourceConfigIncludeObjects.fromMap((map['includeObjects']! as Map).cast<String, dynamic>())).input(),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] == null ? null : (map['maxConcurrentBackfillTasks']! as int).input(),
      publication: (map['publication'] as String).input(),
      replicationSlot: (map['replicationSlot'] as String).input(),
    );
  }
}

