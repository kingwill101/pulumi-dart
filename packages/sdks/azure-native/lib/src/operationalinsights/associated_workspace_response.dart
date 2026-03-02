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
  AssociatedWorkspaceResponse({
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
      associateDate: (map['associateDate'] as String).input(),
      resourceId: (map['resourceId'] as String).input(),
      workspaceId: (map['workspaceId'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

