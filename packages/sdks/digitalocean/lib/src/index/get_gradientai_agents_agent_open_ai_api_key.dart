// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentsAgentOpenAiApiKey {
  /// OpenAI API Key
  final String? apiKey;

  /// Creates a new [GetGradientaiAgentsAgentOpenAiApiKey].
  /// [apiKey] OpenAI API Key
  GetGradientaiAgentsAgentOpenAiApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGradientaiAgentsAgentOpenAiApiKey.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsAgentOpenAiApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

