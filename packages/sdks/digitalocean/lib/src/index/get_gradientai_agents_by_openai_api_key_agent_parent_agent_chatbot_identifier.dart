// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier {
  final pulumi.Input<String> chatbotId;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'chatbotId': chatbotId};
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier(
      chatbotId: pulumi.Input.fromValue(map['chatbotId'] as String),
    );
  }
}
