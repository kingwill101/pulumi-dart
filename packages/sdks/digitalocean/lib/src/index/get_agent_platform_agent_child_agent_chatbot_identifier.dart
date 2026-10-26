// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformAgentChildAgentChatbotIdentifier {
  final pulumi.Input<String> chatbotId;

  /// Creates a new [GetAgentPlatformAgentChildAgentChatbotIdentifier].
  /// [chatbotId] Required.
  const GetAgentPlatformAgentChildAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetAgentPlatformAgentChildAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentChildAgentChatbotIdentifier(
      chatbotId: pulumi.Input.fromValue(map['chatbotId'] as String),
    );
  }
}
