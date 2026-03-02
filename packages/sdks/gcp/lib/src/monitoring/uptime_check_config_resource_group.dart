// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UptimeCheckConfigResourceGroup {
  /// The group of resources being monitored. Should be the `name` of a group
  final pulumi.Input<String>? groupId;
  /// The resource type of the group members.
  /// Possible values are: `RESOURCE_TYPE_UNSPECIFIED`, `INSTANCE`, `AWS_ELB_LOAD_BALANCER`.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [UptimeCheckConfigResourceGroup].
  /// [groupId] The group of resources being monitored. Should be the `name` of a group
  /// [resourceType] The resource type of the group members.
  UptimeCheckConfigResourceGroup({
    this.groupId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'resourceType': ?resourceType,
    };
  }

  factory UptimeCheckConfigResourceGroup.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigResourceGroup(
      groupId: map['groupId'] == null ? null : (map['groupId'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
    );
  }
}

