// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentsAgentChatbotIdentifier {
  /// Chatbot ID
  final pulumi.Input<String>? chatbotId;

  /// Creates a new [GetGradientaiAgentsAgentChatbotIdentifier].
  /// [chatbotId] Chatbot ID
  GetGradientaiAgentsAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory GetGradientaiAgentsAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] == null ? null : (map['chatbotId']! as String).input(),
    );
  }
}

