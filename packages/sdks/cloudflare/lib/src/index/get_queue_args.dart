// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_queue_get_queue_args_doc}
/// Arguments for getQueue.
/// {@endtemplate}
/// {@macro pulumi_index_get_queue_get_queue_args_doc}
class GetQueueArgs {
  /// A Resource identifier.
  final pulumi.Input<String?>? accountId;
  /// A Resource identifier.
  final pulumi.Input<String> queueId;

  /// Creates a new [GetQueueArgs].
  /// [accountId] A Resource identifier.
  /// [queueId] A Resource identifier.
  const GetQueueArgs({
    this.accountId,
    required this.queueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'queueId': queueId,
    };
  }

  factory GetQueueArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueId: pulumi.Input.fromValue(map['queueId'] as String),
    );
  }
}
