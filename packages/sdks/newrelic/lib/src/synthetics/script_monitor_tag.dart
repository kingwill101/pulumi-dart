// ignore_for_file: unused_element, unnecessary_cast


class ScriptMonitorTag {
  /// Name of the tag key.
  final String key;
  /// Values associated with the tag key.
  final List<String> values;

  /// Creates a new [ScriptMonitorTag].
  /// [key] Name of the tag key.
  /// [values] Values associated with the tag key.
  ScriptMonitorTag({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory ScriptMonitorTag.fromMap(Map<String, dynamic> map) {
    return ScriptMonitorTag(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

