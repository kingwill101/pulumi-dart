// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueConsumerSettingsPagerduty {
  /// UUID.
  final pulumi.Input<String> id;

  /// Creates a new [QueueConsumerSettingsPagerduty].
  /// [id] UUID.
  const QueueConsumerSettingsPagerduty({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory QueueConsumerSettingsPagerduty.fromMap(Map<String, dynamic> map) {
    return QueueConsumerSettingsPagerduty(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
