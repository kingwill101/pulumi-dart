// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by providerValue.
class ProviderValueResult {
  final String? result;

  /// Creates a new [ProviderValueResult].
  /// [result] Optional.
  const ProviderValueResult({
    this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': ?result,
    };
  }

  factory ProviderValueResult.fromMap(Map<String, dynamic> map) {
    return ProviderValueResult(
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
