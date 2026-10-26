// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentPlatformAgentChildAgentChatbotIdentifier {
  final pulumi.Input<String?>? chatbotId;

  /// Creates a new [AgentPlatformAgentChildAgentChatbotIdentifier].
  /// [chatbotId] Optional.
  const AgentPlatformAgentChildAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory AgentPlatformAgentChildAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return AgentPlatformAgentChildAgentChatbotIdentifier(
      chatbotId: (() { final guardedValue = map['chatbotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
