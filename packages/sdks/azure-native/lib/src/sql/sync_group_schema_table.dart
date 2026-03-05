// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_group_schema_table_column.dart';

/// Properties of table in sync group schema.
class SyncGroupSchemaTable {
  /// List of columns in sync group schema.
  final pulumi.Input<List<SyncGroupSchemaTableColumn>>? columns;
  /// Quoted name of sync group schema table.
  final pulumi.Input<String>? quotedName;

  /// Creates a new [SyncGroupSchemaTable].
  /// [columns] List of columns in sync group schema.
  /// [quotedName] Quoted name of sync group schema table.
  SyncGroupSchemaTable({
    this.columns,
    this.quotedName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<SyncGroupSchemaTableColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<SyncGroupSchemaTableColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quotedName': ?quotedName,
    };
  }

  factory SyncGroupSchemaTable.fromMap(Map<String, dynamic> map) {
    return SyncGroupSchemaTable(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SyncGroupSchemaTableColumn>(guardedValue, (value) => SyncGroupSchemaTableColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      quotedName: (() { final guardedValue = map['quotedName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

