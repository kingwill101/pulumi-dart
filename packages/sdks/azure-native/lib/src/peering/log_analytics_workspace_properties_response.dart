// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties that define a Log Analytics Workspace.
class LogAnalyticsWorkspacePropertiesResponse {
  /// The list of connected agents.
  final pulumi.Input<List<String>> connectedAgents;
  /// The Workspace Key.
  final pulumi.Input<String> key;
  /// The Workspace ID.
  final pulumi.Input<String> workspaceID;

  /// Creates a new [LogAnalyticsWorkspacePropertiesResponse].
  /// [connectedAgents] The list of connected agents.
  /// [key] The Workspace Key.
  /// [workspaceID] The Workspace ID.
  const LogAnalyticsWorkspacePropertiesResponse({
    required this.connectedAgents,
    required this.key,
    required this.workspaceID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedAgents': connectedAgents,
      'key': key,
      'workspaceID': workspaceID,
    };
  }

  factory LogAnalyticsWorkspacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsWorkspacePropertiesResponse(
      connectedAgents: pulumi.Input.fromValue((map['connectedAgents'] as List).cast<String>()),
      key: pulumi.Input.fromValue(map['key'] as String),
      workspaceID: pulumi.Input.fromValue(map['workspaceID'] as String),
    );
  }
}
