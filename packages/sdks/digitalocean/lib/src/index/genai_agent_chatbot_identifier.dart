// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GenaiAgentChatbotIdentifier {
  final pulumi.Input<String>? chatbotId;

  /// Creates a new [GenaiAgentChatbotIdentifier].
  /// [chatbotId] Optional.
  GenaiAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory GenaiAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GenaiAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] == null ? null : (map['chatbotId']! as String).input(),
    );
  }
}

