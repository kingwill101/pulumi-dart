// ignore_for_file: unused_element, unnecessary_cast


class GenaiAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GenaiAgentApiKey].
  /// [apiKey] API Key value
  GenaiAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GenaiAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GenaiAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

