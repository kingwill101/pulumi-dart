// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GrafanaAzureMonitorWorkspaceIntegration {
  /// Specifies the resource ID of the connected Azure Monitor Workspace.
  final pulumi.Input<String> resourceId;

  /// Creates a new [GrafanaAzureMonitorWorkspaceIntegration].
  /// [resourceId] Specifies the resource ID of the connected Azure Monitor Workspace.
  const GrafanaAzureMonitorWorkspaceIntegration({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory GrafanaAzureMonitorWorkspaceIntegration.fromMap(Map<String, dynamic> map) {
    return GrafanaAzureMonitorWorkspaceIntegration(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}

