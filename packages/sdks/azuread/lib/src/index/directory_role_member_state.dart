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
  DirectoryRoleMemberState({
    pulumi.Output<String>? memberObjectId,
    pulumi.Output<String>? roleObjectId,
  }) :
      memberObjectId = pulumi.Input.asOptionalInput<String>(memberObjectId),
      roleObjectId = pulumi.Input.asOptionalInput<String>(roleObjectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberObjectId': ?memberObjectId,
      'roleObjectId': ?roleObjectId,
    };
  }

  factory DirectoryRoleMemberState.fromMap(Map<String, dynamic> map) {
    return DirectoryRoleMemberState(
      memberObjectId: map['memberObjectId'] == null ? null : pulumi.Output.create<String>(map['memberObjectId'] as String),
      roleObjectId: map['roleObjectId'] == null ? null : pulumi.Output.create<String>(map['roleObjectId'] as String),
    );
  }
}

