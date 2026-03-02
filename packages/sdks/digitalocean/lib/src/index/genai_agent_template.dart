// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_agent_template_knowledge_base.dart';
import 'genai_agent_template_model.dart';

class GenaiAgentTemplate {
  /// Created At timestamp for the Knowledge Base
  final pulumi.Input<String>? createdAt;
  /// Description of the Agent Template
  final pulumi.Input<String>? description;
  /// Instruction for the Agent
  final pulumi.Input<String>? instruction;
  /// K value for the Agent Template
  final pulumi.Input<int>? k;
  /// List of Knowledge Bases
  final pulumi.Input<List<GenaiAgentTemplateKnowledgeBase>>? knowledgeBases;
  /// Maximum tokens allowed
  final pulumi.Input<int>? maxTokens;
  /// Model of the Agent Template
  final pulumi.Input<List<GenaiAgentTemplateModel>>? models;
  /// Name of the Agent Template
  final pulumi.Input<String>? name;
  /// Agent temperature setting
  final pulumi.Input<double>? temperature;
  /// Top P sampling parameter
  final pulumi.Input<double>? topP;
  /// Updated At timestamp for the Agent Template
  final pulumi.Input<String>? updatedAt;
  /// uuid of the Agent Template
  final pulumi.Input<String>? uuid;

  /// Creates a new [GenaiAgentTemplate].
  /// [createdAt] Created At timestamp for the Knowledge Base
  /// [description] Description of the Agent Template
  /// [instruction] Instruction for the Agent
  /// [k] K value for the Agent Template
  /// [knowledgeBases] List of Knowledge Bases
  /// [maxTokens] Maximum tokens allowed
  /// [models] Model of the Agent Template
  /// [name] Name of the Agent Template
  /// [temperature] Agent temperature setting
  /// [topP] Top P sampling parameter
  /// [updatedAt] Updated At timestamp for the Agent Template
  /// [uuid] uuid of the Agent Template
  GenaiAgentTemplate({
    this.createdAt,
    this.description,
    this.instruction,
    this.k,
    this.knowledgeBases,
    this.maxTokens,
    this.models,
    this.name,
    this.temperature,
    this.topP,
    this.updatedAt,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'description': ?description,
      'instruction': ?instruction,
      'k': ?k,
      'knowledgeBases': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentTemplateKnowledgeBase>, List<Map<String, dynamic>>>(knowledgeBases, (value) => pulumi.Input.encodeList<GenaiAgentTemplateKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTokens': ?maxTokens,
      'models': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentTemplateModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GenaiAgentTemplateModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'temperature': ?temperature,
      'topP': ?topP,
      'updatedAt': ?updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GenaiAgentTemplate.fromMap(Map<String, dynamic> map) {
    return GenaiAgentTemplate(
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      instruction: map['instruction'] == null ? null : (map['instruction'] as String).input(),
      k: map['k'] == null ? null : (map['k'] as int).input(),
      knowledgeBases: map['knowledgeBases'] == null ? null : (pulumi.Input.decodeList<GenaiAgentTemplateKnowledgeBase>(map['knowledgeBases'], (value) => GenaiAgentTemplateKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxTokens: map['maxTokens'] == null ? null : (map['maxTokens'] as int).input(),
      models: map['models'] == null ? null : (pulumi.Input.decodeList<GenaiAgentTemplateModel>(map['models'], (value) => GenaiAgentTemplateModel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      temperature: map['temperature'] == null ? null : (map['temperature'] as double).input(),
      topP: map['topP'] == null ? null : (map['topP'] as double).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid'] as String).input(),
    );
  }
}

