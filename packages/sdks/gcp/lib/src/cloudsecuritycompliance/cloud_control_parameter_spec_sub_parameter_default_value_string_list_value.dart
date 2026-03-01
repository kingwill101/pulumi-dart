// ignore_for_file: unused_element, unnecessary_cast


class CloudControlParameterSpecSubParameterDefaultValueStringListValue {
  /// The strings in the list.
  final List<String> values;

  /// Creates a new [CloudControlParameterSpecSubParameterDefaultValueStringListValue].
  /// [values] The strings in the list.
  CloudControlParameterSpecSubParameterDefaultValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory CloudControlParameterSpecSubParameterDefaultValueStringListValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterDefaultValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

