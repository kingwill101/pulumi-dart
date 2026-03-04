// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_table_constraints_foreign_key.dart';
import 'table_table_constraints_primary_key.dart';

class TableTableConstraints {
  /// Present only if the table has a foreign key.
  /// The foreign key is not enforced.
  /// Structure is documented below.
  final pulumi.Input<List<TableTableConstraintsForeignKey>>? foreignKeys;

  /// Represents the primary key constraint
  /// on a table's columns. Present only if the table has a primary key.
  /// The primary key is not enforced.
  /// Structure is documented below.
  final pulumi.Input<TableTableConstraintsPrimaryKey>? primaryKey;

  /// Creates a new [TableTableConstraints].
  /// [foreignKeys] Present only if the table has a foreign key.
  /// [primaryKey] Represents the primary key constraint
  TableTableConstraints({this.foreignKeys, this.primaryKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'foreignKeys':
          ?pulumi.Input.mapOptionalInputValue<
            List<TableTableConstraintsForeignKey>,
            List<Map<String, dynamic>>
          >(
            foreignKeys,
            (value) =>
                pulumi.Input.encodeList<
                  TableTableConstraintsForeignKey,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'primaryKey':
          ?pulumi.Input.mapOptionalInputValue<
            TableTableConstraintsPrimaryKey,
            Map<String, dynamic>
          >(primaryKey, (value) => value.toMap()),
    };
  }

  factory TableTableConstraints.fromMap(Map<String, dynamic> map) {
    return TableTableConstraints(
      foreignKeys: (() {
        final guardedValue = map['foreignKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TableTableConstraintsForeignKey>(
            guardedValue,
            (value) => TableTableConstraintsForeignKey.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      primaryKey: (() {
        final guardedValue = map['primaryKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TableTableConstraintsPrimaryKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
