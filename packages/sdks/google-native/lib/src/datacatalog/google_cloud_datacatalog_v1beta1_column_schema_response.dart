// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Representation of a column within a schema. Columns could be nested inside other columns.
class GoogleCloudDatacatalogV1beta1ColumnSchemaResponse {
  /// Name of the column.
  final pulumi.Input<String> column;
  /// Optional. Description of the column. Default value is an empty string.
  final pulumi.Input<String> description;
  /// Optional. A column's mode indicates whether the values in this column are required, nullable, etc. Only `NULLABLE`, `REQUIRED` and `REPEATED` are supported. Default mode is `NULLABLE`.
  final pulumi.Input<String> mode;
  /// Optional. Schema of sub-columns. A column can have zero or more sub-columns.
  final pulumi.Input<List<GoogleCloudDatacatalogV1beta1ColumnSchemaResponse>> subcolumns;
  /// Type of the column.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDatacatalogV1beta1ColumnSchemaResponse].
  /// [column] Name of the column.
  /// [description] Optional. Description of the column. Default value is an empty string.
  /// [mode] Optional. A column's mode indicates whether the values in this column are required, nullable, etc. Only `NULLABLE`, `REQUIRED` and `REPEATED` are supported. Default mode is `NULLABLE`.
  /// [subcolumns] Optional. Schema of sub-columns. A column can have zero or more sub-columns.
  /// [type] Type of the column.
  const GoogleCloudDatacatalogV1beta1ColumnSchemaResponse({
    required this.column,
    required this.description,
    required this.mode,
    required this.subcolumns,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'description': description,
      'mode': mode,
      'subcolumns': pulumi.Input.mapInputValue<List<GoogleCloudDatacatalogV1beta1ColumnSchemaResponse>, List<Map<String, dynamic>>>(subcolumns, (value) => pulumi.Input.encodeList<GoogleCloudDatacatalogV1beta1ColumnSchemaResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory GoogleCloudDatacatalogV1beta1ColumnSchemaResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1beta1ColumnSchemaResponse(
      column: pulumi.Input.fromValue(map['column'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      subcolumns: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDatacatalogV1beta1ColumnSchemaResponse>(map['subcolumns']!, (value) => GoogleCloudDatacatalogV1beta1ColumnSchemaResponse.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
