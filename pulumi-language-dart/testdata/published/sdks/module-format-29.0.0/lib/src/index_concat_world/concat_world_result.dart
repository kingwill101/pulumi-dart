// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by concatWorld.
class ConcatWorldResult {
  final String? result;

  /// Creates a new [ConcatWorldResult].
  /// [result] Optional.
  const ConcatWorldResult({
    this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': ?result,
    };
  }

  factory ConcatWorldResult.fromMap(Map<String, dynamic> map) {
    return ConcatWorldResult(
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
