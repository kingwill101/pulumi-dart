// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by Provider.prefixed.
class ProviderPrefixedResult {
  final String result;

  /// Creates a new [ProviderPrefixedResult].
  /// [result] Required.
  const ProviderPrefixedResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory ProviderPrefixedResult.fromMap(Map<String, dynamic> map) {
    return ProviderPrefixedResult(
      result: map['result'] as String,
    );
  }
}
