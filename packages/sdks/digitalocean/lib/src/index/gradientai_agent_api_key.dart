// ignore_for_file: unused_element, unnecessary_cast


class GradientaiAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GradientaiAgentApiKey].
  /// [apiKey] API Key value
  GradientaiAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GradientaiAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

