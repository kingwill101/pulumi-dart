// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_constraints_foreign_keys_item_column_references_item.dart';
import 'table_constraints_foreign_keys_item_referenced_table.dart';

class TableConstraintsForeignKeysItem {
  final pulumi.Input<List<TableConstraintsForeignKeysItemColumnReferencesItem>>?
  columnReferences;
  final pulumi.Input<String>? name;
  final pulumi.Input<TableConstraintsForeignKeysItemReferencedTable>?
  referencedTable;

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
      'columnReferences':
          ?pulumi.Input.mapOptionalInputValue<
            List<TableConstraintsForeignKeysItemColumnReferencesItem>,
            List<Map<String, dynamic>>
          >(
            columnReferences,
            (value) =>
                pulumi.Input.encodeList<
                  TableConstraintsForeignKeysItemColumnReferencesItem,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'referencedTable':
          ?pulumi.Input.mapOptionalInputValue<
            TableConstraintsForeignKeysItemReferencedTable,
            Map<String, dynamic>
          >(referencedTable, (value) => value.toMap()),
    };
  }

  factory TableConstraintsForeignKeysItem.fromMap(Map<String, dynamic> map) {
    return TableConstraintsForeignKeysItem(
      columnReferences: (() {
        final guardedValue = map['columnReferences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            TableConstraintsForeignKeysItemColumnReferencesItem
          >(
            guardedValue,
            (value) =>
                TableConstraintsForeignKeysItemColumnReferencesItem.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      referencedTable: (() {
        final guardedValue = map['referencedTable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TableConstraintsForeignKeysItemReferencedTable.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
