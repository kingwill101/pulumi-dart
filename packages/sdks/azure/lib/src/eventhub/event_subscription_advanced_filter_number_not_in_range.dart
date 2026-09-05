// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSubscriptionAdvancedFilterNumberNotInRange {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final pulumi.Input<String> key;
  /// Specifies an array of values to compare to when using a multiple values operator.
  ///
  /// &gt; **Note:** A maximum of total number of advanced filter values allowed on event subscription is 25.
  final pulumi.Input<List<List<double>>> values;

  /// Creates a new [EventSubscriptionAdvancedFilterNumberNotInRange].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  /// [values] Specifies an array of values to compare to when using a multiple values operator.
  const EventSubscriptionAdvancedFilterNumberNotInRange({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory EventSubscriptionAdvancedFilterNumberNotInRange.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionAdvancedFilterNumberNotInRange(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue(pulumi.Input.decodeList<List<double>>(map['values']!, (value) => (value as List).cast<double>())),
    );
  }
}
