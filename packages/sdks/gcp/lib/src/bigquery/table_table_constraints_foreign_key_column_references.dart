// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableTableConstraintsForeignKeyColumnReferences {
  /// The column in the primary key that are
  /// referenced by the referencingColumn
  final pulumi.Input<String> referencedColumn;
  /// The column that composes the foreign key.
  final pulumi.Input<String> referencingColumn;

  /// Creates a new [TableTableConstraintsForeignKeyColumnReferences].
  /// [referencedColumn] The column in the primary key that are
  /// [referencingColumn] The column that composes the foreign key.
  TableTableConstraintsForeignKeyColumnReferences({
    required this.referencedColumn,
    required this.referencingColumn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referencedColumn': referencedColumn,
      'referencingColumn': referencingColumn,
    };
  }

  factory TableTableConstraintsForeignKeyColumnReferences.fromMap(Map<String, dynamic> map) {
    return TableTableConstraintsForeignKeyColumnReferences(
      referencedColumn: (map['referencedColumn'] as String).input(),
      referencingColumn: (map['referencingColumn'] as String).input(),
    );
  }
}

