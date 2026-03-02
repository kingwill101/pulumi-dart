// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1alpha_reply.dart';
import 'google_cloud_discoveryengine_v1alpha_text_input.dart';

/// Defines a conversation message.
class GoogleCloudDiscoveryengineV1alphaConversationMessage {
  /// Search reply.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaReply>? reply;
  /// User text input.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaTextInput>? userInput;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaConversationMessage].
  /// [reply] Search reply.
  /// [userInput] User text input.
  GoogleCloudDiscoveryengineV1alphaConversationMessage({
    this.reply,
    this.userInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reply': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1alphaReply, Map<String, dynamic>>(reply, (value) => value.toMap()),
      'userInput': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1alphaTextInput, Map<String, dynamic>>(userInput, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaConversationMessage.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaConversationMessage(
      reply: map['reply'] == null ? null : (GoogleCloudDiscoveryengineV1alphaReply.fromMap((map['reply'] as Map).cast<String, dynamic>())).input(),
      userInput: map['userInput'] == null ? null : (GoogleCloudDiscoveryengineV1alphaTextInput.fromMap((map['userInput'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

