// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNotificationDestinationProperty {
  /// Notification property display key.
  final pulumi.Input<String>? displayValue;

  /// Notification property key.
  final pulumi.Input<String> key;

  /// Notification property label.
  final pulumi.Input<String>? label;

  /// Notification property value.
  final pulumi.Input<String> value;

  /// Creates a new [GetNotificationDestinationProperty].
  /// [displayValue] Notification property display key.
  /// [key] Notification property key.
  /// [label] Notification property label.
  /// [value] Notification property value.
  GetNotificationDestinationProperty({
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

  factory GetNotificationDestinationProperty.fromMap(Map<String, dynamic> map) {
    return GetNotificationDestinationProperty(
      displayValue: (() {
        final guardedValue = map['displayValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
