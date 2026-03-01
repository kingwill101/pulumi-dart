// ignore_for_file: unused_element, unnecessary_cast


class StepDimensionValueEntryResponse {
  final String key;
  final String value;

  /// Creates a new [StepDimensionValueEntryResponse].
  /// [key] Required.
  /// [value] Required.
  StepDimensionValueEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory StepDimensionValueEntryResponse.fromMap(Map<String, dynamic> map) {
    return StepDimensionValueEntryResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

