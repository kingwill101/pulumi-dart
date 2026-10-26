// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_platform_agent_child_agent_anthropic_api_key.dart';
import 'agent_platform_agent_child_agent_api_key.dart';
import 'agent_platform_agent_child_agent_api_key_info.dart';
import 'agent_platform_agent_child_agent_chatbot.dart';
import 'agent_platform_agent_child_agent_chatbot_identifier.dart';
import 'agent_platform_agent_child_agent_deployment.dart';

class AgentPlatformAgentChildAgent {
  /// ID of the child agent
  final pulumi.Input<String?>? agentId;
  /// Anthropic API Key information
  final pulumi.Input<List<AgentPlatformAgentChildAgentAnthropicApiKey>?>? anthropicApiKeys;
  /// List of API Key Infos
  final pulumi.Input<List<AgentPlatformAgentChildAgentApiKeyInfo>?>? apiKeyInfos;
  /// List of API Keys
  final pulumi.Input<List<AgentPlatformAgentChildAgentApiKey>?>? apiKeys;
  /// List of Chatbot Identifiers
  final pulumi.Input<List<AgentPlatformAgentChildAgentChatbotIdentifier>?>? chatbotIdentifiers;
  /// ChatBot configuration
  final pulumi.Input<List<AgentPlatformAgentChildAgentChatbot>?>? chatbots;
  /// List of API Key Infos
  final pulumi.Input<List<AgentPlatformAgentChildAgentDeployment>?>? deployments;
  /// Description for the Agent
  final pulumi.Input<String?>? description;
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

  /// Creates a new [AgentPlatformAgentChildAgent].
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
  const AgentPlatformAgentChildAgent({
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
      'anthropicApiKeys': ?pulumi.Input.mapOptionalInputValue<List<AgentPlatformAgentChildAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<AgentPlatformAgentChildAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeyInfos': ?pulumi.Input.mapOptionalInputValue<List<AgentPlatformAgentChildAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<AgentPlatformAgentChildAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': ?pulumi.Input.mapOptionalInputValue<List<AgentPlatformAgentChildAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<AgentPlatformAgentChildAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<AgentPlatformAgentChildAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<AgentPlatformAgentChildAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': ?pulumi.Input.mapOptionalInputValue<List<AgentPlatformAgentChildAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<AgentPlatformAgentChildAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deployments': ?pulumi.Input.mapOptionalInputValue<List<AgentPlatformAgentChildAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<AgentPlatformAgentChildAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'instruction': instruction,
      'modelUuid': modelUuid,
      'name': name,
      'projectId': projectId,
      'region': region,
    };
  }

  factory AgentPlatformAgentChildAgent.fromMap(Map<String, dynamic> map) {
    return AgentPlatformAgentChildAgent(
      agentId: (() { final guardedValue = map['agentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      anthropicApiKeys: (() { final guardedValue = map['anthropicApiKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPlatformAgentChildAgentAnthropicApiKey>(guardedValue, (value) => AgentPlatformAgentChildAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiKeyInfos: (() { final guardedValue = map['apiKeyInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPlatformAgentChildAgentApiKeyInfo>(guardedValue, (value) => AgentPlatformAgentChildAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiKeys: (() { final guardedValue = map['apiKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPlatformAgentChildAgentApiKey>(guardedValue, (value) => AgentPlatformAgentChildAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      chatbotIdentifiers: (() { final guardedValue = map['chatbotIdentifiers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPlatformAgentChildAgentChatbotIdentifier>(guardedValue, (value) => AgentPlatformAgentChildAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))); })(),
      chatbots: (() { final guardedValue = map['chatbots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPlatformAgentChildAgentChatbot>(guardedValue, (value) => AgentPlatformAgentChildAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deployments: (() { final guardedValue = map['deployments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPlatformAgentChildAgentDeployment>(guardedValue, (value) => AgentPlatformAgentChildAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instruction: pulumi.Input.fromValue(map['instruction'] as String),
      modelUuid: pulumi.Input.fromValue(map['modelUuid'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
