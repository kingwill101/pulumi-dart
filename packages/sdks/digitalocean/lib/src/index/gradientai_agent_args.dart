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

/// {@template pulumi_index_gradientai_agent_gradientai_agent_args_doc}
/// The set of arguments for GradientaiAgent.
/// {@endtemplate}
/// {@macro pulumi_index_gradientai_agent_gradientai_agent_args_doc}
class GradientaiAgentArgs {
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
  final pulumi.Input<String> instruction;
  /// K value
  final pulumi.Input<int>? k;
  /// Ids of the knowledge base(s) to attach to the agent
  final pulumi.Input<List<String>>? knowledgeBaseUuids;
  /// List of Knowledge Bases
  final pulumi.Input<List<GradientaiAgentKnowledgeBase>>? knowledgeBases;
  /// Maximum tokens allowed
  final pulumi.Input<int>? maxTokens;
  /// Model UUID of the Agent
  final pulumi.Input<String> modelUuid;
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
  final pulumi.Input<String> projectId;
  /// Indicates if the agent should provide citations in responses
  final pulumi.Input<bool>? provideCitations;
  /// Region where the Agent is deployed
  final pulumi.Input<String> region;
  /// Retrieval method used
  final pulumi.Input<String>? retrievalMethod;
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
  /// URL for the Agent
  final pulumi.Input<String>? url;
  /// User ID linked with the Agent
  final pulumi.Input<String>? userId;

  /// Creates a new [GradientaiAgentArgs].
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
  /// [routeCreatedBy] User who created the route
  /// [routeName] Route name
  /// [routeUuid] Route UUID
  /// [tags] List of Tags
  /// [temperature] Agent temperature setting
  /// [templates] Agent Template
  /// [topP] Top P sampling parameter
  /// [url] URL for the Agent
  /// [userId] User ID linked with the Agent
  GradientaiAgentArgs({
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
    required this.instruction,
    this.k,
    this.knowledgeBaseUuids,
    this.knowledgeBases,
    this.maxTokens,
    required this.modelUuid,
    this.models,
    this.name,
    this.openAiApiKeys,
    this.openAiKeyUuid,
    this.parentAgents,
    required this.projectId,
    this.provideCitations,
    required this.region,
    this.retrievalMethod,
    this.routeCreatedBy,
    this.routeName,
    this.routeUuid,
    this.tags,
    this.temperature,
    this.templates,
    this.topP,
    this.url,
    this.userId,
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
      'instruction': instruction,
      'k': ?k,
      'knowledgeBaseUuids': ?knowledgeBaseUuids,
      'knowledgeBases': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentKnowledgeBase>, List<Map<String, dynamic>>>(knowledgeBases, (value) => pulumi.Input.encodeList<GradientaiAgentKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTokens': ?maxTokens,
      'modelUuid': modelUuid,
      'models': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GradientaiAgentModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'openAiApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentOpenAiApiKey>, List<Map<String, dynamic>>>(openAiApiKeys, (value) => pulumi.Input.encodeList<GradientaiAgentOpenAiApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openAiKeyUuid': ?openAiKeyUuid,
      'parentAgents': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentParentAgent>, List<Map<String, dynamic>>>(parentAgents, (value) => pulumi.Input.encodeList<GradientaiAgentParentAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projectId': projectId,
      'provideCitations': ?provideCitations,
      'region': region,
      'retrievalMethod': ?retrievalMethod,
      'routeCreatedBy': ?routeCreatedBy,
      'routeName': ?routeName,
      'routeUuid': ?routeUuid,
      'tags': ?tags,
      'temperature': ?temperature,
      'templates': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<GradientaiAgentTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topP': ?topP,
      'url': ?url,
      'userId': ?userId,
    };
  }

  factory GradientaiAgentArgs.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentArgs(
      agentGuardrails: map['agentGuardrails'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentAgentGuardrail>(map['agentGuardrails'], (value) => GradientaiAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentAnthropicApiKey>(map['anthropicApiKeys'], (value) => GradientaiAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      anthropicKeyUuid: map['anthropicKeyUuid'] == null ? null : (map['anthropicKeyUuid'] as String).input(),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentApiKeyInfo>(map['apiKeyInfos'], (value) => GradientaiAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiKeys: map['apiKeys'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentApiKey>(map['apiKeys'], (value) => GradientaiAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentChatbotIdentifier>(map['chatbotIdentifiers'], (value) => GradientaiAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbots: map['chatbots'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentChatbot>(map['chatbots'], (value) => GradientaiAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))).input(),
      childAgents: map['childAgents'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentChildAgent>(map['childAgents'], (value) => GradientaiAgentChildAgent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      deployments: map['deployments'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentDeployment>(map['deployments'], (value) => GradientaiAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      functions: map['functions'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentFunction>(map['functions'], (value) => GradientaiAgentFunction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ifCase: map['ifCase'] == null ? null : (map['ifCase'] as String).input(),
      instruction: (map['instruction'] as String).input(),
      k: map['k'] == null ? null : (map['k'] as int).input(),
      knowledgeBaseUuids: map['knowledgeBaseUuids'] == null ? null : ((map['knowledgeBaseUuids'] as List).cast<String>()).input(),
      knowledgeBases: map['knowledgeBases'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentKnowledgeBase>(map['knowledgeBases'], (value) => GradientaiAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxTokens: map['maxTokens'] == null ? null : (map['maxTokens'] as int).input(),
      modelUuid: (map['modelUuid'] as String).input(),
      models: map['models'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentModel>(map['models'], (value) => GradientaiAgentModel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      openAiApiKeys: map['openAiApiKeys'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentOpenAiApiKey>(map['openAiApiKeys'], (value) => GradientaiAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      openAiKeyUuid: map['openAiKeyUuid'] == null ? null : (map['openAiKeyUuid'] as String).input(),
      parentAgents: map['parentAgents'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentParentAgent>(map['parentAgents'], (value) => GradientaiAgentParentAgent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      projectId: (map['projectId'] as String).input(),
      provideCitations: map['provideCitations'] == null ? null : (map['provideCitations'] as bool).input(),
      region: (map['region'] as String).input(),
      retrievalMethod: map['retrievalMethod'] == null ? null : (map['retrievalMethod'] as String).input(),
      routeCreatedBy: map['routeCreatedBy'] == null ? null : (map['routeCreatedBy'] as String).input(),
      routeName: map['routeName'] == null ? null : (map['routeName'] as String).input(),
      routeUuid: map['routeUuid'] == null ? null : (map['routeUuid'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      temperature: map['temperature'] == null ? null : (map['temperature'] as double).input(),
      templates: map['templates'] == null ? null : (pulumi.Input.decodeList<GradientaiAgentTemplate>(map['templates'], (value) => GradientaiAgentTemplate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      topP: map['topP'] == null ? null : (map['topP'] as double).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
    );
  }
}

