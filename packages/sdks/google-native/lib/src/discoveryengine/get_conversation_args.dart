// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_v1alpha_get_conversation_args_doc}
/// Arguments for getConversation.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1alpha_get_conversation_args_doc}
class GetConversationArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConversationArgs].
  /// [collectionId] Required.
  /// [conversationId] Required.
  /// [dataStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConversationArgs({
    required pulumi.Output<String> collectionId,
    required pulumi.Output<String> conversationId,
    required pulumi.Output<String> dataStoreId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      collectionId = pulumi.Input.asInput<String>(collectionId),
      conversationId = pulumi.Input.asInput<String>(conversationId),
      dataStoreId = pulumi.Input.asInput<String>(dataStoreId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'conversationId': conversationId,
      'dataStoreId': dataStoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConversationArgs.fromMap(Map<String, dynamic> map) {
    return GetConversationArgs(
      collectionId: pulumi.Output.create<String>(map['collectionId'] as String),
      conversationId: pulumi.Output.create<String>(map['conversationId'] as String),
      dataStoreId: pulumi.Output.create<String>(map['dataStoreId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

