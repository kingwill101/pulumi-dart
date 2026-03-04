// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource submessage for group checks. It can be used instead of a monitored resource, when multiple resources are being monitored.
class ResourceGroupResponse {
  /// The group of resources being monitored. Should be only the [GROUP_ID], and not the full-path projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID].
  final pulumi.Input<String> groupId;

  /// The resource type of the group members.
  final pulumi.Input<String> resourceType;

  /// Creates a new [ResourceGroupResponse].
  /// [groupId] The group of resources being monitored. Should be only the [GROUP_ID], and not the full-path projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID].
  /// [resourceType] The resource type of the group members.
  ResourceGroupResponse({required this.groupId, required this.resourceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'groupId': groupId, 'resourceType': resourceType};
  }

  factory ResourceGroupResponse.fromMap(Map<String, dynamic> map) {
    return ResourceGroupResponse(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
