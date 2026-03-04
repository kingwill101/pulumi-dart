// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_incident_comment_args_doc}
/// Arguments for getIncidentComment.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_incident_comment_args_doc}
class GetIncidentCommentArgs {
  /// Incident comment ID
  final pulumi.Input<String> incidentCommentId;

  /// Incident ID
  final pulumi.Input<String> incidentId;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetIncidentCommentArgs].
  /// [incidentCommentId] Incident comment ID
  /// [incidentId] Incident ID
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetIncidentCommentArgs({
    required this.incidentCommentId,
    required this.incidentId,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incidentCommentId': incidentCommentId,
      'incidentId': incidentId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetIncidentCommentArgs.fromMap(Map<String, dynamic> map) {
    return GetIncidentCommentArgs(
      incidentCommentId: pulumi.Input.fromValue(
        map['incidentCommentId'] as String,
      ),
      incidentId: pulumi.Input.fromValue(map['incidentId'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
