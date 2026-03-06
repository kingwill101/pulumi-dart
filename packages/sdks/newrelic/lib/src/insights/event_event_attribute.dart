// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventEventAttribute {
  /// The name of the attribute.
  final pulumi.Input<String> key;
  /// Specify the type for the attribute value. This is useful when passing integer or float values to Insights. Allowed values are string, int, or float. Defaults to string.
  final pulumi.Input<String>? type;
  /// The value of the attribute.
  final pulumi.Input<String> value;

  /// Creates a new [EventEventAttribute].
  /// [key] The name of the attribute.
  /// [type] Specify the type for the attribute value. This is useful when passing integer or float values to Insights. Allowed values are string, int, or float. Defaults to string.
  /// [value] The value of the attribute.
  const EventEventAttribute({
    required this.key,
    this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'type': ?type,
      'value': value,
    };
  }

  factory EventEventAttribute.fromMap(Map<String, dynamic> map) {
    return EventEventAttribute(
      key: pulumi.Input.fromValue(map['key'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

