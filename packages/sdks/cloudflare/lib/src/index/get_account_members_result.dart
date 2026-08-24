// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_members_result_policy.dart';
import 'get_account_members_result_role.dart';
import 'get_account_members_result_user.dart';

class GetAccountMembersResult {
  /// The contact email address of the user.
  final pulumi.Input<String> email;
  /// Membership identifier tag.
  final pulumi.Input<String> id;
  /// Access policy for the membership
  final pulumi.Input<List<GetAccountMembersResultPolicy>> policies;
  /// Roles assigned to this Member.
  final pulumi.Input<List<GetAccountMembersResultRole>> roles;
  /// A member's status in the account.
  /// Available values: "accepted", "pending".
  final pulumi.Input<String> status;
  /// Details of the user associated to the membership.
  final pulumi.Input<GetAccountMembersResultUser> user;

  /// Creates a new [GetAccountMembersResult].
  /// [email] The contact email address of the user.
  /// [id] Membership identifier tag.
  /// [policies] Access policy for the membership
  /// [roles] Roles assigned to this Member.
  /// [status] A member's status in the account.
  /// [user] Details of the user associated to the membership.
  const GetAccountMembersResult({
    required this.email,
    required this.id,
    required this.policies,
    required this.roles,
    required this.status,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'id': id,
      'policies': pulumi.Input.mapInputValue<List<GetAccountMembersResultPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<GetAccountMembersResultPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roles': pulumi.Input.mapInputValue<List<GetAccountMembersResultRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<GetAccountMembersResultRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'user': pulumi.Input.mapInputValue<GetAccountMembersResultUser, Map<String, dynamic>>(user, (value) => value.toMap()),
    };
  }

  factory GetAccountMembersResult.fromMap(Map<String, dynamic> map) {
    return GetAccountMembersResult(
      email: pulumi.Input.fromValue(map['email'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      policies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccountMembersResultPolicy>(map['policies']!, (value) => GetAccountMembersResultPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      roles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccountMembersResultRole>(map['roles']!, (value) => GetAccountMembersResultRole.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
      user: pulumi.Input.fromValue(GetAccountMembersResultUser.fromMap((map['user']! as Map).cast<String, dynamic>())),
    );
  }
}
