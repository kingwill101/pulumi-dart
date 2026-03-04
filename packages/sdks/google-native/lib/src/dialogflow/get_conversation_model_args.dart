// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_conversation_model_args_doc}
/// Arguments for getConversationModel.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_conversation_model_args_doc}
class GetConversationModelArgs {
  final pulumi.Input<String> conversationModelId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConversationModelArgs].
  /// [conversationModelId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConversationModelArgs({
    required this.conversationModelId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationModelId': conversationModelId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConversationModelArgs.fromMap(Map<String, dynamic> map) {
    return GetConversationModelArgs(
      conversationModelId: pulumi.Input.fromValue(
        map['conversationModelId'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
