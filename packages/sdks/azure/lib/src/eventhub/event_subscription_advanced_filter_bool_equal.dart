// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSubscriptionAdvancedFilterBoolEqual {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final pulumi.Input<String> key;
  final pulumi.Input<bool> value;

  /// Creates a new [EventSubscriptionAdvancedFilterBoolEqual].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  /// [value] Required.
  const EventSubscriptionAdvancedFilterBoolEqual({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory EventSubscriptionAdvancedFilterBoolEqual.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionAdvancedFilterBoolEqual(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}
