// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotificationChannelProperty {
  /// Notification property display key.
  final pulumi.Input<String>? displayValue;
  /// Notification property key.
  final pulumi.Input<String> key;
  /// Notification property label.
  final pulumi.Input<String>? label;
  /// Notification property value.
  final pulumi.Input<String> value;

  /// Creates a new [NotificationChannelProperty].
  /// [displayValue] Notification property display key.
  /// [key] Notification property key.
  /// [label] Notification property label.
  /// [value] Notification property value.
  NotificationChannelProperty({
    this.displayValue,
    required this.key,
    this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayValue': ?displayValue,
      'key': key,
      'label': ?label,
      'value': value,
    };
  }

  factory NotificationChannelProperty.fromMap(Map<String, dynamic> map) {
    return NotificationChannelProperty(
      displayValue: map['displayValue'] == null ? null : (map['displayValue']! as String).input(),
      key: (map['key'] as String).input(),
      label: map['label'] == null ? null : (map['label']! as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

