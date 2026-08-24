// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_member_filter.dart';
import 'get_account_member_policy.dart';
import 'get_account_member_role.dart';
import 'get_account_member_user.dart';

/// Result data returned by getAccountMember.
class GetAccountMemberResult {
  /// Account identifier tag.
  final String? accountId;
  /// The contact email address of the user.
  final String? email;
  final GetAccountMemberFilter? filter;
  /// Membership identifier tag.
  final String? id;
  /// Membership identifier tag.
  final String? memberId;
  /// Access policy for the membership
  final List<GetAccountMemberPolicy>? policies;
  /// Roles assigned to this Member.
  final List<GetAccountMemberRole>? roles;
  /// A member's status in the account.
  /// Available values: "accepted", "pending".
  final String? status;
  /// Details of the user associated to the membership.
  final GetAccountMemberUser? user;

  /// Creates a new [GetAccountMemberResult].
  /// [accountId] Account identifier tag.
  /// [email] The contact email address of the user.
  /// [filter] Optional.
  /// [id] Membership identifier tag.
  /// [memberId] Membership identifier tag.
  /// [policies] Access policy for the membership
  /// [roles] Roles assigned to this Member.
  /// [status] A member's status in the account.
  /// [user] Details of the user associated to the membership.
  const GetAccountMemberResult({
    this.accountId,
    this.email,
    this.filter,
    this.id,
    this.memberId,
    this.policies,
    this.roles,
    this.status,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'email': ?email,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'memberId': ?memberId,
      'policies': ?(() { final guardedValue = policies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountMemberPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'roles': ?(() { final guardedValue = roles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountMemberRole, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'user': ?user?.toMap(),
    };
  }

  factory GetAccountMemberResult.fromMap(Map<String, dynamic> map) {
    return GetAccountMemberResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetAccountMemberFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memberId: (() { final guardedValue = map['memberId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountMemberPolicy>(guardedValue, (value) => GetAccountMemberPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountMemberRole>(guardedValue, (value) => GetAccountMemberRole.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return GetAccountMemberUser.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
