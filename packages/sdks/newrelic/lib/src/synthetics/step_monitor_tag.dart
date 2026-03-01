// ignore_for_file: unused_element, unnecessary_cast


class StepMonitorTag {
  /// Name of the tag key.
  final String key;
  /// Values associated with the tag key.
  final List<String> values;

  /// Creates a new [StepMonitorTag].
  /// [key] Name of the tag key.
  /// [values] Values associated with the tag key.
  StepMonitorTag({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory StepMonitorTag.fromMap(Map<String, dynamic> map) {
    return StepMonitorTag(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

