// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GetGradientaiAgentApiKey].
  /// [apiKey] API Key value
  GetGradientaiAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGradientaiAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

