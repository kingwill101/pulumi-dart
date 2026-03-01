// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentChildAgentChatbotIdentifier {
  final String chatbotId;

  /// Creates a new [GetGradientaiAgentChildAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGradientaiAgentChildAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetGradientaiAgentChildAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentChildAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] as String,
    );
  }
}

