// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by prefixed.
class PrefixedResult {
  final String result;

  /// Creates a new [PrefixedResult].
  /// [result] Required.
  const PrefixedResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory PrefixedResult.fromMap(Map<String, dynamic> map) {
    return PrefixedResult(
      result: map['result'] as String,
    );
  }
}
