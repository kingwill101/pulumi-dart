// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier {
  final String chatbotId;

  /// Creates a new [GetGenaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGenaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetGenaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] as String,
    );
  }
}

