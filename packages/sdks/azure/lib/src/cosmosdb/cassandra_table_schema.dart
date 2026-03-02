// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_table_schema_cluster_key.dart';
import 'cassandra_table_schema_column.dart';
import 'cassandra_table_schema_partition_key.dart';

class CassandraTableSchema {
  /// One or more `cluster_key` blocks as defined below.
  final pulumi.Input<List<CassandraTableSchemaClusterKey>>? clusterKeys;
  /// One or more `column` blocks as defined below.
  final pulumi.Input<List<CassandraTableSchemaColumn>> columns;
  /// One or more `partition_key` blocks as defined below.
  final pulumi.Input<List<CassandraTableSchemaPartitionKey>> partitionKeys;

  /// Creates a new [CassandraTableSchema].
  /// [clusterKeys] One or more `cluster_key` blocks as defined below.
  /// [columns] One or more `column` blocks as defined below.
  /// [partitionKeys] One or more `partition_key` blocks as defined below.
  CassandraTableSchema({
    this.clusterKeys,
    required this.columns,
    required this.partitionKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterKeys': ?pulumi.Input.mapOptionalInputValue<List<CassandraTableSchemaClusterKey>, List<Map<String, dynamic>>>(clusterKeys, (value) => pulumi.Input.encodeList<CassandraTableSchemaClusterKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'columns': pulumi.Input.mapInputValue<List<CassandraTableSchemaColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<CassandraTableSchemaColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'partitionKeys': pulumi.Input.mapInputValue<List<CassandraTableSchemaPartitionKey>, List<Map<String, dynamic>>>(partitionKeys, (value) => pulumi.Input.encodeList<CassandraTableSchemaPartitionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CassandraTableSchema.fromMap(Map<String, dynamic> map) {
    return CassandraTableSchema(
      clusterKeys: map['clusterKeys'] == null ? null : (pulumi.Input.decodeList<CassandraTableSchemaClusterKey>(map['clusterKeys']!, (value) => CassandraTableSchemaClusterKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      columns: (pulumi.Input.decodeList<CassandraTableSchemaColumn>(map['columns'], (value) => CassandraTableSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      partitionKeys: (pulumi.Input.decodeList<CassandraTableSchemaPartitionKey>(map['partitionKeys'], (value) => CassandraTableSchemaPartitionKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

