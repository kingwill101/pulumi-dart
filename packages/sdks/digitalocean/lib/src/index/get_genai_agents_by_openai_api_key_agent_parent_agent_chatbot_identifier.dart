// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier {
  final pulumi.Input<String> chatbotId;

  /// Creates a new [GetGenaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGenaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'chatbotId': chatbotId};
  }

  factory GetGenaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGenaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier(
      chatbotId: pulumi.Input.fromValue(map['chatbotId'] as String),
    );
  }
}
