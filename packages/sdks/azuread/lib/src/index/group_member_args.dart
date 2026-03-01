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
    required pulumi.Output<String> groupObjectId,
    required pulumi.Output<String> memberObjectId,
  }) :
      groupObjectId = pulumi.Input.asInput<String>(groupObjectId),
      memberObjectId = pulumi.Input.asInput<String>(memberObjectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupObjectId': groupObjectId,
      'memberObjectId': memberObjectId,
    };
  }

  factory GroupMemberArgs.fromMap(Map<String, dynamic> map) {
    return GroupMemberArgs(
      groupObjectId: pulumi.Output.create<String>(map['groupObjectId'] as String),
      memberObjectId: pulumi.Output.create<String>(map['memberObjectId'] as String),
    );
  }
}

