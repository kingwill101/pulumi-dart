// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by unit.
class UnitResult {
  final String result;

  /// Creates a new [UnitResult].
  /// [result] Required.
  const UnitResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory UnitResult.fromMap(Map<String, dynamic> map) {
    return UnitResult(
      result: map['result'] as String,
    );
  }
}
