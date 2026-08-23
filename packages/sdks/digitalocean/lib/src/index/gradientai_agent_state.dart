// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_agent_agent_guardrail.dart';
import 'gradientai_agent_anthropic_api_key.dart';
import 'gradientai_agent_api_key.dart';
import 'gradientai_agent_api_key_info.dart';
import 'gradientai_agent_chatbot.dart';
import 'gradientai_agent_chatbot_identifier.dart';
import 'gradientai_agent_child_agent.dart';
import 'gradientai_agent_deployment.dart';
import 'gradientai_agent_function.dart';
import 'gradientai_agent_knowledge_base.dart';
import 'gradientai_agent_model.dart';
import 'gradientai_agent_open_ai_api_key.dart';
import 'gradientai_agent_parent_agent.dart';
import 'gradientai_agent_template.dart';

/// Input properties used for looking up and filtering GradientaiAgent resources.
class GradientaiAgentState {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  final pulumi.Input<List<GradientaiAgentAgentGuardrail>>? agentGuardrails;
  /// Anthropic API Key information
  final pulumi.Input<List<GradientaiAgentAnthropicApiKey>>? anthropicApiKeys;
  /// Optional Anthropic API key ID to use with Anthropic models
  final pulumi.Input<String>? anthropicKeyUuid;
  /// List of API Key Infos
  final pulumi.Input<List<GradientaiAgentApiKeyInfo>>? apiKeyInfos;
  /// List of API Keys
  final pulumi.Input<List<GradientaiAgentApiKey>>? apiKeys;
  /// List of Chatbot Identifiers
  final pulumi.Input<List<GradientaiAgentChatbotIdentifier>>? chatbotIdentifiers;
  /// ChatBot configuration
  final pulumi.Input<List<GradientaiAgentChatbot>>? chatbots;
  /// List of child agents
  final pulumi.Input<List<GradientaiAgentChildAgent>>? childAgents;
  /// Timestamp when the Agent was created
  final pulumi.Input<String>? createdAt;
  /// List of API Key Infos
  final pulumi.Input<List<GradientaiAgentDeployment>>? deployments;
  /// Description for the Agent
  final pulumi.Input<String>? description;
  /// List of Functions
  final pulumi.Input<List<GradientaiAgentFunction>>? functions;
  /// If case condition
  final pulumi.Input<String>? ifCase;
  /// Instruction for the Agent
  final pulumi.Input<String>? instruction;
  /// K value
  final pulumi.Input<int>? k;
  /// Ids of the knowledge base(s) to attach to the agent
  final pulumi.Input<List<String>>? knowledgeBaseUuids;
  /// List of Knowledge Bases
  final pulumi.Input<List<GradientaiAgentKnowledgeBase>>? knowledgeBases;
  /// Maximum tokens allowed
  final pulumi.Input<int>? maxTokens;
  /// Model UUID of the Agent
  final pulumi.Input<String>? modelUuid;
  /// Model of the Agent
  final pulumi.Input<List<GradientaiAgentModel>>? models;
  /// Name of the Agent
  final pulumi.Input<String>? name;
  /// OpenAI API Key information
  final pulumi.Input<List<GradientaiAgentOpenAiApiKey>>? openAiApiKeys;
  /// Optional OpenAI API key ID to use with OpenAI models
  final pulumi.Input<String>? openAiKeyUuid;
  /// List of child agents
  final pulumi.Input<List<GradientaiAgentParentAgent>>? parentAgents;
  /// Project ID of the Agent
  final pulumi.Input<String>? projectId;
  /// Indicates if the agent should provide citations in responses
  final pulumi.Input<bool>? provideCitations;
  /// Region where the Agent is deployed
  final pulumi.Input<String>? region;
  /// Retrieval method used
  final pulumi.Input<String>? retrievalMethod;
  /// Timestamp when the route was created
  final pulumi.Input<String>? routeCreatedAt;
  /// User who created the route
  final pulumi.Input<String>? routeCreatedBy;
  /// Route name
  final pulumi.Input<String>? routeName;
  /// Route UUID
  final pulumi.Input<String>? routeUuid;
  /// List of Tags
  final pulumi.Input<List<String>>? tags;
  /// Agent temperature setting
  final pulumi.Input<double>? temperature;
  /// Agent Template
  final pulumi.Input<List<GradientaiAgentTemplate>>? templates;
  /// Top P sampling parameter
  final pulumi.Input<double>? topP;
  /// Timestamp when the Agent was updated
  final pulumi.Input<String>? updatedAt;
  /// URL for the Agent
  final pulumi.Input<String>? url;
  /// User ID linked with the Agent
  final pulumi.Input<String>? userId;
  /// Identifier for the workspace
  final pulumi.Input<String>? workspaceUuid;

  /// Creates a new [GradientaiAgentState].
  /// [agentGuardrails] AgentGuardrail represents a Guardrail attached to Gen AI Agent
  /// [anthropicApiKeys] Anthropic API Key information
  /// [anthropicKeyUuid] Optional Anthropic API key ID to use with Anthropic models
  /// [apiKeyInfos] List of API Key Infos
  /// [apiKeys] List of API Keys
  /// [chatbotIdentifiers] List of Chatbot Identifiers
  /// [chatbots] ChatBot configuration
  /// [childAgents] List of child agents
  /// [createdAt] Timestamp when the Agent was created
  /// [deployments] List of API Key Infos
  /// [description] Description for the Agent
  /// [functions] List of Functions
  /// [ifCase] If case condition
  /// [instruction] Instruction for the Agent
  /// [k] K value
  /// [knowledgeBaseUuids] Ids of the knowledge base(s) to attach to the agent
  /// [knowledgeBases] List of Knowledge Bases
  /// [maxTokens] Maximum tokens allowed
  /// [modelUuid] Model UUID of the Agent
  /// [models] Model of the Agent
  /// [name] Name of the Agent
  /// [openAiApiKeys] OpenAI API Key information
  /// [openAiKeyUuid] Optional OpenAI API key ID to use with OpenAI models
  /// [parentAgents] List of child agents
  /// [projectId] Project ID of the Agent
  /// [provideCitations] Indicates if the agent should provide citations in responses
  /// [region] Region where the Agent is deployed
  /// [retrievalMethod] Retrieval method used
  /// [routeCreatedAt] Timestamp when the route was created
  /// [routeCreatedBy] User who created the route
  /// [routeName] Route name
  /// [routeUuid] Route UUID
  /// [tags] List of Tags
  /// [temperature] Agent temperature setting
  /// [templates] Agent Template
  /// [topP] Top P sampling parameter
  /// [updatedAt] Timestamp when the Agent was updated
  /// [url] URL for the Agent
  /// [userId] User ID linked with the Agent
  /// [workspaceUuid] Identifier for the workspace
  const GradientaiAgentState({
    this.agentGuardrails,
    this.anthropicApiKeys,
    this.anthropicKeyUuid,
    this.apiKeyInfos,
    this.apiKeys,
    this.chatbotIdentifiers,
    this.chatbots,
    this.childAgents,
    this.createdAt,
    this.deployments,
    this.description,
    this.functions,
    this.ifCase,
    this.instruction,
    this.k,
    this.knowledgeBaseUuids,
    this.knowledgeBases,
    this.maxTokens,
    this.modelUuid,
    this.models,
    this.name,
    this.openAiApiKeys,
    this.openAiKeyUuid,
    this.parentAgents,
    this.projectId,
    this.provideCitations,
    this.region,
    this.retrievalMethod,
    this.routeCreatedAt,
    this.routeCreatedBy,
    this.routeName,
    this.routeUuid,
    this.tags,
    this.temperature,
    this.templates,
    this.topP,
    this.updatedAt,
    this.url,
    this.userId,
    this.workspaceUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentGuardrails': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentAgentGuardrail>, List<Map<String, dynamic>>>(agentGuardrails, (value) => pulumi.Input.encodeList<GradientaiAgentAgentGuardrail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'anthropicApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<GradientaiAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'anthropicKeyUuid': ?anthropicKeyUuid,
      'apiKeyInfos': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<GradientaiAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<GradientaiAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<GradientaiAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<GradientaiAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'childAgents': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentChildAgent>, List<Map<String, dynamic>>>(childAgents, (value) => pulumi.Input.encodeList<GradientaiAgentChildAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': ?createdAt,
      'deployments': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GradientaiAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'functions': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentFunction>, List<Map<String, dynamic>>>(functions, (value) => pulumi.Input.encodeList<GradientaiAgentFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ifCase': ?ifCase,
      'instruction': ?instruction,
      'k': ?k,
      'knowledgeBaseUuids': ?knowledgeBaseUuids,
      'knowledgeBases': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentKnowledgeBase>, List<Map<String, dynamic>>>(knowledgeBases, (value) => pulumi.Input.encodeList<GradientaiAgentKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTokens': ?maxTokens,
      'modelUuid': ?modelUuid,
      'models': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GradientaiAgentModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'openAiApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentOpenAiApiKey>, List<Map<String, dynamic>>>(openAiApiKeys, (value) => pulumi.Input.encodeList<GradientaiAgentOpenAiApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openAiKeyUuid': ?openAiKeyUuid,
      'parentAgents': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentParentAgent>, List<Map<String, dynamic>>>(parentAgents, (value) => pulumi.Input.encodeList<GradientaiAgentParentAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projectId': ?projectId,
      'provideCitations': ?provideCitations,
      'region': ?region,
      'retrievalMethod': ?retrievalMethod,
      'routeCreatedAt': ?routeCreatedAt,
      'routeCreatedBy': ?routeCreatedBy,
      'routeName': ?routeName,
      'routeUuid': ?routeUuid,
      'tags': ?tags,
      'temperature': ?temperature,
      'templates': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<GradientaiAgentTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topP': ?topP,
      'updatedAt': ?updatedAt,
      'url': ?url,
      'userId': ?userId,
      'workspaceUuid': ?workspaceUuid,
    };
  }

  factory GradientaiAgentState.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentState(
      agentGuardrails: (() { final guardedValue = map['agentGuardrails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiAgentAgentGuardrail>(guardedValue, (value) => GradientaiAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      anthropicApiKeys: (() { final guardedValue = map['anthropicApiKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiAgentAnthropicApiKey>(guardedValue, (value) => GradientaiAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      anthropicKeyUuid: (() { final guardedValue = map['anthropicKeyUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyInfos: (() { final guardedValue = map['apiKeyInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiAgentApiKeyInfo>(guardedValue, (value) => GradientaiAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiKeys: (() { final guardedValue = map['apiKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiAgentApiKey>(guardedValue, (value) => GradientaiAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      chatbotIdentifiers: (() { final guardedValue = map['chatbotIdentifiers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiAgentChatbotIdentifier>(guardedValue, (value) => GradientaiAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))); })(),
      chatbots: (() { final guardedValue = map['chatbots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiAgentChatbot>(guardedValue, (value) => GradientaiAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))); })(),
      childAgents: (() { final guardedValue = map['childAgents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiAgentChildAgent>(guardedValue, (value) => GradientaiAgentChildAgent.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployments: (() { final guardedValue = map['deployments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiAgentDeployment>(guardedValue, (value) => GradientaiAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functions: (() { final guardedValue = map['functions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiAgentFunction>(guardedValue, (value) => GradientaiAgentFunction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ifCase: (() { final guardedValue = map['ifCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instruction: (() { final guardedValue = map['instruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      k: (() { final guardedValue = map['k']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      knowledgeBaseUuids: (() { final guardedValue = map['knowledgeBaseUuids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      knowledgeBases: (() { final guardedValue = map['knowledgeBases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiAgentKnowledgeBase>(guardedValue, (value) => GradientaiAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maxTokens: (() { final guardedValue = map['maxTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      modelUuid: (() { final guardedValue = map['modelUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      models: (() { final guardedValue = map['models']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiAgentModel>(guardedValue, (value) => GradientaiAgentModel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openAiApiKeys: (() { final guardedValue = map['openAiApiKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiAgentOpenAiApiKey>(guardedValue, (value) => GradientaiAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      openAiKeyUuid: (() { final guardedValue = map['openAiKeyUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentAgents: (() { final guardedValue = map['parentAgents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiAgentParentAgent>(guardedValue, (value) => GradientaiAgentParentAgent.fromMap((value as Map).cast<String, dynamic>()))); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provideCitations: (() { final guardedValue = map['provideCitations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retrievalMethod: (() { final guardedValue = map['retrievalMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeCreatedAt: (() { final guardedValue = map['routeCreatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeCreatedBy: (() { final guardedValue = map['routeCreatedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeName: (() { final guardedValue = map['routeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeUuid: (() { final guardedValue = map['routeUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      temperature: (() { final guardedValue = map['temperature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiAgentTemplate>(guardedValue, (value) => GradientaiAgentTemplate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      topP: (() { final guardedValue = map['topP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceUuid: (() { final guardedValue = map['workspaceUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
