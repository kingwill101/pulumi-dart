// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentParentAgentChatbotIdentifier {
  final pulumi.Input<String> chatbotId;

  /// Creates a new [GetGradientaiAgentParentAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGradientaiAgentParentAgentChatbotIdentifier({required this.chatbotId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'chatbotId': chatbotId};
  }

  factory GetGradientaiAgentParentAgentChatbotIdentifier.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGradientaiAgentParentAgentChatbotIdentifier(
      chatbotId: pulumi.Input.fromValue(map['chatbotId'] as String),
    );
  }
}
