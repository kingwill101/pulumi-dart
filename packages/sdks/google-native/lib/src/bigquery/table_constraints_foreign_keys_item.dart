// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_constraints_foreign_keys_item_column_references_item.dart';
import 'table_constraints_foreign_keys_item_referenced_table.dart';

class TableConstraintsForeignKeysItem {
  final List<TableConstraintsForeignKeysItemColumnReferencesItem>? columnReferences;
  final String? name;
  final TableConstraintsForeignKeysItemReferencedTable? referencedTable;

  /// Creates a new [TableConstraintsForeignKeysItem].
  /// [columnReferences] Optional.
  /// [name] Optional.
  /// [referencedTable] Optional.
  TableConstraintsForeignKeysItem({
    this.columnReferences,
    this.name,
    this.referencedTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnReferences': ?columnReferences == null ? null : pulumi.Input.encodeList<TableConstraintsForeignKeysItemColumnReferencesItem, Map<String, dynamic>>(columnReferences!, (value) => value.toMap()),
      'name': ?name,
      'referencedTable': ?referencedTable == null ? null : referencedTable!.toMap(),
    };
  }

  factory TableConstraintsForeignKeysItem.fromMap(Map<String, dynamic> map) {
    return TableConstraintsForeignKeysItem(
      columnReferences: map['columnReferences'] == null ? null : pulumi.Input.decodeList<TableConstraintsForeignKeysItemColumnReferencesItem>(map['columnReferences'], (value) => TableConstraintsForeignKeysItemColumnReferencesItem.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      referencedTable: map['referencedTable'] == null ? null : TableConstraintsForeignKeysItemReferencedTable.fromMap((map['referencedTable'] as Map).cast<String, dynamic>()),
    );
  }
}

