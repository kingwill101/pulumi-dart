// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_external_data_configuration_bigtable_options_column_family_column.dart';

class TableExternalDataConfigurationBigtableOptionsColumnFamily {
  /// A List of columns that should be exposed as individual fields as opposed to a list of (column name, value) pairs. All columns whose qualifier matches a qualifier in this list can be accessed as Other columns can be accessed as a list through column field.  Structure is documented below.
  final pulumi.Input<List<TableExternalDataConfigurationBigtableOptionsColumnFamilyColumn>>? columns;
  /// The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. This can be overridden for a specific column by listing that column in 'columns' and specifying an encoding for it.
  final pulumi.Input<String>? encoding;
  /// Identifier of the column family.
  final pulumi.Input<String>? familyId;
  /// If this is set only the latest version of value are exposed for all columns in this column family. This can be overridden for a specific column by listing that column in 'columns' and specifying a different setting for that column.
  final pulumi.Input<bool>? onlyReadLatest;
  /// The type to convert the value in cells of this column family. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive): "BYTES", "STRING", "INTEGER", "FLOAT", "BOOLEAN", "JSON". Default type is BYTES. This can be overridden for a specific column by listing that column in 'columns' and specifying a type for it.
  final pulumi.Input<String>? type;

  /// Creates a new [TableExternalDataConfigurationBigtableOptionsColumnFamily].
  /// [columns] A List of columns that should be exposed as individual fields as opposed to a list of (column name, value) pairs. All columns whose qualifier matches a qualifier in this list can be accessed as Other columns can be accessed as a list through column field.  Structure is documented below.
  /// [encoding] The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. This can be overridden for a specific column by listing that column in 'columns' and specifying an encoding for it.
  /// [familyId] Identifier of the column family.
  /// [onlyReadLatest] If this is set only the latest version of value are exposed for all columns in this column family. This can be overridden for a specific column by listing that column in 'columns' and specifying a different setting for that column.
  /// [type] The type to convert the value in cells of this column family. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive): "BYTES", "STRING", "INTEGER", "FLOAT", "BOOLEAN", "JSON". Default type is BYTES. This can be overridden for a specific column by listing that column in 'columns' and specifying a type for it.
  TableExternalDataConfigurationBigtableOptionsColumnFamily({
    this.columns,
    this.encoding,
    this.familyId,
    this.onlyReadLatest,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<TableExternalDataConfigurationBigtableOptionsColumnFamilyColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<TableExternalDataConfigurationBigtableOptionsColumnFamilyColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encoding': ?encoding,
      'familyId': ?familyId,
      'onlyReadLatest': ?onlyReadLatest,
      'type': ?type,
    };
  }

  factory TableExternalDataConfigurationBigtableOptionsColumnFamily.fromMap(Map<String, dynamic> map) {
    return TableExternalDataConfigurationBigtableOptionsColumnFamily(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TableExternalDataConfigurationBigtableOptionsColumnFamilyColumn>(guardedValue, (value) => TableExternalDataConfigurationBigtableOptionsColumnFamilyColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      familyId: (() { final guardedValue = map['familyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onlyReadLatest: (() { final guardedValue = map['onlyReadLatest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

