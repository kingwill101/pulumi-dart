// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queue_consumer_settings.dart';

class GetQueueConsumer {
  /// A Resource identifier.
  final pulumi.Input<String> consumerId;
  final pulumi.Input<String> createdOn;
  /// Name of the dead letter queue, or empty string if not configured
  final pulumi.Input<String> deadLetterQueue;
  final pulumi.Input<String> queueName;
  /// Name of a Worker
  final pulumi.Input<String> scriptName;
  final pulumi.Input<GetQueueConsumerSettings> settings;
  /// Available values: "worker", "httpPull".
  final pulumi.Input<String> type;

  /// Creates a new [GetQueueConsumer].
  /// [consumerId] A Resource identifier.
  /// [createdOn] Required.
  /// [deadLetterQueue] Name of the dead letter queue, or empty string if not configured
  /// [queueName] Required.
  /// [scriptName] Name of a Worker
  /// [settings] Required.
  /// [type] Available values: "worker", "httpPull".
  const GetQueueConsumer({
    required this.consumerId,
    required this.createdOn,
    required this.deadLetterQueue,
    required this.queueName,
    required this.scriptName,
    required this.settings,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerId': consumerId,
      'createdOn': createdOn,
      'deadLetterQueue': deadLetterQueue,
      'queueName': queueName,
      'scriptName': scriptName,
      'settings': pulumi.Input.mapInputValue<GetQueueConsumerSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetQueueConsumer.fromMap(Map<String, dynamic> map) {
    return GetQueueConsumer(
      consumerId: pulumi.Input.fromValue(map['consumerId'] as String),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      deadLetterQueue: pulumi.Input.fromValue(map['deadLetterQueue'] as String),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
      settings: pulumi.Input.fromValue(GetQueueConsumerSettings.fromMap((map['settings']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
