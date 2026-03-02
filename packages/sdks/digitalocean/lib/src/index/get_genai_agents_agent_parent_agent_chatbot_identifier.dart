// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentsAgentParentAgentChatbotIdentifier {
  final pulumi.Input<String> chatbotId;

  /// Creates a new [GetGenaiAgentsAgentParentAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGenaiAgentsAgentParentAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetGenaiAgentsAgentParentAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsAgentParentAgentChatbotIdentifier(
      chatbotId: (map['chatbotId'] as String).input(),
    );
  }
}

