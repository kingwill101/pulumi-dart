// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_members_result.dart';

/// Result data returned by getAccountMembers.
class GetAccountMembersInvokeResult {
  /// Account identifier tag.
  final String? accountId;
  /// Direction to order results.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Field to order results by.
  /// Available values: "user.first*name", "user.last*name", "user.email", "status".
  final String? order;
  /// The items returned by the data source
  final List<GetAccountMembersResult>? results;
  /// A member's status in the account.
  /// Available values: "accepted", "pending", "rejected".
  final String? status;

  /// Creates a new [GetAccountMembersInvokeResult].
  /// [accountId] Account identifier tag.
  /// [direction] Direction to order results.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to order results by.
  /// [results] The items returned by the data source
  /// [status] A member's status in the account.
  const GetAccountMembersInvokeResult({
    this.accountId,
    this.direction,
    this.maxItems,
    this.order,
    this.results,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountMembersResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
    };
  }

  factory GetAccountMembersInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetAccountMembersInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountMembersResult>(guardedValue, (value) => GetAccountMembersResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
