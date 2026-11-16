// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueConsumerSettingsEmail {
  /// The email address.
  final pulumi.Input<String> id;

  /// Creates a new [QueueConsumerSettingsEmail].
  /// [id] The email address.
  const QueueConsumerSettingsEmail({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory QueueConsumerSettingsEmail.fromMap(Map<String, dynamic> map) {
    return QueueConsumerSettingsEmail(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
