// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentsAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GetGenaiAgentsAgentApiKey].
  /// [apiKey] API Key value
  GetGenaiAgentsAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGenaiAgentsAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

