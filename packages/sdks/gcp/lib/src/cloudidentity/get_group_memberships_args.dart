// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_get_group_memberships_get_group_memberships_args_doc}
/// Arguments for getGroupMemberships.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_get_group_memberships_get_group_memberships_args_doc}
class GetGroupMembershipsArgs {
  /// The parent Group resource under which to lookup the Membership names. Must be of the form groups/{group_id}.
  final pulumi.Input<String> group;

  /// Creates a new [GetGroupMembershipsArgs].
  /// [group] The parent Group resource under which to lookup the Membership names. Must be of the form groups/{group_id}.
  GetGroupMembershipsArgs({
    required this.group,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
    };
  }

  factory GetGroupMembershipsArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsArgs(
      group: pulumi.Input.fromValue(map['group'] as String),
    );
  }
}

