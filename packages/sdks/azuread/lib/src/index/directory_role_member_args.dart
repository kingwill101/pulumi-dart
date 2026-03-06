// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_directory_role_member_directory_role_member_args_doc}
/// The set of arguments for DirectoryRoleMember.
/// {@endtemplate}
/// {@macro pulumi_index_directory_role_member_directory_role_member_args_doc}
class DirectoryRoleMemberArgs {
  /// The object ID of the principal you want to add as a member to the directory role. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  final pulumi.Input<String>? memberObjectId;
  /// The object ID of the directory role you want to add the member to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? roleObjectId;

  /// Creates a new [DirectoryRoleMemberArgs].
  /// [memberObjectId] The object ID of the principal you want to add as a member to the directory role. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  /// [roleObjectId] The object ID of the directory role you want to add the member to. Changing this forces a new resource to be created.
  const DirectoryRoleMemberArgs({
    this.memberObjectId,
    this.roleObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberObjectId': ?memberObjectId,
      'roleObjectId': ?roleObjectId,
    };
  }

  factory DirectoryRoleMemberArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryRoleMemberArgs(
      memberObjectId: (() { final guardedValue = map['memberObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleObjectId: (() { final guardedValue = map['roleObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

