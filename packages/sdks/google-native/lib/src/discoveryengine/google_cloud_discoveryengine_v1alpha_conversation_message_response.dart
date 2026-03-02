// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1alpha_reply_response.dart';
import 'google_cloud_discoveryengine_v1alpha_text_input_response.dart';

/// Defines a conversation message.
class GoogleCloudDiscoveryengineV1alphaConversationMessageResponse {
  /// Message creation timestamp.
  final pulumi.Input<String> createTime;
  /// Search reply.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaReplyResponse> reply;
  /// User text input.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaTextInputResponse> userInput;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaConversationMessageResponse].
  /// [createTime] Message creation timestamp.
  /// [reply] Search reply.
  /// [userInput] User text input.
  GoogleCloudDiscoveryengineV1alphaConversationMessageResponse({
    required this.createTime,
    required this.reply,
    required this.userInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'reply': pulumi.Input.mapInputValue<GoogleCloudDiscoveryengineV1alphaReplyResponse, Map<String, dynamic>>(reply, (value) => value.toMap()),
      'userInput': pulumi.Input.mapInputValue<GoogleCloudDiscoveryengineV1alphaTextInputResponse, Map<String, dynamic>>(userInput, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaConversationMessageResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaConversationMessageResponse(
      createTime: (map['createTime'] as String).input(),
      reply: (GoogleCloudDiscoveryengineV1alphaReplyResponse.fromMap((map['reply'] as Map).cast<String, dynamic>())).input(),
      userInput: (GoogleCloudDiscoveryengineV1alphaTextInputResponse.fromMap((map['userInput'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

