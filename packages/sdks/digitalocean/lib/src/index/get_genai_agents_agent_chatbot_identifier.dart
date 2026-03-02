// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentsAgentChatbotIdentifier {
  /// Chatbot ID
  final pulumi.Input<String>? chatbotId;

  /// Creates a new [GetGenaiAgentsAgentChatbotIdentifier].
  /// [chatbotId] Chatbot ID
  GetGenaiAgentsAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory GetGenaiAgentsAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] == null ? null : (map['chatbotId'] as String).input(),
    );
  }
}

