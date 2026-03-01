// ignore_for_file: unused_element, unnecessary_cast


class EventSubscriptionAdvancedFilterNumberIn {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final String key;
  /// Specifies an array of values to compare to when using a multiple values operator.
  ///
  /// > **Note:** A maximum of total number of advanced filter values allowed on event subscription is 25.
  final List<double> values;

  /// Creates a new [EventSubscriptionAdvancedFilterNumberIn].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  /// [values] Specifies an array of values to compare to when using a multiple values operator.
  EventSubscriptionAdvancedFilterNumberIn({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory EventSubscriptionAdvancedFilterNumberIn.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionAdvancedFilterNumberIn(
      key: map['key'] as String,
      values: (map['values'] as List).cast<double>(),
    );
  }
}

