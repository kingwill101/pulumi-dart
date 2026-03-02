// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceTableCustomLogColumn {
  /// The description of the column.
  final pulumi.Input<String>? description;
  /// The display name of the column.
  final pulumi.Input<String>? displayName;
  /// Specifies the name of the column.
  final pulumi.Input<String> name;
  /// The data type of the column. Possible values are `boolean`, `datetime`, `dynamic`, `guid`, `int`, `long`, `real`, and `string`.
  final pulumi.Input<String> type;

  /// Creates a new [WorkspaceTableCustomLogColumn].
  /// [description] The description of the column.
  /// [displayName] The display name of the column.
  /// [name] Specifies the name of the column.
  /// [type] The data type of the column. Possible values are `boolean`, `datetime`, `dynamic`, `guid`, `int`, `long`, `real`, and `string`.
  WorkspaceTableCustomLogColumn({
    this.description,
    this.displayName,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'name': name,
      'type': type,
    };
  }

  factory WorkspaceTableCustomLogColumn.fromMap(Map<String, dynamic> map) {
    return WorkspaceTableCustomLogColumn(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

