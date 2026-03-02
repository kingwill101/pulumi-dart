// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GroupMembers Item.
class GroupMembersItemResponse {
  /// Resource Id.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [GroupMembersItemResponse].
  /// [resourceId] Resource Id.
  GroupMembersItemResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory GroupMembersItemResponse.fromMap(Map<String, dynamic> map) {
    return GroupMembersItemResponse(
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

