// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentParentAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GetGenaiAgentParentAgentApiKey].
  /// [apiKey] API Key value
  GetGenaiAgentParentAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGenaiAgentParentAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentParentAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

