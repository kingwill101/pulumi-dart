// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGrafanaAzureMonitorWorkspaceIntegration {
  final pulumi.Input<String> resourceId;

  /// Creates a new [GetGrafanaAzureMonitorWorkspaceIntegration].
  /// [resourceId] Required.
  const GetGrafanaAzureMonitorWorkspaceIntegration({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory GetGrafanaAzureMonitorWorkspaceIntegration.fromMap(Map<String, dynamic> map) {
    return GetGrafanaAzureMonitorWorkspaceIntegration(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
