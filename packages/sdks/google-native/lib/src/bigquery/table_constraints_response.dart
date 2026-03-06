// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_constraints_foreign_keys_item_response.dart';
import 'table_constraints_primary_key_response.dart';

class TableConstraintsResponse {
  /// [Optional] The foreign keys of the tables.
  final pulumi.Input<List<TableConstraintsForeignKeysItemResponse>> foreignKeys;
  /// [Optional] The primary key of the table.
  final pulumi.Input<TableConstraintsPrimaryKeyResponse> primaryKey;

  /// Creates a new [TableConstraintsResponse].
  /// [foreignKeys] [Optional] The foreign keys of the tables.
  /// [primaryKey] [Optional] The primary key of the table.
  const TableConstraintsResponse({
    required this.foreignKeys,
    required this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'foreignKeys': pulumi.Input.mapInputValue<List<TableConstraintsForeignKeysItemResponse>, List<Map<String, dynamic>>>(foreignKeys, (value) => pulumi.Input.encodeList<TableConstraintsForeignKeysItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'primaryKey': pulumi.Input.mapInputValue<TableConstraintsPrimaryKeyResponse, Map<String, dynamic>>(primaryKey, (value) => value.toMap()),
    };
  }

  factory TableConstraintsResponse.fromMap(Map<String, dynamic> map) {
    return TableConstraintsResponse(
      foreignKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<TableConstraintsForeignKeysItemResponse>(map['foreignKeys']!, (value) => TableConstraintsForeignKeysItemResponse.fromMap((value as Map).cast<String, dynamic>()))),
      primaryKey: pulumi.Input.fromValue(TableConstraintsPrimaryKeyResponse.fromMap((map['primaryKey']! as Map).cast<String, dynamic>())),
    );
  }
}

