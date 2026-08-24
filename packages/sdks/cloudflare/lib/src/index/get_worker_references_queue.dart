// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerReferencesQueue {
  /// ID of the queue consumer configuration.
  final pulumi.Input<String> queueConsumerId;
  /// ID of the queue.
  final pulumi.Input<String> queueId;
  /// Name of the queue.
  final pulumi.Input<String> queueName;

  /// Creates a new [GetWorkerReferencesQueue].
  /// [queueConsumerId] ID of the queue consumer configuration.
  /// [queueId] ID of the queue.
  /// [queueName] Name of the queue.
  const GetWorkerReferencesQueue({
    required this.queueConsumerId,
    required this.queueId,
    required this.queueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queueConsumerId': queueConsumerId,
      'queueId': queueId,
      'queueName': queueName,
    };
  }

  factory GetWorkerReferencesQueue.fromMap(Map<String, dynamic> map) {
    return GetWorkerReferencesQueue(
      queueConsumerId: pulumi.Input.fromValue(map['queueConsumerId'] as String),
      queueId: pulumi.Input.fromValue(map['queueId'] as String),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
    );
  }
}
