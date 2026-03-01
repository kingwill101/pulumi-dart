// ignore_for_file: unused_element, unnecessary_cast


class GetGrafanaAzureMonitorWorkspaceIntegration {
  final String resourceId;

  /// Creates a new [GetGrafanaAzureMonitorWorkspaceIntegration].
  /// [resourceId] Required.
  GetGrafanaAzureMonitorWorkspaceIntegration({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory GetGrafanaAzureMonitorWorkspaceIntegration.fromMap(Map<String, dynamic> map) {
    return GetGrafanaAzureMonitorWorkspaceIntegration(
      resourceId: map['resourceId'] as String,
    );
  }
}

