// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notification_policies_result.dart';

/// Result data returned by getNotificationPolicies.
class GetNotificationPoliciesInvokeResult {
  /// The account id
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetNotificationPoliciesResult>? results;

  /// Creates a new [GetNotificationPoliciesInvokeResult].
  /// [accountId] The account id
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetNotificationPoliciesInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNotificationPoliciesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetNotificationPoliciesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationPoliciesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNotificationPoliciesResult>(guardedValue, (value) => GetNotificationPoliciesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
