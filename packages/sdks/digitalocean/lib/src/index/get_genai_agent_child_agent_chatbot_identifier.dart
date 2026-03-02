// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentChildAgentChatbotIdentifier {
  final pulumi.Input<String> chatbotId;

  /// Creates a new [GetGenaiAgentChildAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGenaiAgentChildAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetGenaiAgentChildAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentChildAgentChatbotIdentifier(
      chatbotId: (map['chatbotId'] as String).input(),
    );
  }
}

