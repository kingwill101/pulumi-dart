// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by Custom.providerValue.
class CustomProviderValueResult {
  final String result;

  /// Creates a new [CustomProviderValueResult].
  /// [result] Required.
  const CustomProviderValueResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory CustomProviderValueResult.fromMap(Map<String, dynamic> map) {
    return CustomProviderValueResult(
      result: map['result'] as String,
    );
  }
}
