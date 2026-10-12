// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_agents_by_openai_api_key_agent_child_agent_anthropic_api_key.dart';
import 'get_agent_platform_agents_by_openai_api_key_agent_child_agent_api_key.dart';
import 'get_agent_platform_agents_by_openai_api_key_agent_child_agent_api_key_info.dart';
import 'get_agent_platform_agents_by_openai_api_key_agent_child_agent_chatbot.dart';
import 'get_agent_platform_agents_by_openai_api_key_agent_child_agent_chatbot_identifier.dart';
import 'get_agent_platform_agents_by_openai_api_key_agent_child_agent_deployment.dart';

class GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgent {
  /// ID of the child agent
  final pulumi.Input<String> agentId;
  /// Anthropic API Key information
  final pulumi.Input<List<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentAnthropicApiKey>?>? anthropicApiKeys;
  /// List of API Key Infos
  final pulumi.Input<List<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentApiKeyInfo>?>? apiKeyInfos;
  /// List of API Keys
  final pulumi.Input<List<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentApiKey>?>? apiKeys;
  /// List of Chatbot Identifiers
  final pulumi.Input<List<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier>?>? chatbotIdentifiers;
  /// ChatBot configuration
  final pulumi.Input<List<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentChatbot>?>? chatbots;
  /// List of API Key Infos
  final pulumi.Input<List<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentDeployment>?>? deployments;
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

  /// Creates a new [GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgent].
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
  const GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgent({
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
      'anthropicApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeyInfos': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deployments': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'instruction': instruction,
      'modelUuid': modelUuid,
      'name': name,
      'projectId': projectId,
      'region': region,
    };
  }

  factory GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgent.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgent(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      anthropicApiKeys: (() { final guardedValue = map['anthropicApiKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentAnthropicApiKey>(guardedValue, (value) => GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiKeyInfos: (() { final guardedValue = map['apiKeyInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentApiKeyInfo>(guardedValue, (value) => GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiKeys: (() { final guardedValue = map['apiKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentApiKey>(guardedValue, (value) => GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      chatbotIdentifiers: (() { final guardedValue = map['chatbotIdentifiers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier>(guardedValue, (value) => GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))); })(),
      chatbots: (() { final guardedValue = map['chatbots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentChatbot>(guardedValue, (value) => GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deployments: (() { final guardedValue = map['deployments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentDeployment>(guardedValue, (value) => GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instruction: pulumi.Input.fromValue(map['instruction'] as String),
      modelUuid: pulumi.Input.fromValue(map['modelUuid'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
