// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentChildAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GetGenaiAgentChildAgentApiKey].
  /// [apiKey] API Key value
  GetGenaiAgentChildAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGenaiAgentChildAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentChildAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

