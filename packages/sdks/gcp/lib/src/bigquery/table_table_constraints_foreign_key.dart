// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_table_constraints_foreign_key_column_references.dart';
import 'table_table_constraints_foreign_key_referenced_table.dart';

class TableTableConstraintsForeignKey {
  /// The pair of the foreign key column and primary key column.
  /// Structure is documented below.
  final pulumi.Input<TableTableConstraintsForeignKeyColumnReferences>
  columnReferences;

  /// Set only if the foreign key constraint is named.
  final pulumi.Input<String>? name;

  /// The table that holds the primary key
  /// and is referenced by this foreign key.
  /// Structure is documented below.
  final pulumi.Input<TableTableConstraintsForeignKeyReferencedTable>
  referencedTable;

  /// Creates a new [TableTableConstraintsForeignKey].
  /// [columnReferences] The pair of the foreign key column and primary key column.
  /// [name] Set only if the foreign key constraint is named.
  /// [referencedTable] The table that holds the primary key
  TableTableConstraintsForeignKey({
    required this.columnReferences,
    this.name,
    required this.referencedTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnReferences':
          pulumi.Input.mapInputValue<
            TableTableConstraintsForeignKeyColumnReferences,
            Map<String, dynamic>
          >(columnReferences, (value) => value.toMap()),
      'name': ?name,
      'referencedTable':
          pulumi.Input.mapInputValue<
            TableTableConstraintsForeignKeyReferencedTable,
            Map<String, dynamic>
          >(referencedTable, (value) => value.toMap()),
    };
  }

  factory TableTableConstraintsForeignKey.fromMap(Map<String, dynamic> map) {
    return TableTableConstraintsForeignKey(
      columnReferences: pulumi.Input.fromValue(
        TableTableConstraintsForeignKeyColumnReferences.fromMap(
          (map['columnReferences']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      referencedTable: pulumi.Input.fromValue(
        TableTableConstraintsForeignKeyReferencedTable.fromMap(
          (map['referencedTable']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
