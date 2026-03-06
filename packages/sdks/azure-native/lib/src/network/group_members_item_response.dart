// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GroupMembers Item.
class GroupMembersItemResponse {
  /// Resource Id.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [GroupMembersItemResponse].
  /// [resourceId] Resource Id.
  const GroupMembersItemResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory GroupMembersItemResponse.fromMap(Map<String, dynamic> map) {
    return GroupMembersItemResponse(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

