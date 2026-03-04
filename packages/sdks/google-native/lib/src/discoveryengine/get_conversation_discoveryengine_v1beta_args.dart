// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_v1beta_get_conversation_discoveryengine_v1beta_args_doc}
/// Arguments for getConversation.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1beta_get_conversation_discoveryengine_v1beta_args_doc}
class GetConversationDiscoveryengineV1betaArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConversationDiscoveryengineV1betaArgs].
  /// [collectionId] Required.
  /// [conversationId] Required.
  /// [dataStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConversationDiscoveryengineV1betaArgs({
    required this.collectionId,
    required this.conversationId,
    required this.dataStoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'conversationId': conversationId,
      'dataStoreId': dataStoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConversationDiscoveryengineV1betaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConversationDiscoveryengineV1betaArgs(
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      conversationId: pulumi.Input.fromValue(map['conversationId'] as String),
      dataStoreId: pulumi.Input.fromValue(map['dataStoreId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
