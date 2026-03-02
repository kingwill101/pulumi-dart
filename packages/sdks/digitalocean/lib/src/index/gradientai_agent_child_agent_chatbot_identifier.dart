// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GradientaiAgentChildAgentChatbotIdentifier {
  final pulumi.Input<String>? chatbotId;

  /// Creates a new [GradientaiAgentChildAgentChatbotIdentifier].
  /// [chatbotId] Optional.
  GradientaiAgentChildAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory GradientaiAgentChildAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentChildAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] == null ? null : (map['chatbotId']! as String).input(),
    );
  }
}

