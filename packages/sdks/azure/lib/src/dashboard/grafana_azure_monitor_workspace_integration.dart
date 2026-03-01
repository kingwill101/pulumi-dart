// ignore_for_file: unused_element, unnecessary_cast


class GrafanaAzureMonitorWorkspaceIntegration {
  /// Specifies the resource ID of the connected Azure Monitor Workspace.
  final String resourceId;

  /// Creates a new [GrafanaAzureMonitorWorkspaceIntegration].
  /// [resourceId] Specifies the resource ID of the connected Azure Monitor Workspace.
  GrafanaAzureMonitorWorkspaceIntegration({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory GrafanaAzureMonitorWorkspaceIntegration.fromMap(Map<String, dynamic> map) {
    return GrafanaAzureMonitorWorkspaceIntegration(
      resourceId: map['resourceId'] as String,
    );
  }
}

