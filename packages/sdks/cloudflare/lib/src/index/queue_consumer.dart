// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_consumer_settings.dart';

class QueueConsumer {
  /// A Resource identifier.
  final pulumi.Input<String?>? consumerId;
  final pulumi.Input<String?>? createdOn;
  /// Name of the dead letter queue, or empty string if not configured
  final pulumi.Input<String?>? deadLetterQueue;
  final pulumi.Input<String?>? queueName;
  /// Name of a Worker
  final pulumi.Input<String?>? scriptName;
  final pulumi.Input<QueueConsumerSettings?>? settings;
  /// Available values: "worker", "httpPull".
  final pulumi.Input<String?>? type;

  /// Creates a new [QueueConsumer].
  /// [consumerId] A Resource identifier.
  /// [createdOn] Optional.
  /// [deadLetterQueue] Name of the dead letter queue, or empty string if not configured
  /// [queueName] Optional.
  /// [scriptName] Name of a Worker
  /// [settings] Optional.
  /// [type] Available values: "worker", "httpPull".
  const QueueConsumer({
    this.consumerId,
    this.createdOn,
    this.deadLetterQueue,
    this.queueName,
    this.scriptName,
    this.settings,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerId': ?consumerId,
      'createdOn': ?createdOn,
      'deadLetterQueue': ?deadLetterQueue,
      'queueName': ?queueName,
      'scriptName': ?scriptName,
      'settings': ?pulumi.Input.mapOptionalInputValue<QueueConsumerSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory QueueConsumer.fromMap(Map<String, dynamic> map) {
    return QueueConsumer(
      consumerId: (() { final guardedValue = map['consumerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deadLetterQueue: (() { final guardedValue = map['deadLetterQueue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueConsumerSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
