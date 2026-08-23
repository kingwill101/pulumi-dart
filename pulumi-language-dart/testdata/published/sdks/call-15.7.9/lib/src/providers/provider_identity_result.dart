// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by Provider.identity.
class ProviderIdentityResult {
  final String result;

  /// Creates a new [ProviderIdentityResult].
  /// [result] Required.
  const ProviderIdentityResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory ProviderIdentityResult.fromMap(Map<String, dynamic> map) {
    return ProviderIdentityResult(
      result: map['result'] as String,
    );
  }
}
