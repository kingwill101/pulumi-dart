// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueSettings {
  /// Number of seconds to delay delivery of all messages to consumers.
  final pulumi.Input<double?>? deliveryDelay;
  /// Indicates if message delivery to consumers is currently paused.
  final pulumi.Input<bool?>? deliveryPaused;
  /// Number of seconds after which an unconsumed message will be delayed.
  final pulumi.Input<double?>? messageRetentionPeriod;

  /// Creates a new [QueueSettings].
  /// [deliveryDelay] Number of seconds to delay delivery of all messages to consumers.
  /// [deliveryPaused] Indicates if message delivery to consumers is currently paused.
  /// [messageRetentionPeriod] Number of seconds after which an unconsumed message will be delayed.
  const QueueSettings({
    this.deliveryDelay,
    this.deliveryPaused,
    this.messageRetentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryDelay': ?deliveryDelay,
      'deliveryPaused': ?deliveryPaused,
      'messageRetentionPeriod': ?messageRetentionPeriod,
    };
  }

  factory QueueSettings.fromMap(Map<String, dynamic> map) {
    return QueueSettings(
      deliveryDelay: (() { final guardedValue = map['deliveryDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      deliveryPaused: (() { final guardedValue = map['deliveryPaused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      messageRetentionPeriod: (() { final guardedValue = map['messageRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
