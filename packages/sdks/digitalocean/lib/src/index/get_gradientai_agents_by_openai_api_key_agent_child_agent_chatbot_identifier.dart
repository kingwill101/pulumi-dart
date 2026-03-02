// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier {
  final pulumi.Input<String> chatbotId;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier(
      chatbotId: (map['chatbotId'] as String).input(),
    );
  }
}

