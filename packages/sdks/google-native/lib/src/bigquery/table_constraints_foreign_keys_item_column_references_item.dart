// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableConstraintsForeignKeysItemColumnReferencesItem {
  final pulumi.Input<String>? referencedColumn;
  final pulumi.Input<String>? referencingColumn;

  /// Creates a new [TableConstraintsForeignKeysItemColumnReferencesItem].
  /// [referencedColumn] Optional.
  /// [referencingColumn] Optional.
  TableConstraintsForeignKeysItemColumnReferencesItem({
    this.referencedColumn,
    this.referencingColumn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referencedColumn': ?referencedColumn,
      'referencingColumn': ?referencingColumn,
    };
  }

  factory TableConstraintsForeignKeysItemColumnReferencesItem.fromMap(Map<String, dynamic> map) {
    return TableConstraintsForeignKeysItemColumnReferencesItem(
      referencedColumn: map['referencedColumn'] == null ? null : (map['referencedColumn'] as String).input(),
      referencingColumn: map['referencingColumn'] == null ? null : (map['referencingColumn'] as String).input(),
    );
  }
}

