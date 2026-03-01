// ignore_for_file: unused_element, unnecessary_cast


class GenaiAgentChildAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GenaiAgentChildAgentApiKey].
  /// [apiKey] API Key value
  GenaiAgentChildAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GenaiAgentChildAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GenaiAgentChildAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

