// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_consumer_settings.dart';

/// {@template pulumi_index_queue_consumer_queue_consumer_args_doc}
/// The set of arguments for QueueConsumer.
/// {@endtemplate}
/// {@macro pulumi_index_queue_consumer_queue_consumer_args_doc}
class QueueConsumerArgs {
  /// A Resource identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? deadLetterQueue;
  /// A Resource identifier.
  final pulumi.Input<String> queueId;
  /// Name of a Worker
  final pulumi.Input<String?>? scriptName;
  final pulumi.Input<QueueConsumerSettings?>? settings;
  /// Available values: "worker", "httpPull".
  final pulumi.Input<String> type;

  /// Creates a new [QueueConsumerArgs].
  /// [accountId] A Resource identifier.
  /// [deadLetterQueue] Optional.
  /// [queueId] A Resource identifier.
  /// [scriptName] Name of a Worker
  /// [settings] Optional.
  /// [type] Available values: "worker", "httpPull".
  const QueueConsumerArgs({
    required this.accountId,
    this.deadLetterQueue,
    required this.queueId,
    this.scriptName,
    this.settings,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'deadLetterQueue': ?deadLetterQueue,
      'queueId': queueId,
      'scriptName': ?scriptName,
      'settings': ?pulumi.Input.mapOptionalInputValue<QueueConsumerSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'type': type,
    };
  }

  factory QueueConsumerArgs.fromMap(Map<String, dynamic> map) {
    return QueueConsumerArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      deadLetterQueue: (() { final guardedValue = map['deadLetterQueue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueId: pulumi.Input.fromValue(map['queueId'] as String),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueConsumerSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
