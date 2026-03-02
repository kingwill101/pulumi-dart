// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableTableConstraintPrimaryKey {
  /// The columns that are composed of the primary key constraint.
  final pulumi.Input<List<String>> columns;

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
      columns: ((map['columns'] as List).cast<String>()).input(),
    );
  }
}

