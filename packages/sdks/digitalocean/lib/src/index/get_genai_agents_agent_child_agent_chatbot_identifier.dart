// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentsAgentChildAgentChatbotIdentifier {
  final pulumi.Input<String> chatbotId;

  /// Creates a new [GetGenaiAgentsAgentChildAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGenaiAgentsAgentChildAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetGenaiAgentsAgentChildAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsAgentChildAgentChatbotIdentifier(
      chatbotId: (map['chatbotId'] as String).input(),
    );
  }
}

