// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1beta_conversation_message_response.dart';

/// Result data returned by getConversation.
class GetConversationDiscoveryengineV1betaResult {
  /// The time the conversation finished.
  final String endTime;
  /// Conversation messages.
  final List<GoogleCloudDiscoveryengineV1betaConversationMessageResponse> messages;
  /// Immutable. Fully qualified name `project/*/locations/global/collections/{collection}/dataStore/*/conversations/*`
  final String name;
  /// The time the conversation started.
  final String startTime;
  /// The state of the Conversation.
  final String state;
  /// A unique identifier for tracking users.
  final String userPseudoId;

  /// Creates a new [GetConversationDiscoveryengineV1betaResult].
  /// [endTime] The time the conversation finished.
  /// [messages] Conversation messages.
  /// [name] Immutable. Fully qualified name `project/*/locations/global/collections/{collection}/dataStore/*/conversations/*`
  /// [startTime] The time the conversation started.
  /// [state] The state of the Conversation.
  /// [userPseudoId] A unique identifier for tracking users.
  const GetConversationDiscoveryengineV1betaResult({
    required this.endTime,
    required this.messages,
    required this.name,
    required this.startTime,
    required this.state,
    required this.userPseudoId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'messages': pulumi.Input.encodeList<GoogleCloudDiscoveryengineV1betaConversationMessageResponse, Map<String, dynamic>>(messages, (value) => value.toMap()),
      'name': name,
      'startTime': startTime,
      'state': state,
      'userPseudoId': userPseudoId,
    };
  }

  factory GetConversationDiscoveryengineV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetConversationDiscoveryengineV1betaResult(
      endTime: map['endTime'] as String,
      messages: pulumi.Input.decodeList<GoogleCloudDiscoveryengineV1betaConversationMessageResponse>(map['messages']!, (value) => GoogleCloudDiscoveryengineV1betaConversationMessageResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      userPseudoId: map['userPseudoId'] as String,
    );
  }
}

