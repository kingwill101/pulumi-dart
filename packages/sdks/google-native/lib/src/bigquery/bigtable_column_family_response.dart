// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bigtable_column_response.dart';

class BigtableColumnFamilyResponse {
  /// [Optional] Lists of columns that should be exposed as individual fields as opposed to a list of (column name, value) pairs. All columns whose qualifier matches a qualifier in this list can be accessed as .. Other columns can be accessed as a list through .Column field.
  final pulumi.Input<List<BigtableColumnResponse>> columns;
  /// [Optional] The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. This can be overridden for a specific column by listing that column in 'columns' and specifying an encoding for it.
  final pulumi.Input<String> encoding;
  /// Identifier of the column family.
  final pulumi.Input<String> familyId;
  /// [Optional] If this is set only the latest version of value are exposed for all columns in this column family. This can be overridden for a specific column by listing that column in 'columns' and specifying a different setting for that column.
  final pulumi.Input<bool> onlyReadLatest;
  /// [Optional] The type to convert the value in cells of this column family. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive) - BYTES STRING INTEGER FLOAT BOOLEAN Default type is BYTES. This can be overridden for a specific column by listing that column in 'columns' and specifying a type for it.
  final pulumi.Input<String> type;

  /// Creates a new [BigtableColumnFamilyResponse].
  /// [columns] [Optional] Lists of columns that should be exposed as individual fields as opposed to a list of (column name, value) pairs. All columns whose qualifier matches a qualifier in this list can be accessed as .. Other columns can be accessed as a list through .Column field.
  /// [encoding] [Optional] The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. This can be overridden for a specific column by listing that column in 'columns' and specifying an encoding for it.
  /// [familyId] Identifier of the column family.
  /// [onlyReadLatest] [Optional] If this is set only the latest version of value are exposed for all columns in this column family. This can be overridden for a specific column by listing that column in 'columns' and specifying a different setting for that column.
  /// [type] [Optional] The type to convert the value in cells of this column family. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive) - BYTES STRING INTEGER FLOAT BOOLEAN Default type is BYTES. This can be overridden for a specific column by listing that column in 'columns' and specifying a type for it.
  BigtableColumnFamilyResponse({
    required this.columns,
    required this.encoding,
    required this.familyId,
    required this.onlyReadLatest,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': pulumi.Input.mapInputValue<List<BigtableColumnResponse>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<BigtableColumnResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encoding': encoding,
      'familyId': familyId,
      'onlyReadLatest': onlyReadLatest,
      'type': type,
    };
  }

  factory BigtableColumnFamilyResponse.fromMap(Map<String, dynamic> map) {
    return BigtableColumnFamilyResponse(
      columns: pulumi.Input.fromValue(pulumi.Input.decodeList<BigtableColumnResponse>(map['columns']!, (value) => BigtableColumnResponse.fromMap((value as Map).cast<String, dynamic>()))),
      encoding: pulumi.Input.fromValue(map['encoding'] as String),
      familyId: pulumi.Input.fromValue(map['familyId'] as String),
      onlyReadLatest: pulumi.Input.fromValue(map['onlyReadLatest'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

