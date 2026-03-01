// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier {
  /// Chatbot ID
  final String? chatbotId;

  /// Creates a new [GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier].
  /// [chatbotId] Chatbot ID
  GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] == null ? null : map['chatbotId'] as String,
    );
  }
}

