// ignore_for_file: unused_element, unnecessary_cast


class GenaiAgentChildAgentChatbotIdentifier {
  final String? chatbotId;

  /// Creates a new [GenaiAgentChildAgentChatbotIdentifier].
  /// [chatbotId] Optional.
  GenaiAgentChildAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory GenaiAgentChildAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GenaiAgentChildAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] == null ? null : map['chatbotId'] as String,
    );
  }
}

