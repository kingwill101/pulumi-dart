// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_column_schema_highest_indexing_type.dart';
import 'google_cloud_datacatalog_v1_column_schema_looker_column_spec.dart';

/// A column within a schema. Columns can be nested inside other columns.
class GoogleCloudDatacatalogV1ColumnSchema {
  /// Name of the column. Must be a UTF-8 string without dots (.). The maximum size is 64 bytes.
  final pulumi.Input<String> column;

  /// Optional. Default value for the column.
  final pulumi.Input<String>? defaultValue;

  /// Optional. Description of the column. Default value is an empty string. The description must be a UTF-8 string with the maximum size of 2000 bytes.
  final pulumi.Input<String>? description;

  /// Optional. Garbage collection policy for the column or column family. Applies to systems like Cloud Bigtable.
  final pulumi.Input<String>? gcRule;

  /// Optional. Most important inclusion of this column.
  final pulumi.Input<GoogleCloudDatacatalogV1ColumnSchemaHighestIndexingType>?
  highestIndexingType;

  /// Looker specific column info of this column.
  final pulumi.Input<GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec>?
  lookerColumnSpec;

  /// Optional. A column's mode indicates whether values in this column are required, nullable, or repeated. Only `NULLABLE`, `REQUIRED`, and `REPEATED` values are supported. Default mode is `NULLABLE`.
  final pulumi.Input<String>? mode;

  /// Optional. Ordinal position
  final pulumi.Input<int>? ordinalPosition;

  /// Optional. Schema of sub-columns. A column can have zero or more sub-columns.
  final pulumi.Input<List<GoogleCloudDatacatalogV1ColumnSchema>>? subcolumns;

  /// Type of the column. Must be a UTF-8 string with the maximum size of 128 bytes.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDatacatalogV1ColumnSchema].
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
  GoogleCloudDatacatalogV1ColumnSchema({
    required this.column,
    this.defaultValue,
    this.description,
    this.gcRule,
    this.highestIndexingType,
    this.lookerColumnSpec,
    this.mode,
    this.ordinalPosition,
    this.subcolumns,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'defaultValue': ?defaultValue,
      'description': ?description,
      'gcRule': ?gcRule,
      'highestIndexingType':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDatacatalogV1ColumnSchemaHighestIndexingType,
            String
          >(highestIndexingType, (value) => value.wireValue),
      'lookerColumnSpec':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec,
            Map<String, dynamic>
          >(lookerColumnSpec, (value) => value.toMap()),
      'mode': ?mode,
      'ordinalPosition': ?ordinalPosition,
      'subcolumns':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudDatacatalogV1ColumnSchema>,
            List<Map<String, dynamic>>
          >(
            subcolumns,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDatacatalogV1ColumnSchema,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'type': type,
    };
  }

  factory GoogleCloudDatacatalogV1ColumnSchema.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1ColumnSchema(
      column: pulumi.Input.fromValue(map['column'] as String),
      defaultValue: (() {
        final guardedValue = map['defaultValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gcRule: (() {
        final guardedValue = map['gcRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      highestIndexingType: (() {
        final guardedValue = map['highestIndexingType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDatacatalogV1ColumnSchemaHighestIndexingType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      lookerColumnSpec: (() {
        final guardedValue = map['lookerColumnSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ordinalPosition: (() {
        final guardedValue = map['ordinalPosition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      subcolumns: (() {
        final guardedValue = map['subcolumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudDatacatalogV1ColumnSchema>(
            guardedValue,
            (value) => GoogleCloudDatacatalogV1ColumnSchema.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
