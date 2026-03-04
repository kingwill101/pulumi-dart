// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GenaiAgentParentAgentChatbotIdentifier {
  final pulumi.Input<String>? chatbotId;

  /// Creates a new [GenaiAgentParentAgentChatbotIdentifier].
  /// [chatbotId] Optional.
  GenaiAgentParentAgentChatbotIdentifier({this.chatbotId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'chatbotId': ?chatbotId};
  }

  factory GenaiAgentParentAgentChatbotIdentifier.fromMap(
    Map<String, dynamic> map,
  ) {
    return GenaiAgentParentAgentChatbotIdentifier(
      chatbotId: (() {
        final guardedValue = map['chatbotId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
