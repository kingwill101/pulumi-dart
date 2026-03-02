// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agents_by_openai_api_key_agent_template_knowledge_base.dart';
import 'get_genai_agents_by_openai_api_key_agent_template_model.dart';

class GetGenaiAgentsByOpenaiApiKeyAgentTemplate {
  /// Created At timestamp for the Knowledge Base
  final pulumi.Input<String> createdAt;
  /// Description of the Agent Template
  final pulumi.Input<String>? description;
  /// Instruction for the Agent
  final pulumi.Input<String>? instruction;
  /// K value for the Agent Template
  final pulumi.Input<int>? k;
  /// List of Knowledge Bases
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentTemplateKnowledgeBase>>? knowledgeBases;
  /// Maximum tokens allowed
  final pulumi.Input<int>? maxTokens;
  /// Model of the Agent Template
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentTemplateModel>>? models;
  /// Name of the Agent Template
  final pulumi.Input<String>? name;
  /// Agent temperature setting
  final pulumi.Input<double>? temperature;
  /// Top P sampling parameter
  final pulumi.Input<double>? topP;
  /// Updated At timestamp for the Agent Template
  final pulumi.Input<String> updatedAt;
  /// uuid of the Agent Template
  final pulumi.Input<String>? uuid;

  /// Creates a new [GetGenaiAgentsByOpenaiApiKeyAgentTemplate].
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
  GetGenaiAgentsByOpenaiApiKeyAgentTemplate({
    required this.createdAt,
    this.description,
    this.instruction,
    this.k,
    this.knowledgeBases,
    this.maxTokens,
    this.models,
    this.name,
    this.temperature,
    this.topP,
    required this.updatedAt,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': ?description,
      'instruction': ?instruction,
      'k': ?k,
      'knowledgeBases': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentTemplateKnowledgeBase>, List<Map<String, dynamic>>>(knowledgeBases, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentTemplateKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTokens': ?maxTokens,
      'models': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentTemplateModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentTemplateModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'temperature': ?temperature,
      'topP': ?topP,
      'updatedAt': updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GetGenaiAgentsByOpenaiApiKeyAgentTemplate.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsByOpenaiApiKeyAgentTemplate(
      createdAt: (map['createdAt'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      instruction: map['instruction'] == null ? null : (map['instruction'] as String).input(),
      k: map['k'] == null ? null : (map['k'] as int).input(),
      knowledgeBases: map['knowledgeBases'] == null ? null : (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentTemplateKnowledgeBase>(map['knowledgeBases'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentTemplateKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxTokens: map['maxTokens'] == null ? null : (map['maxTokens'] as int).input(),
      models: map['models'] == null ? null : (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentTemplateModel>(map['models'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentTemplateModel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      temperature: map['temperature'] == null ? null : (map['temperature'] as double).input(),
      topP: map['topP'] == null ? null : (map['topP'] as double).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid'] as String).input(),
    );
  }
}

