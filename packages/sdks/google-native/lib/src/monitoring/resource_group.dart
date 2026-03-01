// ignore_for_file: unused_element, unnecessary_cast

import 'resource_group_resource_type.dart';

/// The resource submessage for group checks. It can be used instead of a monitored resource, when multiple resources are being monitored.
class ResourceGroup {
  /// The group of resources being monitored. Should be only the [GROUP_ID], and not the full-path projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID].
  final String? groupId;
  /// The resource type of the group members.
  final ResourceGroupResourceType? resourceType;

  /// Creates a new [ResourceGroup].
  /// [groupId] The group of resources being monitored. Should be only the [GROUP_ID], and not the full-path projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID].
  /// [resourceType] The resource type of the group members.
  ResourceGroup({
    this.groupId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'resourceType': ?resourceType == null ? null : resourceType!.value,
    };
  }

  factory ResourceGroup.fromMap(Map<String, dynamic> map) {
    return ResourceGroup(
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      resourceType: map['resourceType'] == null ? null : ResourceGroupResourceType.fromValue(map['resourceType'] as String),
    );
  }
}

