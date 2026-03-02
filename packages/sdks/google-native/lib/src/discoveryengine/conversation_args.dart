// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_state.dart';
import 'google_cloud_discoveryengine_v1alpha_conversation_message.dart';

/// {@template pulumi_discoveryengine_v1alpha_conversation_args_doc}
/// The set of arguments for Conversation.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1alpha_conversation_args_doc}
class ConversationArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String>? location;
  /// Conversation messages.
  final pulumi.Input<List<GoogleCloudDiscoveryengineV1alphaConversationMessage>>? messages;
  /// Immutable. Fully qualified name `project/*/locations/global/collections/{collection}/dataStore/*/conversations/*`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The state of the Conversation.
  final pulumi.Input<ConversationState>? state;
  /// A unique identifier for tracking users.
  final pulumi.Input<String>? userPseudoId;

  /// Creates a new [ConversationArgs].
  /// [collectionId] Required.
  /// [dataStoreId] Required.
  /// [location] Optional.
  /// [messages] Conversation messages.
  /// [name] Immutable. Fully qualified name `project/*/locations/global/collections/{collection}/dataStore/*/conversations/*`
  /// [project] Optional.
  /// [state] The state of the Conversation.
  /// [userPseudoId] A unique identifier for tracking users.
  ConversationArgs({
    required this.collectionId,
    required this.dataStoreId,
    this.location,
    this.messages,
    this.name,
    this.project,
    this.state,
    this.userPseudoId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'dataStoreId': dataStoreId,
      'location': ?location,
      'messages': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDiscoveryengineV1alphaConversationMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<GoogleCloudDiscoveryengineV1alphaConversationMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'state': ?pulumi.Input.mapOptionalInputValue<ConversationState, String>(state, (value) => value.value),
      'userPseudoId': ?userPseudoId,
    };
  }

  factory ConversationArgs.fromMap(Map<String, dynamic> map) {
    return ConversationArgs(
      collectionId: (map['collectionId'] as String).input(),
      dataStoreId: (map['dataStoreId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      messages: map['messages'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDiscoveryengineV1alphaConversationMessage>(map['messages']!, (value) => GoogleCloudDiscoveryengineV1alphaConversationMessage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      state: map['state'] == null ? null : (ConversationState.fromValue(map['state']! as String)).input(),
      userPseudoId: map['userPseudoId'] == null ? null : (map['userPseudoId']! as String).input(),
    );
  }
}

