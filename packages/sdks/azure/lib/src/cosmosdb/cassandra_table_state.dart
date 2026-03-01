// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_table_autoscale_settings.dart';
import 'cassandra_table_schema.dart';

/// Input properties used for looking up and filtering CassandraTable resources.
class CassandraTableState {
  /// Time to live of the Analytical Storage. Possible values are between `-1` and `2147483647` except `0`. `-1` means the Analytical Storage never expires. Changing this forces a new resource to be created.
  ///
  /// > **Note:** throughput has a maximum value of `1000000` unless a higher limit is requested via Azure Support
  final pulumi.Input<int>? analyticalStorageTtl;
  /// An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  ///
  /// > **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  final pulumi.Input<CassandraTableAutoscaleSettings>? autoscaleSettings;
  /// The ID of the Cosmos DB Cassandra Keyspace to create the table within. Changing this forces a new resource to be created.
  final pulumi.Input<String>? cassandraKeyspaceId;
  /// Time to live of the Cosmos DB Cassandra table. Possible values are at least `-1`. `-1` means the Cassandra table never expires.
  final pulumi.Input<int>? defaultTtl;
  /// Specifies the name of the Cosmos DB Cassandra Table. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `schema` block as defined below.
  final pulumi.Input<CassandraTableSchema>? schema;
  /// The throughput of Cassandra KeySpace (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  final pulumi.Input<int>? throughput;

  /// Creates a new [CassandraTableState].
  /// [analyticalStorageTtl] Time to live of the Analytical Storage. Possible values are between `-1` and `2147483647` except `0`. `-1` means the Analytical Storage never expires. Changing this forces a new resource to be created.
  /// [autoscaleSettings] An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  /// [cassandraKeyspaceId] The ID of the Cosmos DB Cassandra Keyspace to create the table within. Changing this forces a new resource to be created.
  /// [defaultTtl] Time to live of the Cosmos DB Cassandra table. Possible values are at least `-1`. `-1` means the Cassandra table never expires.
  /// [name] Specifies the name of the Cosmos DB Cassandra Table. Changing this forces a new resource to be created.
  /// [schema] A `schema` block as defined below.
  /// [throughput] The throughput of Cassandra KeySpace (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  CassandraTableState({
    pulumi.Output<int>? analyticalStorageTtl,
    pulumi.Output<CassandraTableAutoscaleSettings>? autoscaleSettings,
    pulumi.Output<String>? cassandraKeyspaceId,
    pulumi.Output<int>? defaultTtl,
    pulumi.Output<String>? name,
    pulumi.Output<CassandraTableSchema>? schema,
    pulumi.Output<int>? throughput,
  }) :
      analyticalStorageTtl = pulumi.Input.asOptionalInput<int>(analyticalStorageTtl),
      autoscaleSettings = pulumi.Input.asOptionalInput<CassandraTableAutoscaleSettings>(autoscaleSettings),
      cassandraKeyspaceId = pulumi.Input.asOptionalInput<String>(cassandraKeyspaceId),
      defaultTtl = pulumi.Input.asOptionalInput<int>(defaultTtl),
      name = pulumi.Input.asOptionalInput<String>(name),
      schema = pulumi.Input.asOptionalInput<CassandraTableSchema>(schema),
      throughput = pulumi.Input.asOptionalInput<int>(throughput);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticalStorageTtl': ?analyticalStorageTtl,
      'autoscaleSettings': ?pulumi.Input.mapOptionalInputValue<CassandraTableAutoscaleSettings, Map<String, dynamic>>(autoscaleSettings, (value) => value.toMap()),
      'cassandraKeyspaceId': ?cassandraKeyspaceId,
      'defaultTtl': ?defaultTtl,
      'name': ?name,
      'schema': ?pulumi.Input.mapOptionalInputValue<CassandraTableSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'throughput': ?throughput,
    };
  }

  factory CassandraTableState.fromMap(Map<String, dynamic> map) {
    return CassandraTableState(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : pulumi.Output.create<int>(map['analyticalStorageTtl'] as int),
      autoscaleSettings: map['autoscaleSettings'] == null ? null : pulumi.Output.create<CassandraTableAutoscaleSettings>(CassandraTableAutoscaleSettings.fromMap((map['autoscaleSettings'] as Map).cast<String, dynamic>())),
      cassandraKeyspaceId: map['cassandraKeyspaceId'] == null ? null : pulumi.Output.create<String>(map['cassandraKeyspaceId'] as String),
      defaultTtl: map['defaultTtl'] == null ? null : pulumi.Output.create<int>(map['defaultTtl'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      schema: map['schema'] == null ? null : pulumi.Output.create<CassandraTableSchema>(CassandraTableSchema.fromMap((map['schema'] as Map).cast<String, dynamic>())),
      throughput: map['throughput'] == null ? null : pulumi.Output.create<int>(map['throughput'] as int),
    );
  }
}

