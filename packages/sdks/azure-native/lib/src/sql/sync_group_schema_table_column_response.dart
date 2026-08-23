// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of column in sync group table.
class SyncGroupSchemaTableColumnResponse {
  /// Data size of the column.
  final pulumi.Input<String>? dataSize;
  /// Data type of the column.
  final pulumi.Input<String>? dataType;
  /// Quoted name of sync group table column.
  final pulumi.Input<String>? quotedName;

  /// Creates a new [SyncGroupSchemaTableColumnResponse].
  /// [dataSize] Data size of the column.
  /// [dataType] Data type of the column.
  /// [quotedName] Quoted name of sync group table column.
  const SyncGroupSchemaTableColumnResponse({
    this.dataSize,
    this.dataType,
    this.quotedName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSize': ?dataSize,
      'dataType': ?dataType,
      'quotedName': ?quotedName,
    };
  }

  factory SyncGroupSchemaTableColumnResponse.fromMap(Map<String, dynamic> map) {
    return SyncGroupSchemaTableColumnResponse(
      dataSize: (() { final guardedValue = map['dataSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotedName: (() { final guardedValue = map['quotedName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
