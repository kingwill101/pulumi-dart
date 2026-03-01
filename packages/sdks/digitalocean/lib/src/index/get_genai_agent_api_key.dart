// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GetGenaiAgentApiKey].
  /// [apiKey] API Key value
  GetGenaiAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGenaiAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

