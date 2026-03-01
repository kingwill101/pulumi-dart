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
  final String? agentId;
  /// Anthropic API Key information
  final List<GenaiAgentParentAgentAnthropicApiKey>? anthropicApiKeys;
  /// List of API Key Infos
  final List<GenaiAgentParentAgentApiKeyInfo>? apiKeyInfos;
  /// List of API Keys
  final List<GenaiAgentParentAgentApiKey>? apiKeys;
  /// List of Chatbot Identifiers
  final List<GenaiAgentParentAgentChatbotIdentifier>? chatbotIdentifiers;
  /// ChatBot configuration
  final List<GenaiAgentParentAgentChatbot>? chatbots;
  /// List of API Key Infos
  final List<GenaiAgentParentAgentDeployment>? deployments;
  /// Description for the Agent
  final String? description;
  /// Instruction for the Agent
  final String instruction;
  /// Model UUID of the Agent
  final String modelUuid;
  /// Name of the Agent
  final String name;
  /// Project ID of the Agent
  final String projectId;
  /// Region where the Agent is deployed
  final String region;

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
      'anthropicApiKeys': ?anthropicApiKeys == null ? null : pulumi.Input.encodeList<GenaiAgentParentAgentAnthropicApiKey, Map<String, dynamic>>(anthropicApiKeys!, (value) => value.toMap()),
      'apiKeyInfos': ?apiKeyInfos == null ? null : pulumi.Input.encodeList<GenaiAgentParentAgentApiKeyInfo, Map<String, dynamic>>(apiKeyInfos!, (value) => value.toMap()),
      'apiKeys': ?apiKeys == null ? null : pulumi.Input.encodeList<GenaiAgentParentAgentApiKey, Map<String, dynamic>>(apiKeys!, (value) => value.toMap()),
      'chatbotIdentifiers': ?chatbotIdentifiers == null ? null : pulumi.Input.encodeList<GenaiAgentParentAgentChatbotIdentifier, Map<String, dynamic>>(chatbotIdentifiers!, (value) => value.toMap()),
      'chatbots': ?chatbots == null ? null : pulumi.Input.encodeList<GenaiAgentParentAgentChatbot, Map<String, dynamic>>(chatbots!, (value) => value.toMap()),
      'deployments': ?deployments == null ? null : pulumi.Input.encodeList<GenaiAgentParentAgentDeployment, Map<String, dynamic>>(deployments!, (value) => value.toMap()),
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
      agentId: map['agentId'] == null ? null : map['agentId'] as String,
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : pulumi.Input.decodeList<GenaiAgentParentAgentAnthropicApiKey>(map['anthropicApiKeys'], (value) => GenaiAgentParentAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : pulumi.Input.decodeList<GenaiAgentParentAgentApiKeyInfo>(map['apiKeyInfos'], (value) => GenaiAgentParentAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())),
      apiKeys: map['apiKeys'] == null ? null : pulumi.Input.decodeList<GenaiAgentParentAgentApiKey>(map['apiKeys'], (value) => GenaiAgentParentAgentApiKey.fromMap((value as Map).cast<String, dynamic>())),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : pulumi.Input.decodeList<GenaiAgentParentAgentChatbotIdentifier>(map['chatbotIdentifiers'], (value) => GenaiAgentParentAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())),
      chatbots: map['chatbots'] == null ? null : pulumi.Input.decodeList<GenaiAgentParentAgentChatbot>(map['chatbots'], (value) => GenaiAgentParentAgentChatbot.fromMap((value as Map).cast<String, dynamic>())),
      deployments: map['deployments'] == null ? null : pulumi.Input.decodeList<GenaiAgentParentAgentDeployment>(map['deployments'], (value) => GenaiAgentParentAgentDeployment.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      instruction: map['instruction'] as String,
      modelUuid: map['modelUuid'] as String,
      name: map['name'] as String,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
    );
  }
}

