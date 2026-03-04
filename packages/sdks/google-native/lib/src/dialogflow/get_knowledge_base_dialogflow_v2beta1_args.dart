// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2beta1_get_knowledge_base_dialogflow_v2beta1_args_doc}
/// Arguments for getKnowledgeBase.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_get_knowledge_base_dialogflow_v2beta1_args_doc}
class GetKnowledgeBaseDialogflowV2beta1Args {
  final pulumi.Input<String> knowledgeBaseId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetKnowledgeBaseDialogflowV2beta1Args].
  /// [knowledgeBaseId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetKnowledgeBaseDialogflowV2beta1Args({
    required this.knowledgeBaseId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseId': knowledgeBaseId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetKnowledgeBaseDialogflowV2beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetKnowledgeBaseDialogflowV2beta1Args(
      knowledgeBaseId: pulumi.Input.fromValue(map['knowledgeBaseId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
