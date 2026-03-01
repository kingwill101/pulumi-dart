// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_conversation_args_doc}
/// Arguments for getConversation.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_conversation_args_doc}
class GetConversationArgs {
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConversationArgs].
  /// [conversationId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConversationArgs({
    required pulumi.Output<String> conversationId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      conversationId = pulumi.Input.asInput<String>(conversationId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationId': conversationId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConversationArgs.fromMap(Map<String, dynamic> map) {
    return GetConversationArgs(
      conversationId: pulumi.Output.create<String>(map['conversationId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

