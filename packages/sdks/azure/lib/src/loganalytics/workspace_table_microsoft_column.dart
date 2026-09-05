// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceTableMicrosoftColumn {
  /// The description of the column.
  final pulumi.Input<String?>? description;
  /// Whether the column defaults to being displayed. Defaults to `true`.
  final pulumi.Input<bool?>? displayByDefault;
  /// The display name of the column.
  final pulumi.Input<String?>? displayName;
  /// Whether the column is hidden. Defaults to `false`.
  final pulumi.Input<bool?>? hidden;
  /// The name which should be used for this column.
  final pulumi.Input<String> name;
  /// The column data type. Possible values are `string`, `int`, `long`, `real`, `boolean`, `dateTime`, `guid`, `dynamic`.
  final pulumi.Input<String> type;

  /// Creates a new [WorkspaceTableMicrosoftColumn].
  /// [description] The description of the column.
  /// [displayByDefault] Whether the column defaults to being displayed. Defaults to `true`.
  /// [displayName] The display name of the column.
  /// [hidden] Whether the column is hidden. Defaults to `false`.
  /// [name] The name which should be used for this column.
  /// [type] The column data type. Possible values are `string`, `int`, `long`, `real`, `boolean`, `dateTime`, `guid`, `dynamic`.
  const WorkspaceTableMicrosoftColumn({
    this.description,
    this.displayByDefault,
    this.displayName,
    this.hidden,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayByDefault': ?displayByDefault,
      'displayName': ?displayName,
      'hidden': ?hidden,
      'name': name,
      'type': type,
    };
  }

  factory WorkspaceTableMicrosoftColumn.fromMap(Map<String, dynamic> map) {
    return WorkspaceTableMicrosoftColumn(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayByDefault: (() { final guardedValue = map['displayByDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hidden: (() { final guardedValue = map['hidden']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
