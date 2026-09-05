// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceTableMicrosoftStandardColumn {
  /// A description of the table.
  final pulumi.Input<String?>? description;
  /// Whether the column defaults to being displayed. Defaults to `true`.
  final pulumi.Input<bool?>? displayByDefault;
  /// The display name of the table.
  final pulumi.Input<String?>? displayName;
  /// Is the column hidden? Defaults to `false`.
  final pulumi.Input<bool?>? hidden;
  /// The name which should be used for this Log Analytics Workspace Table Microsoft. Possible values are `Alert`, `AppCenterError`, `ComputerGroup`, `InsightsMetrics`, `Operation` and `Usage`. Changing this forces a new Log Analytics Workspace Table Microsoft to be created.
  final pulumi.Input<String?>? name;
  /// The type of the column.
  final pulumi.Input<String?>? type;
  /// The type hint of the column.
  final pulumi.Input<String?>? typeHint;

  /// Creates a new [WorkspaceTableMicrosoftStandardColumn].
  /// [description] A description of the table.
  /// [displayByDefault] Whether the column defaults to being displayed. Defaults to `true`.
  /// [displayName] The display name of the table.
  /// [hidden] Is the column hidden? Defaults to `false`.
  /// [name] The name which should be used for this Log Analytics Workspace Table Microsoft. Possible values are `Alert`, `AppCenterError`, `ComputerGroup`, `InsightsMetrics`, `Operation` and `Usage`. Changing this forces a new Log Analytics Workspace Table Microsoft to be created.
  /// [type] The type of the column.
  /// [typeHint] The type hint of the column.
  const WorkspaceTableMicrosoftStandardColumn({
    this.description,
    this.displayByDefault,
    this.displayName,
    this.hidden,
    this.name,
    this.type,
    this.typeHint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayByDefault': ?displayByDefault,
      'displayName': ?displayName,
      'hidden': ?hidden,
      'name': ?name,
      'type': ?type,
      'typeHint': ?typeHint,
    };
  }

  factory WorkspaceTableMicrosoftStandardColumn.fromMap(Map<String, dynamic> map) {
    return WorkspaceTableMicrosoftStandardColumn(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayByDefault: (() { final guardedValue = map['displayByDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hidden: (() { final guardedValue = map['hidden']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeHint: (() { final guardedValue = map['typeHint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
