// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by concatWorld.
class ConcatWorldResult {
  final String result;

  /// Creates a new [ConcatWorldResult].
  /// [result] Required.
  const ConcatWorldResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory ConcatWorldResult.fromMap(Map<String, dynamic> map) {
    return ConcatWorldResult(
      result: map['result'] as String,
    );
  }
}
