// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformAgentsByOpenaiApiKeyAgentChatbotIdentifier {
  /// Chatbot ID
  final pulumi.Input<String?>? chatbotId;

  /// Creates a new [GetAgentPlatformAgentsByOpenaiApiKeyAgentChatbotIdentifier].
  /// [chatbotId] Chatbot ID
  const GetAgentPlatformAgentsByOpenaiApiKeyAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory GetAgentPlatformAgentsByOpenaiApiKeyAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsByOpenaiApiKeyAgentChatbotIdentifier(
      chatbotId: (() { final guardedValue = map['chatbotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
