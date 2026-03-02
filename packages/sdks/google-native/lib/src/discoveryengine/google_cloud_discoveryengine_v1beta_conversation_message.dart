// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1beta_reply.dart';
import 'google_cloud_discoveryengine_v1beta_text_input.dart';

/// Defines a conversation message.
class GoogleCloudDiscoveryengineV1betaConversationMessage {
  /// Search reply.
  final pulumi.Input<GoogleCloudDiscoveryengineV1betaReply>? reply;
  /// User text input.
  final pulumi.Input<GoogleCloudDiscoveryengineV1betaTextInput>? userInput;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaConversationMessage].
  /// [reply] Search reply.
  /// [userInput] User text input.
  GoogleCloudDiscoveryengineV1betaConversationMessage({
    this.reply,
    this.userInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reply': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1betaReply, Map<String, dynamic>>(reply, (value) => value.toMap()),
      'userInput': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1betaTextInput, Map<String, dynamic>>(userInput, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDiscoveryengineV1betaConversationMessage.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaConversationMessage(
      reply: map['reply'] == null ? null : (GoogleCloudDiscoveryengineV1betaReply.fromMap((map['reply']! as Map).cast<String, dynamic>())).input(),
      userInput: map['userInput'] == null ? null : (GoogleCloudDiscoveryengineV1betaTextInput.fromMap((map['userInput']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

