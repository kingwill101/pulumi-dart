// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableConstraintsForeignKeysItemColumnReferencesItemResponse {
  final pulumi.Input<String> referencedColumn;
  final pulumi.Input<String> referencingColumn;

  /// Creates a new [TableConstraintsForeignKeysItemColumnReferencesItemResponse].
  /// [referencedColumn] Required.
  /// [referencingColumn] Required.
  TableConstraintsForeignKeysItemColumnReferencesItemResponse({
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
      referencedColumn: (map['referencedColumn'] as String).input(),
      referencingColumn: (map['referencingColumn'] as String).input(),
    );
  }
}

