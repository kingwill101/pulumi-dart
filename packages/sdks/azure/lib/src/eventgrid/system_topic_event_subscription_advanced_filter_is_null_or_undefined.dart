// ignore_for_file: unused_element, unnecessary_cast


class SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final String key;

  /// Creates a new [SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined.fromMap(Map<String, dynamic> map) {
    return SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined(
      key: map['key'] as String,
    );
  }
}

