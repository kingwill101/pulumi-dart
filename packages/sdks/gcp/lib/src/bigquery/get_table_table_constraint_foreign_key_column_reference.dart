// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableTableConstraintForeignKeyColumnReference {
  /// The column in the primary key that are referenced by the referencingColumn.
  final pulumi.Input<String> referencedColumn;
  /// The column that composes the foreign key.
  final pulumi.Input<String> referencingColumn;

  /// Creates a new [GetTableTableConstraintForeignKeyColumnReference].
  /// [referencedColumn] The column in the primary key that are referenced by the referencingColumn.
  /// [referencingColumn] The column that composes the foreign key.
  const GetTableTableConstraintForeignKeyColumnReference({
    required this.referencedColumn,
    required this.referencingColumn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referencedColumn': referencedColumn,
      'referencingColumn': referencingColumn,
    };
  }

  factory GetTableTableConstraintForeignKeyColumnReference.fromMap(Map<String, dynamic> map) {
    return GetTableTableConstraintForeignKeyColumnReference(
      referencedColumn: pulumi.Input.fromValue(map['referencedColumn'] as String),
      referencingColumn: pulumi.Input.fromValue(map['referencingColumn'] as String),
    );
  }
}

