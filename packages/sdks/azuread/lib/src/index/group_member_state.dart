// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupMember resources.
class GroupMemberState {
  /// The object ID of the group you want to add the member to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? groupObjectId;

  /// The object ID of the principal you want to add as a member to the group. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  final pulumi.Input<String>? memberObjectId;

  /// Creates a new [GroupMemberState].
  /// [groupObjectId] The object ID of the group you want to add the member to. Changing this forces a new resource to be created.
  /// [memberObjectId] The object ID of the principal you want to add as a member to the group. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  GroupMemberState({this.groupObjectId, this.memberObjectId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupObjectId': ?groupObjectId,
      'memberObjectId': ?memberObjectId,
    };
  }

  factory GroupMemberState.fromMap(Map<String, dynamic> map) {
    return GroupMemberState(
      groupObjectId: (() {
        final guardedValue = map['groupObjectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memberObjectId: (() {
        final guardedValue = map['memberObjectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
