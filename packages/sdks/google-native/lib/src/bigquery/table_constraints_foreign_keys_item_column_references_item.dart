// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableConstraintsForeignKeysItemColumnReferencesItem {
  final pulumi.Input<String>? referencedColumn;
  final pulumi.Input<String>? referencingColumn;

  /// Creates a new [TableConstraintsForeignKeysItemColumnReferencesItem].
  /// [referencedColumn] Optional.
  /// [referencingColumn] Optional.
  const TableConstraintsForeignKeysItemColumnReferencesItem({
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
      referencedColumn: (() { final guardedValue = map['referencedColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referencingColumn: (() { final guardedValue = map['referencingColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
