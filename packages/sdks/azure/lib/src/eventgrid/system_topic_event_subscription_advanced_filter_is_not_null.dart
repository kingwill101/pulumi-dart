// ignore_for_file: unused_element, unnecessary_cast


class SystemTopicEventSubscriptionAdvancedFilterIsNotNull {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final String key;

  /// Creates a new [SystemTopicEventSubscriptionAdvancedFilterIsNotNull].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  SystemTopicEventSubscriptionAdvancedFilterIsNotNull({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory SystemTopicEventSubscriptionAdvancedFilterIsNotNull.fromMap(Map<String, dynamic> map) {
    return SystemTopicEventSubscriptionAdvancedFilterIsNotNull(
      key: map['key'] as String,
    );
  }
}

