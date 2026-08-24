// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_queue_consumers_get_queue_consumers_args_doc}
/// Arguments for getQueueConsumers.
/// {@endtemplate}
/// {@macro pulumi_index_get_queue_consumers_get_queue_consumers_args_doc}
class GetQueueConsumersArgs {
  /// A Resource identifier.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// A Resource identifier.
  final pulumi.Input<String> queueId;

  /// Creates a new [GetQueueConsumersArgs].
  /// [accountId] A Resource identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [queueId] A Resource identifier.
  const GetQueueConsumersArgs({
    this.accountId,
    this.maxItems,
    required this.queueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'queueId': queueId,
    };
  }

  factory GetQueueConsumersArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueConsumersArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      queueId: pulumi.Input.fromValue(map['queueId'] as String),
    );
  }
}
