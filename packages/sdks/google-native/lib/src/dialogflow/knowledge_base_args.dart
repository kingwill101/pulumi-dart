// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_knowledge_base_args_doc}
/// The set of arguments for KnowledgeBase.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_knowledge_base_args_doc}
class KnowledgeBaseArgs {
  /// The display name of the knowledge base. The name must be 1024 bytes or less; otherwise, the creation request fails.
  final pulumi.Input<String> displayName;
  /// Language which represents the KnowledgeBase. When the KnowledgeBase is created/updated, expect this to be present for non en-us languages. When unspecified, the default language code en-us applies.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;
  /// The knowledge base resource name. The name must be empty when creating a knowledge base. Format: `projects//locations//knowledgeBases/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [KnowledgeBaseArgs].
  /// [displayName] The display name of the knowledge base. The name must be 1024 bytes or less; otherwise, the creation request fails.
  /// [languageCode] Language which represents the KnowledgeBase. When the KnowledgeBase is created/updated, expect this to be present for non en-us languages. When unspecified, the default language code en-us applies.
  /// [location] Optional.
  /// [name] The knowledge base resource name. The name must be empty when creating a knowledge base. Format: `projects//locations//knowledgeBases/`.
  /// [project] Optional.
  KnowledgeBaseArgs({
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? languageCode,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'languageCode': ?languageCode,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory KnowledgeBaseArgs.fromMap(Map<String, dynamic> map) {
    return KnowledgeBaseArgs(
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

