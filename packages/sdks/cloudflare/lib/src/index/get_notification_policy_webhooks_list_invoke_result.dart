// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notification_policy_webhooks_list_result.dart';

/// Result data returned by getNotificationPolicyWebhooksList.
class GetNotificationPolicyWebhooksListInvokeResult {
  /// The account id
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetNotificationPolicyWebhooksListResult>? results;

  /// Creates a new [GetNotificationPolicyWebhooksListInvokeResult].
  /// [accountId] The account id
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetNotificationPolicyWebhooksListInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNotificationPolicyWebhooksListResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetNotificationPolicyWebhooksListInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationPolicyWebhooksListInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNotificationPolicyWebhooksListResult>(guardedValue, (value) => GetNotificationPolicyWebhooksListResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
