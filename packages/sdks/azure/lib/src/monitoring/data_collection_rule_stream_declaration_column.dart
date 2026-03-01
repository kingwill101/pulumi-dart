// ignore_for_file: unused_element, unnecessary_cast


class DataCollectionRuleStreamDeclarationColumn {
  /// The name of the column.
  final String name;
  /// The type of the column data. Possible values are `string`, `int`, `long`, `real`, `boolean`, `datetime`,and `dynamic`.
  final String type;

  /// Creates a new [DataCollectionRuleStreamDeclarationColumn].
  /// [name] The name of the column.
  /// [type] The type of the column data. Possible values are `string`, `int`, `long`, `real`, `boolean`, `datetime`,and `dynamic`.
  DataCollectionRuleStreamDeclarationColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory DataCollectionRuleStreamDeclarationColumn.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleStreamDeclarationColumn(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

