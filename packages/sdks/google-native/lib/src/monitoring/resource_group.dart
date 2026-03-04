// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_resource_type.dart';

/// The resource submessage for group checks. It can be used instead of a monitored resource, when multiple resources are being monitored.
class ResourceGroup {
  /// The group of resources being monitored. Should be only the [GROUP_ID], and not the full-path projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID].
  final pulumi.Input<String>? groupId;

  /// The resource type of the group members.
  final pulumi.Input<ResourceGroupResourceType>? resourceType;

  /// Creates a new [ResourceGroup].
  /// [groupId] The group of resources being monitored. Should be only the [GROUP_ID], and not the full-path projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID].
  /// [resourceType] The resource type of the group members.
  ResourceGroup({this.groupId, this.resourceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'resourceType':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceGroupResourceType,
            String
          >(resourceType, (value) => value.wireValue),
    };
  }

  factory ResourceGroup.fromMap(Map<String, dynamic> map) {
    return ResourceGroup(
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceGroupResourceType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
