// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentPlatformAgentChatbotIdentifier {
  final pulumi.Input<String?>? chatbotId;

  /// Creates a new [AgentPlatformAgentChatbotIdentifier].
  /// [chatbotId] Optional.
  const AgentPlatformAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory AgentPlatformAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return AgentPlatformAgentChatbotIdentifier(
      chatbotId: (() { final guardedValue = map['chatbotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
