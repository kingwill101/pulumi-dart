// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options that change functionality of a sink exporting data to BigQuery.
class BigQueryOptionsResponse {
  /// Optional. Whether to use BigQuery's partition tables (https://cloud.google.com/bigquery/docs/partitioned-tables). By default, Cloud Logging creates dated tables based on the log entries' timestamps, e.g. syslog_20170523. With partitioned tables the date suffix is no longer present and special query syntax (https://cloud.google.com/bigquery/docs/querying-partitioned-tables) has to be used instead. In both cases, tables are sharded based on UTC timezone.
  final pulumi.Input<bool> usePartitionedTables;
  /// True if new timestamp column based partitioning is in use, false if legacy ingress-time partitioning is in use.All new sinks will have this field set true and will use timestamp column based partitioning. If use_partitioned_tables is false, this value has no meaning and will be false. Legacy sinks using partitioned tables will have this field set to false.
  final pulumi.Input<bool> usesTimestampColumnPartitioning;

  /// Creates a new [BigQueryOptionsResponse].
  /// [usePartitionedTables] Optional. Whether to use BigQuery's partition tables (https://cloud.google.com/bigquery/docs/partitioned-tables). By default, Cloud Logging creates dated tables based on the log entries' timestamps, e.g. syslog_20170523. With partitioned tables the date suffix is no longer present and special query syntax (https://cloud.google.com/bigquery/docs/querying-partitioned-tables) has to be used instead. In both cases, tables are sharded based on UTC timezone.
  /// [usesTimestampColumnPartitioning] True if new timestamp column based partitioning is in use, false if legacy ingress-time partitioning is in use.All new sinks will have this field set true and will use timestamp column based partitioning. If use_partitioned_tables is false, this value has no meaning and will be false. Legacy sinks using partitioned tables will have this field set to false.
  const BigQueryOptionsResponse({
    required this.usePartitionedTables,
    required this.usesTimestampColumnPartitioning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usePartitionedTables': usePartitionedTables,
      'usesTimestampColumnPartitioning': usesTimestampColumnPartitioning,
    };
  }

  factory BigQueryOptionsResponse.fromMap(Map<String, dynamic> map) {
    return BigQueryOptionsResponse(
      usePartitionedTables: pulumi.Input.fromValue(map['usePartitionedTables'] as bool),
      usesTimestampColumnPartitioning: pulumi.Input.fromValue(map['usesTimestampColumnPartitioning'] as bool),
    );
  }
}
