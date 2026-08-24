// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_member_policy.dart';

/// {@template pulumi_index_account_member_account_member_args_doc}
/// The set of arguments for AccountMember.
/// {@endtemplate}
/// {@macro pulumi_index_account_member_account_member_args_doc}
class AccountMemberArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  /// The contact email address of the user.
  final pulumi.Input<String> email;
  /// Array of policies associated with this member.
  final pulumi.Input<List<AccountMemberPolicy>?>? policies;
  /// Set of roles associated with this member.
  final pulumi.Input<List<String>?>? roles;
  /// Status of the member invitation. If not provided during creation, defaults to 'pending'.
  /// Changing from 'accepted' back to 'pending' will trigger a replacement of the member resource in Terraform.
  /// Available values: "accepted", "pending".
  final pulumi.Input<String?>? status;

  /// Creates a new [AccountMemberArgs].
  /// [accountId] Account identifier tag.
  /// [email] The contact email address of the user.
  /// [policies] Array of policies associated with this member.
  /// [roles] Set of roles associated with this member.
  /// [status] Status of the member invitation. If not provided during creation, defaults to 'pending'.
  const AccountMemberArgs({
    required this.accountId,
    required this.email,
    this.policies,
    this.roles,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'email': email,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<AccountMemberPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<AccountMemberPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roles': ?roles,
      'status': ?status,
    };
  }

  factory AccountMemberArgs.fromMap(Map<String, dynamic> map) {
    return AccountMemberArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountMemberPolicy>(guardedValue, (value) => AccountMemberPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
