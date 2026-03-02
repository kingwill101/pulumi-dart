// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_group_schema_table_column_response.dart';

/// Properties of table in sync group schema.
class SyncGroupSchemaTableResponse {
  /// List of columns in sync group schema.
  final pulumi.Input<List<SyncGroupSchemaTableColumnResponse>>? columns;
  /// Quoted name of sync group schema table.
  final pulumi.Input<String>? quotedName;

  /// Creates a new [SyncGroupSchemaTableResponse].
  /// [columns] List of columns in sync group schema.
  /// [quotedName] Quoted name of sync group schema table.
  SyncGroupSchemaTableResponse({
    this.columns,
    this.quotedName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<SyncGroupSchemaTableColumnResponse>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<SyncGroupSchemaTableColumnResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quotedName': ?quotedName,
    };
  }

  factory SyncGroupSchemaTableResponse.fromMap(Map<String, dynamic> map) {
    return SyncGroupSchemaTableResponse(
      columns: map['columns'] == null ? null : (pulumi.Input.decodeList<SyncGroupSchemaTableColumnResponse>(map['columns'], (value) => SyncGroupSchemaTableColumnResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      quotedName: map['quotedName'] == null ? null : (map['quotedName'] as String).input(),
    );
  }
}

