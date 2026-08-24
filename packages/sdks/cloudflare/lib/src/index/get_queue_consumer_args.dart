// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_queue_consumer_get_queue_consumer_args_doc}
/// Arguments for getQueueConsumer.
/// {@endtemplate}
/// {@macro pulumi_index_get_queue_consumer_get_queue_consumer_args_doc}
class GetQueueConsumerArgs {
  /// A Resource identifier.
  final pulumi.Input<String> accountId;
  /// A Resource identifier.
  final pulumi.Input<String> queueId;

  /// Creates a new [GetQueueConsumerArgs].
  /// [accountId] A Resource identifier.
  /// [queueId] A Resource identifier.
  const GetQueueConsumerArgs({
    required this.accountId,
    required this.queueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'queueId': queueId,
    };
  }

  factory GetQueueConsumerArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueConsumerArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      queueId: pulumi.Input.fromValue(map['queueId'] as String),
    );
  }
}
