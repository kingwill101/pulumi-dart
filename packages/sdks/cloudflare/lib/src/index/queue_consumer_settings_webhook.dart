// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueConsumerSettingsWebhook {
  /// UUID.
  final pulumi.Input<String> id;

  /// Creates a new [QueueConsumerSettingsWebhook].
  /// [id] UUID.
  const QueueConsumerSettingsWebhook({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory QueueConsumerSettingsWebhook.fromMap(Map<String, dynamic> map) {
    return QueueConsumerSettingsWebhook(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
