// ignore_for_file: unused_element, unnecessary_cast


class ValidationThresholdResponse {
  /// Selection of how the type evaluation is applied to the cluster calculation.
  final String grouping;
  /// Selection of how the threshold should be evaluated.
  final String type;
  /// The numeric threshold value.
  final double value;

  /// Creates a new [ValidationThresholdResponse].
  /// [grouping] Selection of how the type evaluation is applied to the cluster calculation.
  /// [type] Selection of how the threshold should be evaluated.
  /// [value] The numeric threshold value.
  ValidationThresholdResponse({
    required this.grouping,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grouping': grouping,
      'type': type,
      'value': value,
    };
  }

  factory ValidationThresholdResponse.fromMap(Map<String, dynamic> map) {
    return ValidationThresholdResponse(
      grouping: map['grouping'] as String,
      type: map['type'] as String,
      value: map['value'] as double,
    );
  }
}

