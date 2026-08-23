// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by prefixed.
class PrefixedResult {
  final String? result;

  /// Creates a new [PrefixedResult].
  /// [result] Optional.
  const PrefixedResult({
    this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': ?result,
    };
  }

  factory PrefixedResult.fromMap(Map<String, dynamic> map) {
    return PrefixedResult(
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
