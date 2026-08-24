// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetQueueSettings {
  /// Number of seconds to delay delivery of all messages to consumers.
  final pulumi.Input<double> deliveryDelay;
  /// Indicates if message delivery to consumers is currently paused.
  final pulumi.Input<bool> deliveryPaused;
  /// Number of seconds after which an unconsumed message will be delayed.
  final pulumi.Input<double> messageRetentionPeriod;

  /// Creates a new [GetQueueSettings].
  /// [deliveryDelay] Number of seconds to delay delivery of all messages to consumers.
  /// [deliveryPaused] Indicates if message delivery to consumers is currently paused.
  /// [messageRetentionPeriod] Number of seconds after which an unconsumed message will be delayed.
  const GetQueueSettings({
    required this.deliveryDelay,
    required this.deliveryPaused,
    required this.messageRetentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryDelay': deliveryDelay,
      'deliveryPaused': deliveryPaused,
      'messageRetentionPeriod': messageRetentionPeriod,
    };
  }

  factory GetQueueSettings.fromMap(Map<String, dynamic> map) {
    return GetQueueSettings(
      deliveryDelay: pulumi.Input.fromValue((map['deliveryDelay'] as num).toDouble()),
      deliveryPaused: pulumi.Input.fromValue(map['deliveryPaused'] as bool),
      messageRetentionPeriod: pulumi.Input.fromValue((map['messageRetentionPeriod'] as num).toDouble()),
    );
  }
}
