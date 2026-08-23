// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getText.
class GetTextResult {
  final String result;

  /// Creates a new [GetTextResult].
  /// [result] Required.
  const GetTextResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory GetTextResult.fromMap(Map<String, dynamic> map) {
    return GetTextResult(
      result: map['result'] as String,
    );
  }
}
