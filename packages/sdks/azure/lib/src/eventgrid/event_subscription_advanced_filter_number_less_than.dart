// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSubscriptionAdvancedFilterNumberLessThan {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final pulumi.Input<String> key;
  final pulumi.Input<double> value;

  /// Creates a new [EventSubscriptionAdvancedFilterNumberLessThan].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  /// [value] Required.
  EventSubscriptionAdvancedFilterNumberLessThan({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory EventSubscriptionAdvancedFilterNumberLessThan.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventSubscriptionAdvancedFilterNumberLessThan(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as double),
    );
  }
}
