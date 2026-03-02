// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agents_by_openai_api_key_agent_child_agent_anthropic_api_key.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_child_agent_api_key.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_child_agent_api_key_info.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_child_agent_chatbot.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_child_agent_chatbot_identifier.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_child_agent_deployment.dart';

class GetGradientaiAgentsByOpenaiApiKeyAgentChildAgent {
  /// ID of the child agent
  final pulumi.Input<String> agentId;
  /// Anthropic API Key information
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentAnthropicApiKey>>? anthropicApiKeys;
  /// List of API Key Infos
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentApiKeyInfo>>? apiKeyInfos;
  /// List of API Keys
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentApiKey>>? apiKeys;
  /// List of Chatbot Identifiers
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier>>? chatbotIdentifiers;
  /// ChatBot configuration
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentChatbot>>? chatbots;
  /// List of API Key Infos
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentDeployment>>? deployments;
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

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentChildAgent].
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
  GetGradientaiAgentsByOpenaiApiKeyAgentChildAgent({
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
      'anthropicApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeyInfos': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deployments': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'instruction': instruction,
      'modelUuid': modelUuid,
      'name': name,
      'projectId': projectId,
      'region': region,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgentChildAgent.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentChildAgent(
      agentId: (map['agentId'] as String).input(),
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentAnthropicApiKey>(map['anthropicApiKeys']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentApiKeyInfo>(map['apiKeyInfos']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiKeys: map['apiKeys'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentApiKey>(map['apiKeys']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier>(map['chatbotIdentifiers']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbots: map['chatbots'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentChatbot>(map['chatbots']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deployments: map['deployments'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentDeployment>(map['deployments']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentChildAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      instruction: (map['instruction'] as String).input(),
      modelUuid: (map['modelUuid'] as String).input(),
      name: (map['name'] as String).input(),
      projectId: (map['projectId'] as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

