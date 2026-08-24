// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by concatWorld.
class ConcatWorldIndexMineResult {
  final String? result;

  /// Creates a new [ConcatWorldIndexMineResult].
  /// [result] Optional.
  const ConcatWorldIndexMineResult({
    this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': ?result,
    };
  }

  factory ConcatWorldIndexMineResult.fromMap(Map<String, dynamic> map) {
    return ConcatWorldIndexMineResult(
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
