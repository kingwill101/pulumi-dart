// ignore_for_file: unused_element, unnecessary_cast


class EventEventAttribute {
  /// The name of the attribute.
  final String key;
  /// Specify the type for the attribute value. This is useful when passing integer or float values to Insights. Allowed values are string, int, or float. Defaults to string.
  final String? type;
  /// The value of the attribute.
  final String value;

  /// Creates a new [EventEventAttribute].
  /// [key] The name of the attribute.
  /// [type] Specify the type for the attribute value. This is useful when passing integer or float values to Insights. Allowed values are string, int, or float. Defaults to string.
  /// [value] The value of the attribute.
  EventEventAttribute({
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
      key: map['key'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] as String,
    );
  }
}

