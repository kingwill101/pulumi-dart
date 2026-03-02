// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_group_member_group_member_args_doc}
/// The set of arguments for GroupMember.
/// {@endtemplate}
/// {@macro pulumi_index_group_member_group_member_args_doc}
class GroupMemberArgs {
  /// The object ID of the group you want to add the member to. Changing this forces a new resource to be created.
  final pulumi.Input<String> groupObjectId;
  /// The object ID of the principal you want to add as a member to the group. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  final pulumi.Input<String> memberObjectId;

  /// Creates a new [GroupMemberArgs].
  /// [groupObjectId] The object ID of the group you want to add the member to. Changing this forces a new resource to be created.
  /// [memberObjectId] The object ID of the principal you want to add as a member to the group. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  GroupMemberArgs({
    required this.groupObjectId,
    required this.memberObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupObjectId': groupObjectId,
      'memberObjectId': memberObjectId,
    };
  }

  factory GroupMemberArgs.fromMap(Map<String, dynamic> map) {
    return GroupMemberArgs(
      groupObjectId: (map['groupObjectId'] as String).input(),
      memberObjectId: (map['memberObjectId'] as String).input(),
    );
  }
}

