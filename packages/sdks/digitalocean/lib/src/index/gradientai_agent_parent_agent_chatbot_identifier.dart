// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GradientaiAgentParentAgentChatbotIdentifier {
  final pulumi.Input<String>? chatbotId;

  /// Creates a new [GradientaiAgentParentAgentChatbotIdentifier].
  /// [chatbotId] Optional.
  GradientaiAgentParentAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory GradientaiAgentParentAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentParentAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] == null ? null : (map['chatbotId']! as String).input(),
    );
  }
}

