// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DirectoryRoleMember resources.
class DirectoryRoleMemberState {
  /// The object ID of the principal you want to add as a member to the directory role. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  final pulumi.Input<String>? memberObjectId;
  /// The object ID of the directory role you want to add the member to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? roleObjectId;

  /// Creates a new [DirectoryRoleMemberState].
  /// [memberObjectId] The object ID of the principal you want to add as a member to the directory role. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  /// [roleObjectId] The object ID of the directory role you want to add the member to. Changing this forces a new resource to be created.
  const DirectoryRoleMemberState({
    this.memberObjectId,
    this.roleObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberObjectId': ?memberObjectId,
      'roleObjectId': ?roleObjectId,
    };
  }

  factory DirectoryRoleMemberState.fromMap(Map<String, dynamic> map) {
    return DirectoryRoleMemberState(
      memberObjectId: (() { final guardedValue = map['memberObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleObjectId: (() { final guardedValue = map['roleObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
