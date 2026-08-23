// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_knowledge_base_args_doc}
/// Arguments for getKnowledgeBase.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_knowledge_base_args_doc}
class GetKnowledgeBaseArgs {
  final pulumi.Input<String> knowledgeBaseId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetKnowledgeBaseArgs].
  /// [knowledgeBaseId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetKnowledgeBaseArgs({
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

  factory GetKnowledgeBaseArgs.fromMap(Map<String, dynamic> map) {
    return GetKnowledgeBaseArgs(
      knowledgeBaseId: pulumi.Input.fromValue(map['knowledgeBaseId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
