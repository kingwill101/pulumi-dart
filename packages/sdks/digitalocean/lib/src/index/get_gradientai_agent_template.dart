// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agent_template_knowledge_base.dart';
import 'get_gradientai_agent_template_model.dart';

class GetGradientaiAgentTemplate {
  /// Created At timestamp for the Knowledge Base
  final pulumi.Input<String> createdAt;
  /// Description of the Agent Template
  final pulumi.Input<String>? description;
  /// Instruction for the Agent
  final pulumi.Input<String>? instruction;
  /// K value for the Agent Template
  final pulumi.Input<int>? k;
  /// List of Knowledge Bases
  final pulumi.Input<List<GetGradientaiAgentTemplateKnowledgeBase>>? knowledgeBases;
  /// Maximum tokens allowed
  final pulumi.Input<int>? maxTokens;
  /// Model of the Agent Template
  final pulumi.Input<List<GetGradientaiAgentTemplateModel>>? models;
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

  /// Creates a new [GetGradientaiAgentTemplate].
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
  GetGradientaiAgentTemplate({
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
      'knowledgeBases': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentTemplateKnowledgeBase>, List<Map<String, dynamic>>>(knowledgeBases, (value) => pulumi.Input.encodeList<GetGradientaiAgentTemplateKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTokens': ?maxTokens,
      'models': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentTemplateModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GetGradientaiAgentTemplateModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'temperature': ?temperature,
      'topP': ?topP,
      'updatedAt': updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GetGradientaiAgentTemplate.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentTemplate(
      createdAt: (map['createdAt'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      instruction: map['instruction'] == null ? null : (map['instruction'] as String).input(),
      k: map['k'] == null ? null : (map['k'] as int).input(),
      knowledgeBases: map['knowledgeBases'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentTemplateKnowledgeBase>(map['knowledgeBases'], (value) => GetGradientaiAgentTemplateKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxTokens: map['maxTokens'] == null ? null : (map['maxTokens'] as int).input(),
      models: map['models'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentTemplateModel>(map['models'], (value) => GetGradientaiAgentTemplateModel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      temperature: map['temperature'] == null ? null : (map['temperature'] as double).input(),
      topP: map['topP'] == null ? null : (map['topP'] as double).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid'] as String).input(),
    );
  }
}

