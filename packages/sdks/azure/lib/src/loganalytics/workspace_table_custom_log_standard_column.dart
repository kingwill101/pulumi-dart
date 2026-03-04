// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceTableCustomLogStandardColumn {
  /// The description of the table.
  final pulumi.Input<String>? description;

  /// The display name of the table.
  final pulumi.Input<String>? displayName;

  /// Specifies the name of the Log Analytics Workspace Table Custom Log. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `name` must end with `_CL`.
  final pulumi.Input<String>? name;

  /// The data type of the standard column.
  final pulumi.Input<String>? type;

  /// Creates a new [WorkspaceTableCustomLogStandardColumn].
  /// [description] The description of the table.
  /// [displayName] The display name of the table.
  /// [name] Specifies the name of the Log Analytics Workspace Table Custom Log. Changing this forces a new resource to be created.
  /// [type] The data type of the standard column.
  WorkspaceTableCustomLogStandardColumn({
    this.description,
    this.displayName,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'type': ?type,
    };
  }

  factory WorkspaceTableCustomLogStandardColumn.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkspaceTableCustomLogStandardColumn(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
