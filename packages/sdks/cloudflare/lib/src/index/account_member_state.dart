// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_member_policy.dart';
import 'account_member_user.dart';

/// Input properties used for looking up and filtering AccountMember resources.
class AccountMemberState {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// The contact email address of the user.
  final pulumi.Input<String?>? email;
  /// Array of policies associated with this member.
  final pulumi.Input<List<AccountMemberPolicy>?>? policies;
  /// Set of roles associated with this member.
  final pulumi.Input<List<String>?>? roles;
  /// Status of the member invitation. If not provided during creation, defaults to 'pending'.
  /// Changing from 'accepted' back to 'pending' will trigger a replacement of the member resource in Terraform.
  /// Available values: "accepted", "pending".
  final pulumi.Input<String?>? status;
  /// Details of the user associated to the membership.
  final pulumi.Input<AccountMemberUser?>? user;

  /// Creates a new [AccountMemberState].
  /// [accountId] Account identifier tag.
  /// [email] The contact email address of the user.
  /// [policies] Array of policies associated with this member.
  /// [roles] Set of roles associated with this member.
  /// [status] Status of the member invitation. If not provided during creation, defaults to 'pending'.
  /// [user] Details of the user associated to the membership.
  const AccountMemberState({
    this.accountId,
    this.email,
    this.policies,
    this.roles,
    this.status,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'email': ?email,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<AccountMemberPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<AccountMemberPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roles': ?roles,
      'status': ?status,
      'user': ?pulumi.Input.mapOptionalInputValue<AccountMemberUser, Map<String, dynamic>>(user, (value) => value.toMap()),
    };
  }

  factory AccountMemberState.fromMap(Map<String, dynamic> map) {
    return AccountMemberState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountMemberPolicy>(guardedValue, (value) => AccountMemberPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountMemberUser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
