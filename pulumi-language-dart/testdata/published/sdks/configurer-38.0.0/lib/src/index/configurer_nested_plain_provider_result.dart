// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by Configurer.nestedPlainProvider.
class ConfigurerNestedPlainProviderResult {
  final dynamic provider;
  final int value;

  /// Creates a new [ConfigurerNestedPlainProviderResult].
  /// [provider] Required.
  /// [value] Required.
  const ConfigurerNestedPlainProviderResult({
    required this.provider,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': provider,
      'value': value,
    };
  }

  factory ConfigurerNestedPlainProviderResult.fromMap(Map<String, dynamic> map) {
    return ConfigurerNestedPlainProviderResult(
      provider: map['provider'],
      value: (map['value'] as num).toInt(),
    );
  }
}
