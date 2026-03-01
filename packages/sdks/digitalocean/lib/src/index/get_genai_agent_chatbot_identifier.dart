// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentChatbotIdentifier {
  /// Chatbot ID
  final String? chatbotId;

  /// Creates a new [GetGenaiAgentChatbotIdentifier].
  /// [chatbotId] Chatbot ID
  GetGenaiAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory GetGenaiAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] == null ? null : map['chatbotId'] as String,
    );
  }
}

