// ignore_for_file: unused_element, unnecessary_cast


class SecuritySolutionAdditionalWorkspace {
  /// A list of data types which sent to workspace. Possible values are `Alerts` and `RawEvents`.
  final List<String> dataTypes;
  /// The resource ID of the Log Analytics Workspace.
  final String workspaceId;

  /// Creates a new [SecuritySolutionAdditionalWorkspace].
  /// [dataTypes] A list of data types which sent to workspace. Possible values are `Alerts` and `RawEvents`.
  /// [workspaceId] The resource ID of the Log Analytics Workspace.
  SecuritySolutionAdditionalWorkspace({
    required this.dataTypes,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTypes': dataTypes,
      'workspaceId': workspaceId,
    };
  }

  factory SecuritySolutionAdditionalWorkspace.fromMap(Map<String, dynamic> map) {
    return SecuritySolutionAdditionalWorkspace(
      dataTypes: (map['dataTypes'] as List).cast<String>(),
      workspaceId: map['workspaceId'] as String,
    );
  }
}

