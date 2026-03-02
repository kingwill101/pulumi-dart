// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_agent_parent_agent_anthropic_api_key.dart';
import 'genai_agent_parent_agent_api_key.dart';
import 'genai_agent_parent_agent_api_key_info.dart';
import 'genai_agent_parent_agent_chatbot.dart';
import 'genai_agent_parent_agent_chatbot_identifier.dart';
import 'genai_agent_parent_agent_deployment.dart';

class GenaiAgentParentAgent {
  /// ID of the child agent
  final pulumi.Input<String>? agentId;
  /// Anthropic API Key information
  final pulumi.Input<List<GenaiAgentParentAgentAnthropicApiKey>>? anthropicApiKeys;
  /// List of API Key Infos
  final pulumi.Input<List<GenaiAgentParentAgentApiKeyInfo>>? apiKeyInfos;
  /// List of API Keys
  final pulumi.Input<List<GenaiAgentParentAgentApiKey>>? apiKeys;
  /// List of Chatbot Identifiers
  final pulumi.Input<List<GenaiAgentParentAgentChatbotIdentifier>>? chatbotIdentifiers;
  /// ChatBot configuration
  final pulumi.Input<List<GenaiAgentParentAgentChatbot>>? chatbots;
  /// List of API Key Infos
  final pulumi.Input<List<GenaiAgentParentAgentDeployment>>? deployments;
  /// Description for the Agent
  final pulumi.Input<String>? description;
  /// Instruction for the Agent
  final pulumi.Input<String> instruction;
  /// Model UUID of the Agent
  final pulumi.Input<String> modelUuid;
  /// Name of the Agent
  final pulumi.Input<String> name;
  /// Project ID of the Agent
  final pulumi.Input<String> projectId;
  /// Region where the Agent is deployed
  final pulumi.Input<String> region;

  /// Creates a new [GenaiAgentParentAgent].
  /// [agentId] ID of the child agent
  /// [anthropicApiKeys] Anthropic API Key information
  /// [apiKeyInfos] List of API Key Infos
  /// [apiKeys] List of API Keys
  /// [chatbotIdentifiers] List of Chatbot Identifiers
  /// [chatbots] ChatBot configuration
  /// [deployments] List of API Key Infos
  /// [description] Description for the Agent
  /// [instruction] Instruction for the Agent
  /// [modelUuid] Model UUID of the Agent
  /// [name] Name of the Agent
  /// [projectId] Project ID of the Agent
  /// [region] Region where the Agent is deployed
  GenaiAgentParentAgent({
    this.agentId,
    this.anthropicApiKeys,
    this.apiKeyInfos,
    this.apiKeys,
    this.chatbotIdentifiers,
    this.chatbots,
    this.deployments,
    this.description,
    required this.instruction,
    required this.modelUuid,
    required this.name,
    required this.projectId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'anthropicApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentParentAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<GenaiAgentParentAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeyInfos': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentParentAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<GenaiAgentParentAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentParentAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<GenaiAgentParentAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentParentAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<GenaiAgentParentAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentParentAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<GenaiAgentParentAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deployments': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentParentAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GenaiAgentParentAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'instruction': instruction,
      'modelUuid': modelUuid,
      'name': name,
      'projectId': projectId,
      'region': region,
    };
  }

  factory GenaiAgentParentAgent.fromMap(Map<String, dynamic> map) {
    return GenaiAgentParentAgent(
      agentId: map['agentId'] == null ? null : (map['agentId']! as String).input(),
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : (pulumi.Input.decodeList<GenaiAgentParentAgentAnthropicApiKey>(map['anthropicApiKeys']!, (value) => GenaiAgentParentAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : (pulumi.Input.decodeList<GenaiAgentParentAgentApiKeyInfo>(map['apiKeyInfos']!, (value) => GenaiAgentParentAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiKeys: map['apiKeys'] == null ? null : (pulumi.Input.decodeList<GenaiAgentParentAgentApiKey>(map['apiKeys']!, (value) => GenaiAgentParentAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : (pulumi.Input.decodeList<GenaiAgentParentAgentChatbotIdentifier>(map['chatbotIdentifiers']!, (value) => GenaiAgentParentAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbots: map['chatbots'] == null ? null : (pulumi.Input.decodeList<GenaiAgentParentAgentChatbot>(map['chatbots']!, (value) => GenaiAgentParentAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deployments: map['deployments'] == null ? null : (pulumi.Input.decodeList<GenaiAgentParentAgentDeployment>(map['deployments']!, (value) => GenaiAgentParentAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      instruction: (map['instruction'] as String).input(),
      modelUuid: (map['modelUuid'] as String).input(),
      name: (map['name'] as String).input(),
      projectId: (map['projectId'] as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

