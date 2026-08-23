// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by concatWorld.
class ConcatWorldIndexMineResult {
  final String result;

  /// Creates a new [ConcatWorldIndexMineResult].
  /// [result] Required.
  const ConcatWorldIndexMineResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory ConcatWorldIndexMineResult.fromMap(Map<String, dynamic> map) {
    return ConcatWorldIndexMineResult(
      result: map['result'] as String,
    );
  }
}
