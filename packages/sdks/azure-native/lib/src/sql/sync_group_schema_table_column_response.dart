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
  SyncGroupSchemaTableColumnResponse({
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
      dataSize: map['dataSize'] == null ? null : (map['dataSize']! as String).input(),
      dataType: map['dataType'] == null ? null : (map['dataType']! as String).input(),
      quotedName: map['quotedName'] == null ? null : (map['quotedName']! as String).input(),
    );
  }
}

