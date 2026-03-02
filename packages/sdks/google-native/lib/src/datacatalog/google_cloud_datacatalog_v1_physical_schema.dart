// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_physical_schema_avro_schema.dart';
import 'google_cloud_datacatalog_v1_physical_schema_protobuf_schema.dart';
import 'google_cloud_datacatalog_v1_physical_schema_thrift_schema.dart';

/// Native schema used by a resource represented as an entry. Used by query engines for deserializing and parsing source data.
class GoogleCloudDatacatalogV1PhysicalSchema {
  /// Schema in Avro JSON format.
  final pulumi.Input<GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema>? avro;
  /// Marks a CSV-encoded data source.
  final pulumi.Input<Map<String, dynamic>>? csv;
  /// Marks an ORC-encoded data source.
  final pulumi.Input<Map<String, dynamic>>? orc;
  /// Marks a Parquet-encoded data source.
  final pulumi.Input<Map<String, dynamic>>? parquet;
  /// Schema in protocol buffer format.
  final pulumi.Input<GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema>? protobuf;
  /// Schema in Thrift format.
  final pulumi.Input<GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema>? thrift;

  /// Creates a new [GoogleCloudDatacatalogV1PhysicalSchema].
  /// [avro] Schema in Avro JSON format.
  /// [csv] Marks a CSV-encoded data source.
  /// [orc] Marks an ORC-encoded data source.
  /// [parquet] Marks a Parquet-encoded data source.
  /// [protobuf] Schema in protocol buffer format.
  /// [thrift] Schema in Thrift format.
  GoogleCloudDatacatalogV1PhysicalSchema({
    this.avro,
    this.csv,
    this.orc,
    this.parquet,
    this.protobuf,
    this.thrift,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avro': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema, Map<String, dynamic>>(avro, (value) => value.toMap()),
      'csv': ?csv,
      'orc': ?orc,
      'parquet': ?parquet,
      'protobuf': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema, Map<String, dynamic>>(protobuf, (value) => value.toMap()),
      'thrift': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema, Map<String, dynamic>>(thrift, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1PhysicalSchema.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1PhysicalSchema(
      avro: map['avro'] == null ? null : (GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema.fromMap((map['avro']! as Map).cast<String, dynamic>())).input(),
      csv: map['csv'] == null ? null : ((map['csv']! as Map).cast<String, dynamic>()).input(),
      orc: map['orc'] == null ? null : ((map['orc']! as Map).cast<String, dynamic>()).input(),
      parquet: map['parquet'] == null ? null : ((map['parquet']! as Map).cast<String, dynamic>()).input(),
      protobuf: map['protobuf'] == null ? null : (GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema.fromMap((map['protobuf']! as Map).cast<String, dynamic>())).input(),
      thrift: map['thrift'] == null ? null : (GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema.fromMap((map['thrift']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

