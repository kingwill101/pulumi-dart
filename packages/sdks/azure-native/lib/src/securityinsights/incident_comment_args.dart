// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_incident_comment_args_doc}
/// The set of arguments for IncidentComment.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_incident_comment_args_doc}
class IncidentCommentArgs {
  /// Incident comment ID
  final pulumi.Input<String>? incidentCommentId;
  /// Incident ID
  final pulumi.Input<String> incidentId;
  /// The comment message
  final pulumi.Input<String> message;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [IncidentCommentArgs].
  /// [incidentCommentId] Incident comment ID
  /// [incidentId] Incident ID
  /// [message] The comment message
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  const IncidentCommentArgs({
    this.incidentCommentId,
    required this.incidentId,
    required this.message,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incidentCommentId': ?incidentCommentId,
      'incidentId': incidentId,
      'message': message,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory IncidentCommentArgs.fromMap(Map<String, dynamic> map) {
    return IncidentCommentArgs(
      incidentCommentId: (() { final guardedValue = map['incidentCommentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      incidentId: pulumi.Input.fromValue(map['incidentId'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
