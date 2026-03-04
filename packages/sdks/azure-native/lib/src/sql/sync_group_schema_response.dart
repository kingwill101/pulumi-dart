// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_group_schema_table_response.dart';

/// Properties of sync group schema.
class SyncGroupSchemaResponse {
  /// Name of master sync member where the schema is from.
  final pulumi.Input<String>? masterSyncMemberName;

  /// List of tables in sync group schema.
  final pulumi.Input<List<SyncGroupSchemaTableResponse>>? tables;

  /// Creates a new [SyncGroupSchemaResponse].
  /// [masterSyncMemberName] Name of master sync member where the schema is from.
  /// [tables] List of tables in sync group schema.
  SyncGroupSchemaResponse({this.masterSyncMemberName, this.tables});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'masterSyncMemberName': ?masterSyncMemberName,
      'tables':
          ?pulumi.Input.mapOptionalInputValue<
            List<SyncGroupSchemaTableResponse>,
            List<Map<String, dynamic>>
          >(
            tables,
            (value) =>
                pulumi.Input.encodeList<
                  SyncGroupSchemaTableResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory SyncGroupSchemaResponse.fromMap(Map<String, dynamic> map) {
    return SyncGroupSchemaResponse(
      masterSyncMemberName: (() {
        final guardedValue = map['masterSyncMemberName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tables: (() {
        final guardedValue = map['tables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SyncGroupSchemaTableResponse>(
            guardedValue,
            (value) => SyncGroupSchemaTableResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
