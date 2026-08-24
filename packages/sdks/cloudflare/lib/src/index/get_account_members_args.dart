// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_account_members_get_account_members_args_doc}
/// Arguments for getAccountMembers.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_members_get_account_members_args_doc}
class GetAccountMembersArgs {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// Direction to order results.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Field to order results by.
  /// Available values: "user.first*name", "user.last*name", "user.email", "status".
  final pulumi.Input<String?>? order;
  /// A member's status in the account.
  /// Available values: "accepted", "pending", "rejected".
  final pulumi.Input<String?>? status;

  /// Creates a new [GetAccountMembersArgs].
  /// [accountId] Account identifier tag.
  /// [direction] Direction to order results.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to order results by.
  /// [status] A member's status in the account.
  const GetAccountMembersArgs({
    this.accountId,
    this.direction,
    this.maxItems,
    this.order,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
      'status': ?status,
    };
  }

  factory GetAccountMembersArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountMembersArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
