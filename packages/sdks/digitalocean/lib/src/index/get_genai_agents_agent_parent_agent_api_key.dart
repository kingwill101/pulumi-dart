// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentsAgentParentAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GetGenaiAgentsAgentParentAgentApiKey].
  /// [apiKey] API Key value
  GetGenaiAgentsAgentParentAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGenaiAgentsAgentParentAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsAgentParentAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

