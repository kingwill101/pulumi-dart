// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_physical_schema_avro_schema_response.dart';
import 'google_cloud_datacatalog_v1_physical_schema_protobuf_schema_response.dart';
import 'google_cloud_datacatalog_v1_physical_schema_thrift_schema_response.dart';

/// Native schema used by a resource represented as an entry. Used by query engines for deserializing and parsing source data.
class GoogleCloudDatacatalogV1PhysicalSchemaResponse {
  /// Schema in Avro JSON format.
  final pulumi.Input<GoogleCloudDatacatalogV1PhysicalSchemaAvroSchemaResponse> avro;
  /// Marks a CSV-encoded data source.
  final pulumi.Input<Map<String, dynamic>> csv;
  /// Marks an ORC-encoded data source.
  final pulumi.Input<Map<String, dynamic>> orc;
  /// Marks a Parquet-encoded data source.
  final pulumi.Input<Map<String, dynamic>> parquet;
  /// Schema in protocol buffer format.
  final pulumi.Input<GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchemaResponse> protobuf;
  /// Schema in Thrift format.
  final pulumi.Input<GoogleCloudDatacatalogV1PhysicalSchemaThriftSchemaResponse> thrift;

  /// Creates a new [GoogleCloudDatacatalogV1PhysicalSchemaResponse].
  /// [avro] Schema in Avro JSON format.
  /// [csv] Marks a CSV-encoded data source.
  /// [orc] Marks an ORC-encoded data source.
  /// [parquet] Marks a Parquet-encoded data source.
  /// [protobuf] Schema in protocol buffer format.
  /// [thrift] Schema in Thrift format.
  GoogleCloudDatacatalogV1PhysicalSchemaResponse({
    required this.avro,
    required this.csv,
    required this.orc,
    required this.parquet,
    required this.protobuf,
    required this.thrift,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avro': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1PhysicalSchemaAvroSchemaResponse, Map<String, dynamic>>(avro, (value) => value.toMap()),
      'csv': csv,
      'orc': orc,
      'parquet': parquet,
      'protobuf': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchemaResponse, Map<String, dynamic>>(protobuf, (value) => value.toMap()),
      'thrift': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1PhysicalSchemaThriftSchemaResponse, Map<String, dynamic>>(thrift, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1PhysicalSchemaResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1PhysicalSchemaResponse(
      avro: pulumi.Input.fromValue(GoogleCloudDatacatalogV1PhysicalSchemaAvroSchemaResponse.fromMap((map['avro']! as Map).cast<String, dynamic>())),
      csv: pulumi.Input.fromValue((map['csv']! as Map).cast<String, dynamic>()),
      orc: pulumi.Input.fromValue((map['orc']! as Map).cast<String, dynamic>()),
      parquet: pulumi.Input.fromValue((map['parquet']! as Map).cast<String, dynamic>()),
      protobuf: pulumi.Input.fromValue(GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchemaResponse.fromMap((map['protobuf']! as Map).cast<String, dynamic>())),
      thrift: pulumi.Input.fromValue(GoogleCloudDatacatalogV1PhysicalSchemaThriftSchemaResponse.fromMap((map['thrift']! as Map).cast<String, dynamic>())),
    );
  }
}

