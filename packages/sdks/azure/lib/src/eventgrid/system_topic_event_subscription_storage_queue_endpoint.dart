// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SystemTopicEventSubscriptionStorageQueueEndpoint {
  /// Storage queue message time to live in seconds.
  final pulumi.Input<int>? queueMessageTimeToLiveInSeconds;
  /// Specifies the name of the storage queue where the Event Subscription will receive events.
  final pulumi.Input<String> queueName;
  /// Specifies the id of the storage account id where the storage queue is located.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [SystemTopicEventSubscriptionStorageQueueEndpoint].
  /// [queueMessageTimeToLiveInSeconds] Storage queue message time to live in seconds.
  /// [queueName] Specifies the name of the storage queue where the Event Subscription will receive events.
  /// [storageAccountId] Specifies the id of the storage account id where the storage queue is located.
  SystemTopicEventSubscriptionStorageQueueEndpoint({
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

  factory SystemTopicEventSubscriptionStorageQueueEndpoint.fromMap(Map<String, dynamic> map) {
    return SystemTopicEventSubscriptionStorageQueueEndpoint(
      queueMessageTimeToLiveInSeconds: map['queueMessageTimeToLiveInSeconds'] == null ? null : (map['queueMessageTimeToLiveInSeconds']! as int).input(),
      queueName: (map['queueName'] as String).input(),
      storageAccountId: (map['storageAccountId'] as String).input(),
    );
  }
}

