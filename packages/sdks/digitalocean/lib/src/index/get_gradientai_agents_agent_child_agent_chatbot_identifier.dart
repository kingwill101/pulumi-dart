// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentsAgentChildAgentChatbotIdentifier {
  final pulumi.Input<String> chatbotId;

  /// Creates a new [GetGradientaiAgentsAgentChildAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGradientaiAgentsAgentChildAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetGradientaiAgentsAgentChildAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsAgentChildAgentChatbotIdentifier(
      chatbotId: (map['chatbotId'] as String).input(),
    );
  }
}

