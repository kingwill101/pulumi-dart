// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformAgentsAgentChildAgentChatbotIdentifier {
  final pulumi.Input<String> chatbotId;

  /// Creates a new [GetAgentPlatformAgentsAgentChildAgentChatbotIdentifier].
  /// [chatbotId] Required.
  const GetAgentPlatformAgentsAgentChildAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetAgentPlatformAgentsAgentChildAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsAgentChildAgentChatbotIdentifier(
      chatbotId: pulumi.Input.fromValue(map['chatbotId'] as String),
    );
  }
}
