// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableConstraintsForeignKeysItemColumnReferencesItemResponse {
  final pulumi.Input<String> referencedColumn;
  final pulumi.Input<String> referencingColumn;

  /// Creates a new [TableConstraintsForeignKeysItemColumnReferencesItemResponse].
  /// [referencedColumn] Required.
  /// [referencingColumn] Required.
  const TableConstraintsForeignKeysItemColumnReferencesItemResponse({
    required this.referencedColumn,
    required this.referencingColumn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referencedColumn': referencedColumn,
      'referencingColumn': referencingColumn,
    };
  }

  factory TableConstraintsForeignKeysItemColumnReferencesItemResponse.fromMap(Map<String, dynamic> map) {
    return TableConstraintsForeignKeysItemColumnReferencesItemResponse(
      referencedColumn: pulumi.Input.fromValue(map['referencedColumn'] as String),
      referencingColumn: pulumi.Input.fromValue(map['referencingColumn'] as String),
    );
  }
}

