// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_agent_child_agent_anthropic_api_key.dart';
import 'gradientai_agent_child_agent_api_key.dart';
import 'gradientai_agent_child_agent_api_key_info.dart';
import 'gradientai_agent_child_agent_chatbot.dart';
import 'gradientai_agent_child_agent_chatbot_identifier.dart';
import 'gradientai_agent_child_agent_deployment.dart';

class GradientaiAgentChildAgent {
  /// ID of the child agent
  final pulumi.Input<String>? agentId;
  /// Anthropic API Key information
  final pulumi.Input<List<GradientaiAgentChildAgentAnthropicApiKey>>? anthropicApiKeys;
  /// List of API Key Infos
  final pulumi.Input<List<GradientaiAgentChildAgentApiKeyInfo>>? apiKeyInfos;
  /// List of API Keys
  final pulumi.Input<List<GradientaiAgentChildAgentApiKey>>? apiKeys;
  /// List of Chatbot Identifiers
  final pulumi.Input<List<GradientaiAgentChildAgentChatbotIdentifier>>? chatbotIdentifiers;
  /// ChatBot configuration
  final pulumi.Input<List<GradientaiAgentChildAgentChatbot>>? chatbots;
  /// List of API Key Infos
  final pulumi.Input<List<GradientaiAgentChildAgentDeployment>>? deployments;
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

  /// Creates a new [GradientaiAgentChildAgent].
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
  GradientaiAgentChildAgent({
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
      'anthropicApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentChildAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<GradientaiAgentChildAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeyInfos': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentChildAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<GradientaiAgentChildAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentChildAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<GradientaiAgentChildAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentChildAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<GradientaiAgentChildAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentChildAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<GradientaiAgentChildAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deployments': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentChildAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GradientaiAgentChildAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'instruction': instruction,
      'modelUuid': modelUuid,
      'name': name,
      'projectId': projectId,
      'region': region,
    };
  }

  factory GradientaiAgentChildAgent.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentChildAgent(
      agentId: map['agentId'] == null ? null : (map['agentId']! as String).input(),
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentChildAgentAnthropicApiKey>(map['anthropicApiKeys']!, (value) => GradientaiAgentChildAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentChildAgentApiKeyInfo>(map['apiKeyInfos']!, (value) => GradientaiAgentChildAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiKeys: map['apiKeys'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentChildAgentApiKey>(map['apiKeys']!, (value) => GradientaiAgentChildAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentChildAgentChatbotIdentifier>(map['chatbotIdentifiers']!, (value) => GradientaiAgentChildAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbots: map['chatbots'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentChildAgentChatbot>(map['chatbots']!, (value) => GradientaiAgentChildAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deployments: map['deployments'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentChildAgentDeployment>(map['deployments']!, (value) => GradientaiAgentChildAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      instruction: (map['instruction'] as String).input(),
      modelUuid: (map['modelUuid'] as String).input(),
      name: (map['name'] as String).input(),
      projectId: (map['projectId'] as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

