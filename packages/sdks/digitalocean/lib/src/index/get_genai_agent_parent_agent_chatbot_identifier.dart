// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentParentAgentChatbotIdentifier {
  final String chatbotId;

  /// Creates a new [GetGenaiAgentParentAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGenaiAgentParentAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetGenaiAgentParentAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentParentAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] as String,
    );
  }
}

