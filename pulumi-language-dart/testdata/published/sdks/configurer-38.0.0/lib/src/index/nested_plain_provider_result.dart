// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by nestedPlainProvider.
class NestedPlainProviderResult {
  final dynamic provider;
  final int value;

  /// Creates a new [NestedPlainProviderResult].
  /// [provider] Required.
  /// [value] Required.
  const NestedPlainProviderResult({
    required this.provider,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': provider,
      'value': value,
    };
  }

  factory NestedPlainProviderResult.fromMap(Map<String, dynamic> map) {
    return NestedPlainProviderResult(
      provider: map['provider'],
      value: (map['value'] as num).toInt(),
    );
  }
}
