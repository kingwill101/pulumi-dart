// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_constraints_foreign_keys_item.dart';
import 'table_constraints_primary_key.dart';

class TableConstraints {
  /// [Optional] The foreign keys of the tables.
  final pulumi.Input<List<TableConstraintsForeignKeysItem>>? foreignKeys;
  /// [Optional] The primary key of the table.
  final pulumi.Input<TableConstraintsPrimaryKey>? primaryKey;

  /// Creates a new [TableConstraints].
  /// [foreignKeys] [Optional] The foreign keys of the tables.
  /// [primaryKey] [Optional] The primary key of the table.
  const TableConstraints({
    this.foreignKeys,
    this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'foreignKeys': ?pulumi.Input.mapOptionalInputValue<List<TableConstraintsForeignKeysItem>, List<Map<String, dynamic>>>(foreignKeys, (value) => pulumi.Input.encodeList<TableConstraintsForeignKeysItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'primaryKey': ?pulumi.Input.mapOptionalInputValue<TableConstraintsPrimaryKey, Map<String, dynamic>>(primaryKey, (value) => value.toMap()),
    };
  }

  factory TableConstraints.fromMap(Map<String, dynamic> map) {
    return TableConstraints(
      foreignKeys: (() { final guardedValue = map['foreignKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TableConstraintsForeignKeysItem>(guardedValue, (value) => TableConstraintsForeignKeysItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableConstraintsPrimaryKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
