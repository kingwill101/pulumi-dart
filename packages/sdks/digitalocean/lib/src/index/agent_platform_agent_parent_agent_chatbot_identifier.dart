// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentPlatformAgentParentAgentChatbotIdentifier {
  final pulumi.Input<String?>? chatbotId;

  /// Creates a new [AgentPlatformAgentParentAgentChatbotIdentifier].
  /// [chatbotId] Optional.
  const AgentPlatformAgentParentAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory AgentPlatformAgentParentAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return AgentPlatformAgentParentAgentChatbotIdentifier(
      chatbotId: (() { final guardedValue = map['chatbotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
