// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_table_constraint_foreign_key_column_reference.dart';
import 'get_table_table_constraint_foreign_key_referenced_table.dart';

class GetTableTableConstraintForeignKey {
  /// The pair of the foreign key column and primary key column.
  final pulumi.Input<List<GetTableTableConstraintForeignKeyColumnReference>> columnReferences;
  /// Set only if the foreign key constraint is named.
  final pulumi.Input<String> name;
  /// The table that holds the primary key and is referenced by this foreign key.
  final pulumi.Input<List<GetTableTableConstraintForeignKeyReferencedTable>> referencedTables;

  /// Creates a new [GetTableTableConstraintForeignKey].
  /// [columnReferences] The pair of the foreign key column and primary key column.
  /// [name] Set only if the foreign key constraint is named.
  /// [referencedTables] The table that holds the primary key and is referenced by this foreign key.
  GetTableTableConstraintForeignKey({
    required this.columnReferences,
    required this.name,
    required this.referencedTables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnReferences': pulumi.Input.mapInputValue<List<GetTableTableConstraintForeignKeyColumnReference>, List<Map<String, dynamic>>>(columnReferences, (value) => pulumi.Input.encodeList<GetTableTableConstraintForeignKeyColumnReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'referencedTables': pulumi.Input.mapInputValue<List<GetTableTableConstraintForeignKeyReferencedTable>, List<Map<String, dynamic>>>(referencedTables, (value) => pulumi.Input.encodeList<GetTableTableConstraintForeignKeyReferencedTable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTableTableConstraintForeignKey.fromMap(Map<String, dynamic> map) {
    return GetTableTableConstraintForeignKey(
      columnReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableTableConstraintForeignKeyColumnReference>(map['columnReferences']!, (value) => GetTableTableConstraintForeignKeyColumnReference.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      referencedTables: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableTableConstraintForeignKeyReferencedTable>(map['referencedTables']!, (value) => GetTableTableConstraintForeignKeyReferencedTable.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

