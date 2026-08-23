// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Optional] The primary key of the table.
class TableConstraintsPrimaryKey {
  final pulumi.Input<List<String>>? columns;

  /// Creates a new [TableConstraintsPrimaryKey].
  /// [columns] Optional.
  const TableConstraintsPrimaryKey({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
    };
  }

  factory TableConstraintsPrimaryKey.fromMap(Map<String, dynamic> map) {
    return TableConstraintsPrimaryKey(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
