// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agents_by_openai_api_key_agent_parent_agent_anthropic_api_key.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_parent_agent_api_key.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_parent_agent_api_key_info.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_parent_agent_chatbot.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_parent_agent_chatbot_identifier.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_parent_agent_deployment.dart';

class GetGradientaiAgentsByOpenaiApiKeyAgentParentAgent {
  /// ID of the child agent
  final String agentId;
  /// Anthropic API Key information
  final List<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentAnthropicApiKey>? anthropicApiKeys;
  /// List of API Key Infos
  final List<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentApiKeyInfo>? apiKeyInfos;
  /// List of API Keys
  final List<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentApiKey>? apiKeys;
  /// List of Chatbot Identifiers
  final List<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier>? chatbotIdentifiers;
  /// ChatBot configuration
  final List<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbot>? chatbots;
  /// List of API Key Infos
  final List<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentDeployment>? deployments;
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

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentParentAgent].
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
  GetGradientaiAgentsByOpenaiApiKeyAgentParentAgent({
    required this.agentId,
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
      'agentId': agentId,
      'anthropicApiKeys': ?anthropicApiKeys == null ? null : pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentAnthropicApiKey, Map<String, dynamic>>(anthropicApiKeys!, (value) => value.toMap()),
      'apiKeyInfos': ?apiKeyInfos == null ? null : pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentApiKeyInfo, Map<String, dynamic>>(apiKeyInfos!, (value) => value.toMap()),
      'apiKeys': ?apiKeys == null ? null : pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentApiKey, Map<String, dynamic>>(apiKeys!, (value) => value.toMap()),
      'chatbotIdentifiers': ?chatbotIdentifiers == null ? null : pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier, Map<String, dynamic>>(chatbotIdentifiers!, (value) => value.toMap()),
      'chatbots': ?chatbots == null ? null : pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbot, Map<String, dynamic>>(chatbots!, (value) => value.toMap()),
      'deployments': ?deployments == null ? null : pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentDeployment, Map<String, dynamic>>(deployments!, (value) => value.toMap()),
      'description': ?description,
      'instruction': instruction,
      'modelUuid': modelUuid,
      'name': name,
      'projectId': projectId,
      'region': region,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgentParentAgent.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentParentAgent(
      agentId: map['agentId'] as String,
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentAnthropicApiKey>(map['anthropicApiKeys'], (value) => GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentApiKeyInfo>(map['apiKeyInfos'], (value) => GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())),
      apiKeys: map['apiKeys'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentApiKey>(map['apiKeys'], (value) => GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentApiKey.fromMap((value as Map).cast<String, dynamic>())),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier>(map['chatbotIdentifiers'], (value) => GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())),
      chatbots: map['chatbots'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbot>(map['chatbots'], (value) => GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbot.fromMap((value as Map).cast<String, dynamic>())),
      deployments: map['deployments'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentDeployment>(map['deployments'], (value) => GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentDeployment.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      instruction: map['instruction'] as String,
      modelUuid: map['modelUuid'] as String,
      name: map['name'] as String,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
    );
  }
}

