// ignore_for_file: unused_element, unnecessary_cast


class InfraAlertConditionWarning {
  final int duration;
  final String? timeFunction;
  final double? value;

  /// Creates a new [InfraAlertConditionWarning].
  /// [duration] Required.
  /// [timeFunction] Optional.
  /// [value] Optional.
  InfraAlertConditionWarning({
    required this.duration,
    this.timeFunction,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'timeFunction': ?timeFunction,
      'value': ?value,
    };
  }

  factory InfraAlertConditionWarning.fromMap(Map<String, dynamic> map) {
    return InfraAlertConditionWarning(
      duration: map['duration'] as int,
      timeFunction: map['timeFunction'] == null ? null : map['timeFunction'] as String,
      value: map['value'] == null ? null : map['value'] as double,
    );
  }
}

