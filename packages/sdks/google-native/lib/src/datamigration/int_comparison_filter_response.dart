// ignore_for_file: unused_element, unnecessary_cast


/// Filter based on relation between source value and compare value of type integer in ConditionalColumnSetValue
class IntComparisonFilterResponse {
  /// Integer compare value to be used
  final String value;
  /// Relation between source value and compare value
  final String valueComparison;

  /// Creates a new [IntComparisonFilterResponse].
  /// [value] Integer compare value to be used
  /// [valueComparison] Relation between source value and compare value
  IntComparisonFilterResponse({
    required this.value,
    required this.valueComparison,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'valueComparison': valueComparison,
    };
  }

  factory IntComparisonFilterResponse.fromMap(Map<String, dynamic> map) {
    return IntComparisonFilterResponse(
      value: map['value'] as String,
      valueComparison: map['valueComparison'] as String,
    );
  }
}

