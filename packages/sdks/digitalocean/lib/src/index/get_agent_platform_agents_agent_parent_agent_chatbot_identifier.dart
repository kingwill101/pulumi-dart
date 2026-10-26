// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformAgentsAgentParentAgentChatbotIdentifier {
  final pulumi.Input<String> chatbotId;

  /// Creates a new [GetAgentPlatformAgentsAgentParentAgentChatbotIdentifier].
  /// [chatbotId] Required.
  const GetAgentPlatformAgentsAgentParentAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetAgentPlatformAgentsAgentParentAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsAgentParentAgentChatbotIdentifier(
      chatbotId: pulumi.Input.fromValue(map['chatbotId'] as String),
    );
  }
}
