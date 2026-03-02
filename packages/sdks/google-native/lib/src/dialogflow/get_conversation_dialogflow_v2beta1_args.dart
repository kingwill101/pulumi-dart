// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2beta1_get_conversation_dialogflow_v2beta1_args_doc}
/// Arguments for getConversation.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_get_conversation_dialogflow_v2beta1_args_doc}
class GetConversationDialogflowV2beta1Args {
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConversationDialogflowV2beta1Args].
  /// [conversationId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConversationDialogflowV2beta1Args({
    required this.conversationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationId': conversationId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConversationDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return GetConversationDialogflowV2beta1Args(
      conversationId: (map['conversationId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

