// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCollectionRuleStreamDeclarationColumn {
  /// The name of the column.
  final pulumi.Input<String> name;

  /// The type of the column data. Possible values are `string`, `int`, `long`, `real`, `boolean`, `datetime`,and `dynamic`.
  final pulumi.Input<String> type;

  /// Creates a new [DataCollectionRuleStreamDeclarationColumn].
  /// [name] The name of the column.
  /// [type] The type of the column data. Possible values are `string`, `int`, `long`, `real`, `boolean`, `datetime`,and `dynamic`.
  DataCollectionRuleStreamDeclarationColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': type};
  }

  factory DataCollectionRuleStreamDeclarationColumn.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataCollectionRuleStreamDeclarationColumn(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
