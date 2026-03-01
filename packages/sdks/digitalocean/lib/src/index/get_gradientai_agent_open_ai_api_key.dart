// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentOpenAiApiKey {
  /// OpenAI API Key
  final String? apiKey;

  /// Creates a new [GetGradientaiAgentOpenAiApiKey].
  /// [apiKey] OpenAI API Key
  GetGradientaiAgentOpenAiApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGradientaiAgentOpenAiApiKey.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentOpenAiApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

