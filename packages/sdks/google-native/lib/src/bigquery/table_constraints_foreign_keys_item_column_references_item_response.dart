// ignore_for_file: unused_element, unnecessary_cast


class TableConstraintsForeignKeysItemColumnReferencesItemResponse {
  final String referencedColumn;
  final String referencingColumn;

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
      referencedColumn: map['referencedColumn'] as String,
      referencingColumn: map['referencingColumn'] as String,
    );
  }
}

