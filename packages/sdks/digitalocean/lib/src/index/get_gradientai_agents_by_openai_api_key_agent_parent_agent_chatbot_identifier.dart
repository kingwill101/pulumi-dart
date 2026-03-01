// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier {
  final String chatbotId;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] as String,
    );
  }
}

