// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queue_consumers_result.dart';

/// Result data returned by getQueueConsumers.
class GetQueueConsumersInvokeResult {
  /// A Resource identifier.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// A Resource identifier.
  final String? queueId;
  /// The items returned by the data source
  final List<GetQueueConsumersResult>? results;

  /// Creates a new [GetQueueConsumersInvokeResult].
  /// [accountId] A Resource identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [queueId] A Resource identifier.
  /// [results] The items returned by the data source
  const GetQueueConsumersInvokeResult({
    this.accountId,
    this.maxItems,
    this.queueId,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'queueId': ?queueId,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetQueueConsumersResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetQueueConsumersInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetQueueConsumersInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      queueId: (() { final guardedValue = map['queueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetQueueConsumersResult>(guardedValue, (value) => GetQueueConsumersResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
