// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_table_autoscale_settings.dart';
import 'cassandra_table_schema.dart';

/// {@template pulumi_cosmosdb_cassandra_table_cassandra_table_args_doc}
/// The set of arguments for CassandraTable.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_cassandra_table_cassandra_table_args_doc}
class CassandraTableArgs {
  /// Time to live of the Analytical Storage. Possible values are between `-1` and `2147483647` except `0`. `-1` means the Analytical Storage never expires. Changing this forces a new resource to be created.
  ///
  /// > **Note:** throughput has a maximum value of `1000000` unless a higher limit is requested via Azure Support
  final pulumi.Input<int>? analyticalStorageTtl;
  /// An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  ///
  /// > **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  final pulumi.Input<CassandraTableAutoscaleSettings>? autoscaleSettings;
  /// The ID of the Cosmos DB Cassandra Keyspace to create the table within. Changing this forces a new resource to be created.
  final pulumi.Input<String> cassandraKeyspaceId;
  /// Time to live of the Cosmos DB Cassandra table. Possible values are at least `-1`. `-1` means the Cassandra table never expires.
  final pulumi.Input<int>? defaultTtl;
  /// Specifies the name of the Cosmos DB Cassandra Table. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `schema` block as defined below.
  final pulumi.Input<CassandraTableSchema> schema;
  /// The throughput of Cassandra KeySpace (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  final pulumi.Input<int>? throughput;

  /// Creates a new [CassandraTableArgs].
  /// [analyticalStorageTtl] Time to live of the Analytical Storage. Possible values are between `-1` and `2147483647` except `0`. `-1` means the Analytical Storage never expires. Changing this forces a new resource to be created.
  /// [autoscaleSettings] An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  /// [cassandraKeyspaceId] The ID of the Cosmos DB Cassandra Keyspace to create the table within. Changing this forces a new resource to be created.
  /// [defaultTtl] Time to live of the Cosmos DB Cassandra table. Possible values are at least `-1`. `-1` means the Cassandra table never expires.
  /// [name] Specifies the name of the Cosmos DB Cassandra Table. Changing this forces a new resource to be created.
  /// [schema] A `schema` block as defined below.
  /// [throughput] The throughput of Cassandra KeySpace (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  CassandraTableArgs({
    this.analyticalStorageTtl,
    this.autoscaleSettings,
    required this.cassandraKeyspaceId,
    this.defaultTtl,
    this.name,
    required this.schema,
    this.throughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticalStorageTtl': ?analyticalStorageTtl,
      'autoscaleSettings': ?pulumi.Input.mapOptionalInputValue<CassandraTableAutoscaleSettings, Map<String, dynamic>>(autoscaleSettings, (value) => value.toMap()),
      'cassandraKeyspaceId': cassandraKeyspaceId,
      'defaultTtl': ?defaultTtl,
      'name': ?name,
      'schema': pulumi.Input.mapInputValue<CassandraTableSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'throughput': ?throughput,
    };
  }

  factory CassandraTableArgs.fromMap(Map<String, dynamic> map) {
    return CassandraTableArgs(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : (map['analyticalStorageTtl'] as int).input(),
      autoscaleSettings: map['autoscaleSettings'] == null ? null : (CassandraTableAutoscaleSettings.fromMap((map['autoscaleSettings'] as Map).cast<String, dynamic>())).input(),
      cassandraKeyspaceId: (map['cassandraKeyspaceId'] as String).input(),
      defaultTtl: map['defaultTtl'] == null ? null : (map['defaultTtl'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      schema: (CassandraTableSchema.fromMap((map['schema'] as Map).cast<String, dynamic>())).input(),
      throughput: map['throughput'] == null ? null : (map['throughput'] as int).input(),
    );
  }
}

