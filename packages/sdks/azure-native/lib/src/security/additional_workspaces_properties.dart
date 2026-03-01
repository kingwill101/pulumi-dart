// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the additional workspaces.
class AdditionalWorkspacesProperties {
  /// List of data types sent to workspace
  final List<String>? dataTypes;
  /// Workspace type.
  final String? type;
  /// Workspace resource id
  final String? workspace;

  /// Creates a new [AdditionalWorkspacesProperties].
  /// [dataTypes] List of data types sent to workspace
  /// [type] Workspace type.
  /// [workspace] Workspace resource id
  AdditionalWorkspacesProperties({
    this.dataTypes,
    this.type,
    this.workspace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTypes': ?dataTypes,
      'type': ?type,
      'workspace': ?workspace,
    };
  }

  factory AdditionalWorkspacesProperties.fromMap(Map<String, dynamic> map) {
    return AdditionalWorkspacesProperties(
      dataTypes: map['dataTypes'] == null ? null : (map['dataTypes'] as List).cast<String>(),
      type: map['type'] == null ? null : map['type'] as String,
      workspace: map['workspace'] == null ? null : map['workspace'] as String,
    );
  }
}

