// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_consumer_settings.dart';

/// Input properties used for looking up and filtering QueueConsumer resources.
class QueueConsumerState {
  /// A Resource identifier.
  final pulumi.Input<String?>? accountId;
  /// A Resource identifier.
  final pulumi.Input<String?>? consumerId;
  final pulumi.Input<String?>? createdOn;
  final pulumi.Input<String?>? deadLetterQueue;
  /// A Resource identifier.
  final pulumi.Input<String?>? queueId;
  final pulumi.Input<String?>? queueName;
  /// Name of a Worker
  final pulumi.Input<String?>? scriptName;
  final pulumi.Input<QueueConsumerSettings?>? settings;
  /// Available values: "worker", "httpPull".
  final pulumi.Input<String?>? type;

  /// Creates a new [QueueConsumerState].
  /// [accountId] A Resource identifier.
  /// [consumerId] A Resource identifier.
  /// [createdOn] Optional.
  /// [deadLetterQueue] Optional.
  /// [queueId] A Resource identifier.
  /// [queueName] Optional.
  /// [scriptName] Name of a Worker
  /// [settings] Optional.
  /// [type] Available values: "worker", "httpPull".
  const QueueConsumerState({
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
      'settings': ?pulumi.Input.mapOptionalInputValue<QueueConsumerSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory QueueConsumerState.fromMap(Map<String, dynamic> map) {
    return QueueConsumerState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerId: (() { final guardedValue = map['consumerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deadLetterQueue: (() { final guardedValue = map['deadLetterQueue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueId: (() { final guardedValue = map['queueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueConsumerSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
