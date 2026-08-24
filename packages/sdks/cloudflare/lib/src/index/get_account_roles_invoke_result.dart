// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_roles_result.dart';

/// Result data returned by getAccountRoles.
class GetAccountRolesInvokeResult {
  /// Account identifier tag.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetAccountRolesResult>? results;

  /// Creates a new [GetAccountRolesInvokeResult].
  /// [accountId] Account identifier tag.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetAccountRolesInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountRolesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAccountRolesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetAccountRolesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountRolesResult>(guardedValue, (value) => GetAccountRolesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
