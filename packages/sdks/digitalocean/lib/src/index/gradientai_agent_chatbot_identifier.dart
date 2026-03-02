// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GradientaiAgentChatbotIdentifier {
  final pulumi.Input<String>? chatbotId;

  /// Creates a new [GradientaiAgentChatbotIdentifier].
  /// [chatbotId] Optional.
  GradientaiAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory GradientaiAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] == null ? null : (map['chatbotId'] as String).input(),
    );
  }
}

