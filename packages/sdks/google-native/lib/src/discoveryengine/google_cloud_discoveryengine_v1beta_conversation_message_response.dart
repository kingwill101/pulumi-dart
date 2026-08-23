// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1beta_reply_response.dart';
import 'google_cloud_discoveryengine_v1beta_text_input_response.dart';

/// Defines a conversation message.
class GoogleCloudDiscoveryengineV1betaConversationMessageResponse {
  /// Message creation timestamp.
  final pulumi.Input<String> createTime;
  /// Search reply.
  final pulumi.Input<GoogleCloudDiscoveryengineV1betaReplyResponse> reply;
  /// User text input.
  final pulumi.Input<GoogleCloudDiscoveryengineV1betaTextInputResponse> userInput;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaConversationMessageResponse].
  /// [createTime] Message creation timestamp.
  /// [reply] Search reply.
  /// [userInput] User text input.
  const GoogleCloudDiscoveryengineV1betaConversationMessageResponse({
    required this.createTime,
    required this.reply,
    required this.userInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'reply': pulumi.Input.mapInputValue<GoogleCloudDiscoveryengineV1betaReplyResponse, Map<String, dynamic>>(reply, (value) => value.toMap()),
      'userInput': pulumi.Input.mapInputValue<GoogleCloudDiscoveryengineV1betaTextInputResponse, Map<String, dynamic>>(userInput, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDiscoveryengineV1betaConversationMessageResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaConversationMessageResponse(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      reply: pulumi.Input.fromValue(GoogleCloudDiscoveryengineV1betaReplyResponse.fromMap((map['reply']! as Map).cast<String, dynamic>())),
      userInput: pulumi.Input.fromValue(GoogleCloudDiscoveryengineV1betaTextInputResponse.fromMap((map['userInput']! as Map).cast<String, dynamic>())),
    );
  }
}
