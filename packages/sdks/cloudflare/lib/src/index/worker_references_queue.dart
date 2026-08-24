// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerReferencesQueue {
  /// ID of the queue consumer configuration.
  final pulumi.Input<String?>? queueConsumerId;
  /// ID of the queue.
  final pulumi.Input<String?>? queueId;
  /// Name of the queue.
  final pulumi.Input<String?>? queueName;

  /// Creates a new [WorkerReferencesQueue].
  /// [queueConsumerId] ID of the queue consumer configuration.
  /// [queueId] ID of the queue.
  /// [queueName] Name of the queue.
  const WorkerReferencesQueue({
    this.queueConsumerId,
    this.queueId,
    this.queueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queueConsumerId': ?queueConsumerId,
      'queueId': ?queueId,
      'queueName': ?queueName,
    };
  }

  factory WorkerReferencesQueue.fromMap(Map<String, dynamic> map) {
    return WorkerReferencesQueue(
      queueConsumerId: (() { final guardedValue = map['queueConsumerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueId: (() { final guardedValue = map['queueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
