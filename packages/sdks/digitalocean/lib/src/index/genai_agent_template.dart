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
      'knowledgeBases':
          ?pulumi.Input.mapOptionalInputValue<
            List<GenaiAgentTemplateKnowledgeBase>,
            List<Map<String, dynamic>>
          >(
            knowledgeBases,
            (value) =>
                pulumi.Input.encodeList<
                  GenaiAgentTemplateKnowledgeBase,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'maxTokens': ?maxTokens,
      'models':
          ?pulumi.Input.mapOptionalInputValue<
            List<GenaiAgentTemplateModel>,
            List<Map<String, dynamic>>
          >(
            models,
            (value) =>
                pulumi.Input.encodeList<
                  GenaiAgentTemplateModel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'temperature': ?temperature,
      'topP': ?topP,
      'updatedAt': ?updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GenaiAgentTemplate.fromMap(Map<String, dynamic> map) {
    return GenaiAgentTemplate(
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instruction: (() {
        final guardedValue = map['instruction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      k: (() {
        final guardedValue = map['k'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      knowledgeBases: (() {
        final guardedValue = map['knowledgeBases'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GenaiAgentTemplateKnowledgeBase>(
            guardedValue,
            (value) => GenaiAgentTemplateKnowledgeBase.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      maxTokens: (() {
        final guardedValue = map['maxTokens'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      models: (() {
        final guardedValue = map['models'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GenaiAgentTemplateModel>(
            guardedValue,
            (value) => GenaiAgentTemplateModel.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      temperature: (() {
        final guardedValue = map['temperature'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      topP: (() {
        final guardedValue = map['topP'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      updatedAt: (() {
        final guardedValue = map['updatedAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uuid: (() {
        final guardedValue = map['uuid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
