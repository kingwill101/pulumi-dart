// ignore_for_file: unused_element, unnecessary_cast

import 'get_queue_consumer_settings.dart';

/// Result data returned by getQueueConsumer.
class GetQueueConsumerResult {
  /// A Resource identifier.
  final String? accountId;
  /// A Resource identifier.
  final String? consumerId;
  final String? createdOn;
  /// Name of the dead letter queue, or empty string if not configured
  final String? deadLetterQueue;
  /// A Resource identifier.
  final String? queueId;
  final String? queueName;
  /// Name of a Worker
  final String? scriptName;
  final GetQueueConsumerSettings? settings;
  /// Available values: "worker", "httpPull".
  final String? type;

  /// Creates a new [GetQueueConsumerResult].
  /// [accountId] A Resource identifier.
  /// [consumerId] A Resource identifier.
  /// [createdOn] Optional.
  /// [deadLetterQueue] Name of the dead letter queue, or empty string if not configured
  /// [queueId] A Resource identifier.
  /// [queueName] Optional.
  /// [scriptName] Name of a Worker
  /// [settings] Optional.
  /// [type] Available values: "worker", "httpPull".
  const GetQueueConsumerResult({
    this.accountId,
    this.consumerId,
    this.createdOn,
    this.deadLetterQueue,
    this.queueId,
    this.queueName,
    this.scriptName,
    this.settings,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'consumerId': ?consumerId,
      'createdOn': ?createdOn,
      'deadLetterQueue': ?deadLetterQueue,
      'queueId': ?queueId,
      'queueName': ?queueName,
      'scriptName': ?scriptName,
      'settings': ?settings?.toMap(),
      'type': ?type,
    };
  }

  factory GetQueueConsumerResult.fromMap(Map<String, dynamic> map) {
    return GetQueueConsumerResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consumerId: (() { final guardedValue = map['consumerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deadLetterQueue: (() { final guardedValue = map['deadLetterQueue']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueId: (() { final guardedValue = map['queueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return GetQueueConsumerSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
