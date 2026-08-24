// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_member_filter.dart';

/// {@template pulumi_index_get_account_member_get_account_member_args_doc}
/// Arguments for getAccountMember.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_member_get_account_member_args_doc}
class GetAccountMemberArgs {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetAccountMemberFilter?>? filter;
  /// Membership identifier tag.
  final pulumi.Input<String?>? memberId;

  /// Creates a new [GetAccountMemberArgs].
  /// [accountId] Account identifier tag.
  /// [filter] Optional.
  /// [memberId] Membership identifier tag.
  const GetAccountMemberArgs({
    this.accountId,
    this.filter,
    this.memberId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetAccountMemberFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'memberId': ?memberId,
    };
  }

  factory GetAccountMemberArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountMemberArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAccountMemberFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memberId: (() { final guardedValue = map['memberId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
