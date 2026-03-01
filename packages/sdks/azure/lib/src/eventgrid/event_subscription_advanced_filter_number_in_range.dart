// ignore_for_file: unused_element, unnecessary_cast


class EventSubscriptionAdvancedFilterNumberInRange {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final String key;
  /// Specifies an array of values to compare to when using a multiple values operator.
  ///
  /// > **Note:** A maximum of total number of advanced filter values allowed on event subscription is 25.
  final List<List<double>> values;

  /// Creates a new [EventSubscriptionAdvancedFilterNumberInRange].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  /// [values] Specifies an array of values to compare to when using a multiple values operator.
  EventSubscriptionAdvancedFilterNumberInRange({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory EventSubscriptionAdvancedFilterNumberInRange.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionAdvancedFilterNumberInRange(
      key: map['key'] as String,
      values: (map['values'] as List).cast<List<double>>(),
    );
  }
}

