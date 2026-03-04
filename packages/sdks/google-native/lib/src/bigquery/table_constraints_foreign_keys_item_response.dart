// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_constraints_foreign_keys_item_column_references_item_response.dart';
import 'table_constraints_foreign_keys_item_referenced_table_response.dart';

class TableConstraintsForeignKeysItemResponse {
  final pulumi.Input<
    List<TableConstraintsForeignKeysItemColumnReferencesItemResponse>
  >
  columnReferences;
  final pulumi.Input<String> name;
  final pulumi.Input<TableConstraintsForeignKeysItemReferencedTableResponse>
  referencedTable;

  /// Creates a new [TableConstraintsForeignKeysItemResponse].
  /// [columnReferences] Required.
  /// [name] Required.
  /// [referencedTable] Required.
  TableConstraintsForeignKeysItemResponse({
    required this.columnReferences,
    required this.name,
    required this.referencedTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnReferences':
          pulumi.Input.mapInputValue<
            List<TableConstraintsForeignKeysItemColumnReferencesItemResponse>,
            List<Map<String, dynamic>>
          >(
            columnReferences,
            (value) =>
                pulumi.Input.encodeList<
                  TableConstraintsForeignKeysItemColumnReferencesItemResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'referencedTable':
          pulumi.Input.mapInputValue<
            TableConstraintsForeignKeysItemReferencedTableResponse,
            Map<String, dynamic>
          >(referencedTable, (value) => value.toMap()),
    };
  }

  factory TableConstraintsForeignKeysItemResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return TableConstraintsForeignKeysItemResponse(
      columnReferences: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          TableConstraintsForeignKeysItemColumnReferencesItemResponse
        >(
          map['columnReferences']!,
          (value) =>
              TableConstraintsForeignKeysItemColumnReferencesItemResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      referencedTable: pulumi.Input.fromValue(
        TableConstraintsForeignKeysItemReferencedTableResponse.fromMap(
          (map['referencedTable']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
