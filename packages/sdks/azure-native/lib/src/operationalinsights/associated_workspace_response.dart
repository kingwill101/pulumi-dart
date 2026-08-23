// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The list of Log Analytics workspaces associated with the cluster.
class AssociatedWorkspaceResponse {
  /// The time of workspace association.
  final pulumi.Input<String> associateDate;
  /// Associated workspace arm resource id, in the form of: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}.
  final pulumi.Input<String> resourceId;
  /// Associated workspace immutable id.
  final pulumi.Input<String> workspaceId;
  /// Associated workspace resource name.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [AssociatedWorkspaceResponse].
  /// [associateDate] The time of workspace association.
  /// [resourceId] Associated workspace arm resource id, in the form of: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}.
  /// [workspaceId] Associated workspace immutable id.
  /// [workspaceName] Associated workspace resource name.
  const AssociatedWorkspaceResponse({
    required this.associateDate,
    required this.resourceId,
    required this.workspaceId,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associateDate': associateDate,
      'resourceId': resourceId,
      'workspaceId': workspaceId,
      'workspaceName': workspaceName,
    };
  }

  factory AssociatedWorkspaceResponse.fromMap(Map<String, dynamic> map) {
    return AssociatedWorkspaceResponse(
      associateDate: pulumi.Input.fromValue(map['associateDate'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
