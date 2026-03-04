// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier {
  final pulumi.Input<String> chatbotId;

  /// Creates a new [GetGenaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGenaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'chatbotId': chatbotId};
  }

  factory GetGenaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGenaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier(
      chatbotId: pulumi.Input.fromValue(map['chatbotId'] as String),
    );
  }
}
