// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentsByOpenaiApiKeyAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GetGenaiAgentsByOpenaiApiKeyAgentApiKey].
  /// [apiKey] API Key value
  GetGenaiAgentsByOpenaiApiKeyAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGenaiAgentsByOpenaiApiKeyAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsByOpenaiApiKeyAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

