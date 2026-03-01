// ignore_for_file: unused_element, unnecessary_cast


class GetTableTableConstraintPrimaryKey {
  /// The columns that are composed of the primary key constraint.
  final List<String> columns;

  /// Creates a new [GetTableTableConstraintPrimaryKey].
  /// [columns] The columns that are composed of the primary key constraint.
  GetTableTableConstraintPrimaryKey({
    required this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': columns,
    };
  }

  factory GetTableTableConstraintPrimaryKey.fromMap(Map<String, dynamic> map) {
    return GetTableTableConstraintPrimaryKey(
      columns: (map['columns'] as List).cast<String>(),
    );
  }
}

