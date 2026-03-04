// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSubscriptionStorageQueueEndpoint {
  /// Storage queue message time to live in seconds.
  final pulumi.Input<int>? queueMessageTimeToLiveInSeconds;

  /// Specifies the name of the storage queue where the Event Subscription will receive events.
  final pulumi.Input<String> queueName;

  /// Specifies the id of the storage account id where the storage queue is located.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [EventSubscriptionStorageQueueEndpoint].
  /// [queueMessageTimeToLiveInSeconds] Storage queue message time to live in seconds.
  /// [queueName] Specifies the name of the storage queue where the Event Subscription will receive events.
  /// [storageAccountId] Specifies the id of the storage account id where the storage queue is located.
  EventSubscriptionStorageQueueEndpoint({
    this.queueMessageTimeToLiveInSeconds,
    required this.queueName,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queueMessageTimeToLiveInSeconds': ?queueMessageTimeToLiveInSeconds,
      'queueName': queueName,
      'storageAccountId': storageAccountId,
    };
  }

  factory EventSubscriptionStorageQueueEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventSubscriptionStorageQueueEndpoint(
      queueMessageTimeToLiveInSeconds: (() {
        final guardedValue = map['queueMessageTimeToLiveInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
      storageAccountId: pulumi.Input.fromValue(
        map['storageAccountId'] as String,
      ),
    );
  }
}
