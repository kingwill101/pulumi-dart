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
    required pulumi.Output<String> knowledgeBaseId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      knowledgeBaseId = pulumi.Input.asInput<String>(knowledgeBaseId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseId': knowledgeBaseId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetKnowledgeBaseDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return GetKnowledgeBaseDialogflowV2beta1Args(
      knowledgeBaseId: pulumi.Output.create<String>(map['knowledgeBaseId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

