// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceTableCustomLogStandardColumn {
  /// The description of the table.
  final String? description;
  /// The display name of the table.
  final String? displayName;
  /// Specifies the name of the Log Analytics Workspace Table Custom Log. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `name` must end with `_CL`.
  final String? name;
  /// The data type of the standard column.
  final String? type;

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

  factory WorkspaceTableCustomLogStandardColumn.fromMap(Map<String, dynamic> map) {
    return WorkspaceTableCustomLogStandardColumn(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

