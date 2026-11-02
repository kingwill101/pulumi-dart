// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier {
  final pulumi.Input<String> chatbotId;

  /// Creates a new [GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier].
  /// [chatbotId] Required.
  const GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier(
      chatbotId: pulumi.Input.fromValue(map['chatbotId'] as String),
    );
  }
}
