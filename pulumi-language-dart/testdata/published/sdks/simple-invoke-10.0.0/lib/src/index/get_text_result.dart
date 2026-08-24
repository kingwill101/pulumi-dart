// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getText.
class GetTextResult {
  final String? result;

  /// Creates a new [GetTextResult].
  /// [result] Optional.
  const GetTextResult({
    this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': ?result,
    };
  }

  factory GetTextResult.fromMap(Map<String, dynamic> map) {
    return GetTextResult(
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
