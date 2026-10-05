// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1beta_conversation_message_response.dart';

/// Result data returned by getConversation.
class GetConversationDiscoveryengineV1betaResult {
  /// The time the conversation finished.
  final String? endTime;
  /// Conversation messages.
  final List<GoogleCloudDiscoveryengineV1betaConversationMessageResponse>? messages;
  /// Immutable. Fully qualified name `project/*/locations/global/collections/{collection}/dataStore/*/conversations/*`
  final String? name;
  /// The time the conversation started.
  final String? startTime;
  /// The state of the Conversation.
  final String? state;
  /// A unique identifier for tracking users.
  final String? userPseudoId;

  /// Creates a new [GetConversationDiscoveryengineV1betaResult].
  /// [endTime] The time the conversation finished.
  /// [messages] Conversation messages.
  /// [name] Immutable. Fully qualified name `project/*/locations/global/collections/{collection}/dataStore/*/conversations/*`
  /// [startTime] The time the conversation started.
  /// [state] The state of the Conversation.
  /// [userPseudoId] A unique identifier for tracking users.
  const GetConversationDiscoveryengineV1betaResult({
    this.endTime,
    this.messages,
    this.name,
    this.startTime,
    this.state,
    this.userPseudoId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'messages': ?(() { final guardedValue = messages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDiscoveryengineV1betaConversationMessageResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'startTime': ?startTime,
      'state': ?state,
      'userPseudoId': ?userPseudoId,
    };
  }

  factory GetConversationDiscoveryengineV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetConversationDiscoveryengineV1betaResult(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      messages: (() { final guardedValue = map['messages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDiscoveryengineV1betaConversationMessageResponse>(guardedValue, (value) => GoogleCloudDiscoveryengineV1betaConversationMessageResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userPseudoId: (() { final guardedValue = map['userPseudoId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
