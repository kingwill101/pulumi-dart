// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agent_agent_guardrail.dart';
import 'get_genai_agent_anthropic_api_key.dart';
import 'get_genai_agent_api_key.dart';
import 'get_genai_agent_api_key_info.dart';
import 'get_genai_agent_chatbot.dart';
import 'get_genai_agent_chatbot_identifier.dart';
import 'get_genai_agent_deployment.dart';
import 'get_genai_agent_function.dart';
import 'get_genai_agent_knowledge_base.dart';
import 'get_genai_agent_model.dart';
import 'get_genai_agent_open_ai_api_key.dart';
import 'get_genai_agent_template.dart';

/// {@template pulumi_index_get_genai_agent_get_genai_agent_args_doc}
/// Arguments for getGenaiAgent.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_agent_get_genai_agent_args_doc}
class GetGenaiAgentArgs {
  final pulumi.Input<List<GetGenaiAgentAgentGuardrail>>? agentGuardrails;
  final pulumi.Input<String> agentId;
  final pulumi.Input<List<GetGenaiAgentAnthropicApiKey>>? anthropicApiKeys;
  final pulumi.Input<List<GetGenaiAgentApiKeyInfo>>? apiKeyInfos;
  final pulumi.Input<List<GetGenaiAgentApiKey>>? apiKeys;
  final pulumi.Input<List<GetGenaiAgentChatbotIdentifier>>? chatbotIdentifiers;
  final pulumi.Input<List<GetGenaiAgentChatbot>>? chatbots;
  final pulumi.Input<List<GetGenaiAgentDeployment>>? deployments;
  final pulumi.Input<String>? description;
  final pulumi.Input<List<GetGenaiAgentFunction>>? functions;
  final pulumi.Input<String>? ifCase;
  final pulumi.Input<int>? k;
  final pulumi.Input<List<GetGenaiAgentKnowledgeBase>>? knowledgeBases;
  final pulumi.Input<int>? maxTokens;
  final pulumi.Input<List<GetGenaiAgentModel>>? models;
  final pulumi.Input<List<GetGenaiAgentOpenAiApiKey>>? openAiApiKeys;
  final pulumi.Input<String>? retrievalMethod;
  final pulumi.Input<String>? routeCreatedBy;
  final pulumi.Input<String>? routeName;
  final pulumi.Input<String>? routeUuid;
  final pulumi.Input<List<String>>? tags;
  final pulumi.Input<double>? temperature;
  final pulumi.Input<List<GetGenaiAgentTemplate>>? templates;
  final pulumi.Input<double>? topP;
  final pulumi.Input<String>? url;
  final pulumi.Input<String>? userId;

  /// Creates a new [GetGenaiAgentArgs].
  /// [agentGuardrails] Optional.
  /// [agentId] Required.
  /// [anthropicApiKeys] Optional.
  /// [apiKeyInfos] Optional.
  /// [apiKeys] Optional.
  /// [chatbotIdentifiers] Optional.
  /// [chatbots] Optional.
  /// [deployments] Optional.
  /// [description] Optional.
  /// [functions] Optional.
  /// [ifCase] Optional.
  /// [k] Optional.
  /// [knowledgeBases] Optional.
  /// [maxTokens] Optional.
  /// [models] Optional.
  /// [openAiApiKeys] Optional.
  /// [retrievalMethod] Optional.
  /// [routeCreatedBy] Optional.
  /// [routeName] Optional.
  /// [routeUuid] Optional.
  /// [tags] Optional.
  /// [temperature] Optional.
  /// [templates] Optional.
  /// [topP] Optional.
  /// [url] Optional.
  /// [userId] Optional.
  GetGenaiAgentArgs({
    pulumi.Output<List<GetGenaiAgentAgentGuardrail>>? agentGuardrails,
    required pulumi.Output<String> agentId,
    pulumi.Output<List<GetGenaiAgentAnthropicApiKey>>? anthropicApiKeys,
    pulumi.Output<List<GetGenaiAgentApiKeyInfo>>? apiKeyInfos,
    pulumi.Output<List<GetGenaiAgentApiKey>>? apiKeys,
    pulumi.Output<List<GetGenaiAgentChatbotIdentifier>>? chatbotIdentifiers,
    pulumi.Output<List<GetGenaiAgentChatbot>>? chatbots,
    pulumi.Output<List<GetGenaiAgentDeployment>>? deployments,
    pulumi.Output<String>? description,
    pulumi.Output<List<GetGenaiAgentFunction>>? functions,
    pulumi.Output<String>? ifCase,
    pulumi.Output<int>? k,
    pulumi.Output<List<GetGenaiAgentKnowledgeBase>>? knowledgeBases,
    pulumi.Output<int>? maxTokens,
    pulumi.Output<List<GetGenaiAgentModel>>? models,
    pulumi.Output<List<GetGenaiAgentOpenAiApiKey>>? openAiApiKeys,
    pulumi.Output<String>? retrievalMethod,
    pulumi.Output<String>? routeCreatedBy,
    pulumi.Output<String>? routeName,
    pulumi.Output<String>? routeUuid,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<double>? temperature,
    pulumi.Output<List<GetGenaiAgentTemplate>>? templates,
    pulumi.Output<double>? topP,
    pulumi.Output<String>? url,
    pulumi.Output<String>? userId,
  }) :
      agentGuardrails = pulumi.Input.asOptionalInput<List<GetGenaiAgentAgentGuardrail>>(agentGuardrails),
      agentId = pulumi.Input.asInput<String>(agentId),
      anthropicApiKeys = pulumi.Input.asOptionalInput<List<GetGenaiAgentAnthropicApiKey>>(anthropicApiKeys),
      apiKeyInfos = pulumi.Input.asOptionalInput<List<GetGenaiAgentApiKeyInfo>>(apiKeyInfos),
      apiKeys = pulumi.Input.asOptionalInput<List<GetGenaiAgentApiKey>>(apiKeys),
      chatbotIdentifiers = pulumi.Input.asOptionalInput<List<GetGenaiAgentChatbotIdentifier>>(chatbotIdentifiers),
      chatbots = pulumi.Input.asOptionalInput<List<GetGenaiAgentChatbot>>(chatbots),
      deployments = pulumi.Input.asOptionalInput<List<GetGenaiAgentDeployment>>(deployments),
      description = pulumi.Input.asOptionalInput<String>(description),
      functions = pulumi.Input.asOptionalInput<List<GetGenaiAgentFunction>>(functions),
      ifCase = pulumi.Input.asOptionalInput<String>(ifCase),
      k = pulumi.Input.asOptionalInput<int>(k),
      knowledgeBases = pulumi.Input.asOptionalInput<List<GetGenaiAgentKnowledgeBase>>(knowledgeBases),
      maxTokens = pulumi.Input.asOptionalInput<int>(maxTokens),
      models = pulumi.Input.asOptionalInput<List<GetGenaiAgentModel>>(models),
      openAiApiKeys = pulumi.Input.asOptionalInput<List<GetGenaiAgentOpenAiApiKey>>(openAiApiKeys),
      retrievalMethod = pulumi.Input.asOptionalInput<String>(retrievalMethod),
      routeCreatedBy = pulumi.Input.asOptionalInput<String>(routeCreatedBy),
      routeName = pulumi.Input.asOptionalInput<String>(routeName),
      routeUuid = pulumi.Input.asOptionalInput<String>(routeUuid),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      temperature = pulumi.Input.asOptionalInput<double>(temperature),
      templates = pulumi.Input.asOptionalInput<List<GetGenaiAgentTemplate>>(templates),
      topP = pulumi.Input.asOptionalInput<double>(topP),
      url = pulumi.Input.asOptionalInput<String>(url),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentGuardrails': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentAgentGuardrail>, List<Map<String, dynamic>>>(agentGuardrails, (value) => pulumi.Input.encodeList<GetGenaiAgentAgentGuardrail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'agentId': agentId,
      'anthropicApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<GetGenaiAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeyInfos': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<GetGenaiAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<GetGenaiAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<GetGenaiAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<GetGenaiAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deployments': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GetGenaiAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'functions': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentFunction>, List<Map<String, dynamic>>>(functions, (value) => pulumi.Input.encodeList<GetGenaiAgentFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ifCase': ?ifCase,
      'k': ?k,
      'knowledgeBases': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentKnowledgeBase>, List<Map<String, dynamic>>>(knowledgeBases, (value) => pulumi.Input.encodeList<GetGenaiAgentKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTokens': ?maxTokens,
      'models': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GetGenaiAgentModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openAiApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentOpenAiApiKey>, List<Map<String, dynamic>>>(openAiApiKeys, (value) => pulumi.Input.encodeList<GetGenaiAgentOpenAiApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retrievalMethod': ?retrievalMethod,
      'routeCreatedBy': ?routeCreatedBy,
      'routeName': ?routeName,
      'routeUuid': ?routeUuid,
      'tags': ?tags,
      'temperature': ?temperature,
      'templates': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<GetGenaiAgentTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topP': ?topP,
      'url': ?url,
      'userId': ?userId,
    };
  }

  factory GetGenaiAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentArgs(
      agentGuardrails: map['agentGuardrails'] == null ? null : pulumi.Output.create<List<GetGenaiAgentAgentGuardrail>>(pulumi.Input.decodeList<GetGenaiAgentAgentGuardrail>(map['agentGuardrails'], (value) => GetGenaiAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>()))),
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : pulumi.Output.create<List<GetGenaiAgentAnthropicApiKey>>(pulumi.Input.decodeList<GetGenaiAgentAnthropicApiKey>(map['anthropicApiKeys'], (value) => GetGenaiAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : pulumi.Output.create<List<GetGenaiAgentApiKeyInfo>>(pulumi.Input.decodeList<GetGenaiAgentApiKeyInfo>(map['apiKeyInfos'], (value) => GetGenaiAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))),
      apiKeys: map['apiKeys'] == null ? null : pulumi.Output.create<List<GetGenaiAgentApiKey>>(pulumi.Input.decodeList<GetGenaiAgentApiKey>(map['apiKeys'], (value) => GetGenaiAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : pulumi.Output.create<List<GetGenaiAgentChatbotIdentifier>>(pulumi.Input.decodeList<GetGenaiAgentChatbotIdentifier>(map['chatbotIdentifiers'], (value) => GetGenaiAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))),
      chatbots: map['chatbots'] == null ? null : pulumi.Output.create<List<GetGenaiAgentChatbot>>(pulumi.Input.decodeList<GetGenaiAgentChatbot>(map['chatbots'], (value) => GetGenaiAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))),
      deployments: map['deployments'] == null ? null : pulumi.Output.create<List<GetGenaiAgentDeployment>>(pulumi.Input.decodeList<GetGenaiAgentDeployment>(map['deployments'], (value) => GetGenaiAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      functions: map['functions'] == null ? null : pulumi.Output.create<List<GetGenaiAgentFunction>>(pulumi.Input.decodeList<GetGenaiAgentFunction>(map['functions'], (value) => GetGenaiAgentFunction.fromMap((value as Map).cast<String, dynamic>()))),
      ifCase: map['ifCase'] == null ? null : pulumi.Output.create<String>(map['ifCase'] as String),
      k: map['k'] == null ? null : pulumi.Output.create<int>(map['k'] as int),
      knowledgeBases: map['knowledgeBases'] == null ? null : pulumi.Output.create<List<GetGenaiAgentKnowledgeBase>>(pulumi.Input.decodeList<GetGenaiAgentKnowledgeBase>(map['knowledgeBases'], (value) => GetGenaiAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))),
      maxTokens: map['maxTokens'] == null ? null : pulumi.Output.create<int>(map['maxTokens'] as int),
      models: map['models'] == null ? null : pulumi.Output.create<List<GetGenaiAgentModel>>(pulumi.Input.decodeList<GetGenaiAgentModel>(map['models'], (value) => GetGenaiAgentModel.fromMap((value as Map).cast<String, dynamic>()))),
      openAiApiKeys: map['openAiApiKeys'] == null ? null : pulumi.Output.create<List<GetGenaiAgentOpenAiApiKey>>(pulumi.Input.decodeList<GetGenaiAgentOpenAiApiKey>(map['openAiApiKeys'], (value) => GetGenaiAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      retrievalMethod: map['retrievalMethod'] == null ? null : pulumi.Output.create<String>(map['retrievalMethod'] as String),
      routeCreatedBy: map['routeCreatedBy'] == null ? null : pulumi.Output.create<String>(map['routeCreatedBy'] as String),
      routeName: map['routeName'] == null ? null : pulumi.Output.create<String>(map['routeName'] as String),
      routeUuid: map['routeUuid'] == null ? null : pulumi.Output.create<String>(map['routeUuid'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      temperature: map['temperature'] == null ? null : pulumi.Output.create<double>(map['temperature'] as double),
      templates: map['templates'] == null ? null : pulumi.Output.create<List<GetGenaiAgentTemplate>>(pulumi.Input.decodeList<GetGenaiAgentTemplate>(map['templates'], (value) => GetGenaiAgentTemplate.fromMap((value as Map).cast<String, dynamic>()))),
      topP: map['topP'] == null ? null : pulumi.Output.create<double>(map['topP'] as double),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

