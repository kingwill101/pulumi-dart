// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformAgentParentAgentChatbotIdentifier {
  final pulumi.Input<String> chatbotId;

  /// Creates a new [GetAgentPlatformAgentParentAgentChatbotIdentifier].
  /// [chatbotId] Required.
  const GetAgentPlatformAgentParentAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetAgentPlatformAgentParentAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentParentAgentChatbotIdentifier(
      chatbotId: pulumi.Input.fromValue(map['chatbotId'] as String),
    );
  }
}
