// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Representation of a column within a schema. Columns could be nested inside other columns.
class GoogleCloudDatacatalogV1beta1ColumnSchema {
  /// Name of the column.
  final pulumi.Input<String> column;

  /// Optional. Description of the column. Default value is an empty string.
  final pulumi.Input<String>? description;

  /// Optional. A column's mode indicates whether the values in this column are required, nullable, etc. Only `NULLABLE`, `REQUIRED` and `REPEATED` are supported. Default mode is `NULLABLE`.
  final pulumi.Input<String>? mode;

  /// Optional. Schema of sub-columns. A column can have zero or more sub-columns.
  final pulumi.Input<List<GoogleCloudDatacatalogV1beta1ColumnSchema>>?
  subcolumns;

  /// Type of the column.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDatacatalogV1beta1ColumnSchema].
  /// [column] Name of the column.
  /// [description] Optional. Description of the column. Default value is an empty string.
  /// [mode] Optional. A column's mode indicates whether the values in this column are required, nullable, etc. Only `NULLABLE`, `REQUIRED` and `REPEATED` are supported. Default mode is `NULLABLE`.
  /// [subcolumns] Optional. Schema of sub-columns. A column can have zero or more sub-columns.
  /// [type] Type of the column.
  GoogleCloudDatacatalogV1beta1ColumnSchema({
    required this.column,
    this.description,
    this.mode,
    this.subcolumns,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'description': ?description,
      'mode': ?mode,
      'subcolumns':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudDatacatalogV1beta1ColumnSchema>,
            List<Map<String, dynamic>>
          >(
            subcolumns,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDatacatalogV1beta1ColumnSchema,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'type': type,
    };
  }

  factory GoogleCloudDatacatalogV1beta1ColumnSchema.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1beta1ColumnSchema(
      column: pulumi.Input.fromValue(map['column'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subcolumns: (() {
        final guardedValue = map['subcolumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudDatacatalogV1beta1ColumnSchema>(
            guardedValue,
            (value) => GoogleCloudDatacatalogV1beta1ColumnSchema.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
