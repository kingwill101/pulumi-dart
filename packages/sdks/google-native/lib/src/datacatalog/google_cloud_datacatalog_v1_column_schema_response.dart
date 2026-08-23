// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_column_schema_looker_column_spec_response.dart';

/// A column within a schema. Columns can be nested inside other columns.
class GoogleCloudDatacatalogV1ColumnSchemaResponse {
  /// Name of the column. Must be a UTF-8 string without dots (.). The maximum size is 64 bytes.
  final pulumi.Input<String> column;
  /// Optional. Default value for the column.
  final pulumi.Input<String> defaultValue;
  /// Optional. Description of the column. Default value is an empty string. The description must be a UTF-8 string with the maximum size of 2000 bytes.
  final pulumi.Input<String> description;
  /// Optional. Garbage collection policy for the column or column family. Applies to systems like Cloud Bigtable.
  final pulumi.Input<String> gcRule;
  /// Optional. Most important inclusion of this column.
  final pulumi.Input<String> highestIndexingType;
  /// Looker specific column info of this column.
  final pulumi.Input<GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse> lookerColumnSpec;
  /// Optional. A column's mode indicates whether values in this column are required, nullable, or repeated. Only `NULLABLE`, `REQUIRED`, and `REPEATED` values are supported. Default mode is `NULLABLE`.
  final pulumi.Input<String> mode;
  /// Optional. Ordinal position
  final pulumi.Input<int> ordinalPosition;
  /// Optional. Schema of sub-columns. A column can have zero or more sub-columns.
  final pulumi.Input<List<GoogleCloudDatacatalogV1ColumnSchemaResponse>> subcolumns;
  /// Type of the column. Must be a UTF-8 string with the maximum size of 128 bytes.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDatacatalogV1ColumnSchemaResponse].
  /// [column] Name of the column. Must be a UTF-8 string without dots (.). The maximum size is 64 bytes.
  /// [defaultValue] Optional. Default value for the column.
  /// [description] Optional. Description of the column. Default value is an empty string. The description must be a UTF-8 string with the maximum size of 2000 bytes.
  /// [gcRule] Optional. Garbage collection policy for the column or column family. Applies to systems like Cloud Bigtable.
  /// [highestIndexingType] Optional. Most important inclusion of this column.
  /// [lookerColumnSpec] Looker specific column info of this column.
  /// [mode] Optional. A column's mode indicates whether values in this column are required, nullable, or repeated. Only `NULLABLE`, `REQUIRED`, and `REPEATED` values are supported. Default mode is `NULLABLE`.
  /// [ordinalPosition] Optional. Ordinal position
  /// [subcolumns] Optional. Schema of sub-columns. A column can have zero or more sub-columns.
  /// [type] Type of the column. Must be a UTF-8 string with the maximum size of 128 bytes.
  const GoogleCloudDatacatalogV1ColumnSchemaResponse({
    required this.column,
    required this.defaultValue,
    required this.description,
    required this.gcRule,
    required this.highestIndexingType,
    required this.lookerColumnSpec,
    required this.mode,
    required this.ordinalPosition,
    required this.subcolumns,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'defaultValue': defaultValue,
      'description': description,
      'gcRule': gcRule,
      'highestIndexingType': highestIndexingType,
      'lookerColumnSpec': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse, Map<String, dynamic>>(lookerColumnSpec, (value) => value.toMap()),
      'mode': mode,
      'ordinalPosition': ordinalPosition,
      'subcolumns': pulumi.Input.mapInputValue<List<GoogleCloudDatacatalogV1ColumnSchemaResponse>, List<Map<String, dynamic>>>(subcolumns, (value) => pulumi.Input.encodeList<GoogleCloudDatacatalogV1ColumnSchemaResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory GoogleCloudDatacatalogV1ColumnSchemaResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ColumnSchemaResponse(
      column: pulumi.Input.fromValue(map['column'] as String),
      defaultValue: pulumi.Input.fromValue(map['defaultValue'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      gcRule: pulumi.Input.fromValue(map['gcRule'] as String),
      highestIndexingType: pulumi.Input.fromValue(map['highestIndexingType'] as String),
      lookerColumnSpec: pulumi.Input.fromValue(GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse.fromMap((map['lookerColumnSpec']! as Map).cast<String, dynamic>())),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      ordinalPosition: pulumi.Input.fromValue(map['ordinalPosition'] as int),
      subcolumns: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDatacatalogV1ColumnSchemaResponse>(map['subcolumns']!, (value) => GoogleCloudDatacatalogV1ColumnSchemaResponse.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
