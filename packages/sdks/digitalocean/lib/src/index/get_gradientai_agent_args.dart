// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agent_agent_guardrail.dart';
import 'get_gradientai_agent_anthropic_api_key.dart';
import 'get_gradientai_agent_api_key.dart';
import 'get_gradientai_agent_api_key_info.dart';
import 'get_gradientai_agent_chatbot.dart';
import 'get_gradientai_agent_chatbot_identifier.dart';
import 'get_gradientai_agent_deployment.dart';
import 'get_gradientai_agent_function.dart';
import 'get_gradientai_agent_knowledge_base.dart';
import 'get_gradientai_agent_model.dart';
import 'get_gradientai_agent_open_ai_api_key.dart';
import 'get_gradientai_agent_template.dart';

/// {@template pulumi_index_get_gradientai_agent_get_gradientai_agent_args_doc}
/// Arguments for getGradientaiAgent.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_agent_get_gradientai_agent_args_doc}
class GetGradientaiAgentArgs {
  final pulumi.Input<List<GetGradientaiAgentAgentGuardrail>>? agentGuardrails;
  final pulumi.Input<String> agentId;
  final pulumi.Input<List<GetGradientaiAgentAnthropicApiKey>>? anthropicApiKeys;
  final pulumi.Input<List<GetGradientaiAgentApiKeyInfo>>? apiKeyInfos;
  final pulumi.Input<List<GetGradientaiAgentApiKey>>? apiKeys;
  final pulumi.Input<List<GetGradientaiAgentChatbotIdentifier>>? chatbotIdentifiers;
  final pulumi.Input<List<GetGradientaiAgentChatbot>>? chatbots;
  final pulumi.Input<List<GetGradientaiAgentDeployment>>? deployments;
  final pulumi.Input<String>? description;
  final pulumi.Input<List<GetGradientaiAgentFunction>>? functions;
  final pulumi.Input<String>? ifCase;
  final pulumi.Input<int>? k;
  final pulumi.Input<List<GetGradientaiAgentKnowledgeBase>>? knowledgeBases;
  final pulumi.Input<int>? maxTokens;
  final pulumi.Input<List<GetGradientaiAgentModel>>? models;
  final pulumi.Input<List<GetGradientaiAgentOpenAiApiKey>>? openAiApiKeys;
  final pulumi.Input<String>? retrievalMethod;
  final pulumi.Input<String>? routeCreatedBy;
  final pulumi.Input<String>? routeName;
  final pulumi.Input<String>? routeUuid;
  final pulumi.Input<List<String>>? tags;
  final pulumi.Input<double>? temperature;
  final pulumi.Input<List<GetGradientaiAgentTemplate>>? templates;
  final pulumi.Input<double>? topP;
  final pulumi.Input<String>? url;
  final pulumi.Input<String>? userId;

  /// Creates a new [GetGradientaiAgentArgs].
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
  GetGradientaiAgentArgs({
    pulumi.Output<List<GetGradientaiAgentAgentGuardrail>>? agentGuardrails,
    required pulumi.Output<String> agentId,
    pulumi.Output<List<GetGradientaiAgentAnthropicApiKey>>? anthropicApiKeys,
    pulumi.Output<List<GetGradientaiAgentApiKeyInfo>>? apiKeyInfos,
    pulumi.Output<List<GetGradientaiAgentApiKey>>? apiKeys,
    pulumi.Output<List<GetGradientaiAgentChatbotIdentifier>>? chatbotIdentifiers,
    pulumi.Output<List<GetGradientaiAgentChatbot>>? chatbots,
    pulumi.Output<List<GetGradientaiAgentDeployment>>? deployments,
    pulumi.Output<String>? description,
    pulumi.Output<List<GetGradientaiAgentFunction>>? functions,
    pulumi.Output<String>? ifCase,
    pulumi.Output<int>? k,
    pulumi.Output<List<GetGradientaiAgentKnowledgeBase>>? knowledgeBases,
    pulumi.Output<int>? maxTokens,
    pulumi.Output<List<GetGradientaiAgentModel>>? models,
    pulumi.Output<List<GetGradientaiAgentOpenAiApiKey>>? openAiApiKeys,
    pulumi.Output<String>? retrievalMethod,
    pulumi.Output<String>? routeCreatedBy,
    pulumi.Output<String>? routeName,
    pulumi.Output<String>? routeUuid,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<double>? temperature,
    pulumi.Output<List<GetGradientaiAgentTemplate>>? templates,
    pulumi.Output<double>? topP,
    pulumi.Output<String>? url,
    pulumi.Output<String>? userId,
  }) :
      agentGuardrails = pulumi.Input.asOptionalInput<List<GetGradientaiAgentAgentGuardrail>>(agentGuardrails),
      agentId = pulumi.Input.asInput<String>(agentId),
      anthropicApiKeys = pulumi.Input.asOptionalInput<List<GetGradientaiAgentAnthropicApiKey>>(anthropicApiKeys),
      apiKeyInfos = pulumi.Input.asOptionalInput<List<GetGradientaiAgentApiKeyInfo>>(apiKeyInfos),
      apiKeys = pulumi.Input.asOptionalInput<List<GetGradientaiAgentApiKey>>(apiKeys),
      chatbotIdentifiers = pulumi.Input.asOptionalInput<List<GetGradientaiAgentChatbotIdentifier>>(chatbotIdentifiers),
      chatbots = pulumi.Input.asOptionalInput<List<GetGradientaiAgentChatbot>>(chatbots),
      deployments = pulumi.Input.asOptionalInput<List<GetGradientaiAgentDeployment>>(deployments),
      description = pulumi.Input.asOptionalInput<String>(description),
      functions = pulumi.Input.asOptionalInput<List<GetGradientaiAgentFunction>>(functions),
      ifCase = pulumi.Input.asOptionalInput<String>(ifCase),
      k = pulumi.Input.asOptionalInput<int>(k),
      knowledgeBases = pulumi.Input.asOptionalInput<List<GetGradientaiAgentKnowledgeBase>>(knowledgeBases),
      maxTokens = pulumi.Input.asOptionalInput<int>(maxTokens),
      models = pulumi.Input.asOptionalInput<List<GetGradientaiAgentModel>>(models),
      openAiApiKeys = pulumi.Input.asOptionalInput<List<GetGradientaiAgentOpenAiApiKey>>(openAiApiKeys),
      retrievalMethod = pulumi.Input.asOptionalInput<String>(retrievalMethod),
      routeCreatedBy = pulumi.Input.asOptionalInput<String>(routeCreatedBy),
      routeName = pulumi.Input.asOptionalInput<String>(routeName),
      routeUuid = pulumi.Input.asOptionalInput<String>(routeUuid),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      temperature = pulumi.Input.asOptionalInput<double>(temperature),
      templates = pulumi.Input.asOptionalInput<List<GetGradientaiAgentTemplate>>(templates),
      topP = pulumi.Input.asOptionalInput<double>(topP),
      url = pulumi.Input.asOptionalInput<String>(url),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentGuardrails': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentAgentGuardrail>, List<Map<String, dynamic>>>(agentGuardrails, (value) => pulumi.Input.encodeList<GetGradientaiAgentAgentGuardrail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'agentId': agentId,
      'anthropicApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<GetGradientaiAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeyInfos': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<GetGradientaiAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<GetGradientaiAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<GetGradientaiAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<GetGradientaiAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deployments': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GetGradientaiAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'functions': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentFunction>, List<Map<String, dynamic>>>(functions, (value) => pulumi.Input.encodeList<GetGradientaiAgentFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ifCase': ?ifCase,
      'k': ?k,
      'knowledgeBases': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentKnowledgeBase>, List<Map<String, dynamic>>>(knowledgeBases, (value) => pulumi.Input.encodeList<GetGradientaiAgentKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTokens': ?maxTokens,
      'models': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GetGradientaiAgentModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openAiApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentOpenAiApiKey>, List<Map<String, dynamic>>>(openAiApiKeys, (value) => pulumi.Input.encodeList<GetGradientaiAgentOpenAiApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retrievalMethod': ?retrievalMethod,
      'routeCreatedBy': ?routeCreatedBy,
      'routeName': ?routeName,
      'routeUuid': ?routeUuid,
      'tags': ?tags,
      'temperature': ?temperature,
      'templates': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<GetGradientaiAgentTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topP': ?topP,
      'url': ?url,
      'userId': ?userId,
    };
  }

  factory GetGradientaiAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentArgs(
      agentGuardrails: map['agentGuardrails'] == null ? null : pulumi.Output.create<List<GetGradientaiAgentAgentGuardrail>>(pulumi.Input.decodeList<GetGradientaiAgentAgentGuardrail>(map['agentGuardrails'], (value) => GetGradientaiAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>()))),
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : pulumi.Output.create<List<GetGradientaiAgentAnthropicApiKey>>(pulumi.Input.decodeList<GetGradientaiAgentAnthropicApiKey>(map['anthropicApiKeys'], (value) => GetGradientaiAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : pulumi.Output.create<List<GetGradientaiAgentApiKeyInfo>>(pulumi.Input.decodeList<GetGradientaiAgentApiKeyInfo>(map['apiKeyInfos'], (value) => GetGradientaiAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))),
      apiKeys: map['apiKeys'] == null ? null : pulumi.Output.create<List<GetGradientaiAgentApiKey>>(pulumi.Input.decodeList<GetGradientaiAgentApiKey>(map['apiKeys'], (value) => GetGradientaiAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : pulumi.Output.create<List<GetGradientaiAgentChatbotIdentifier>>(pulumi.Input.decodeList<GetGradientaiAgentChatbotIdentifier>(map['chatbotIdentifiers'], (value) => GetGradientaiAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))),
      chatbots: map['chatbots'] == null ? null : pulumi.Output.create<List<GetGradientaiAgentChatbot>>(pulumi.Input.decodeList<GetGradientaiAgentChatbot>(map['chatbots'], (value) => GetGradientaiAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))),
      deployments: map['deployments'] == null ? null : pulumi.Output.create<List<GetGradientaiAgentDeployment>>(pulumi.Input.decodeList<GetGradientaiAgentDeployment>(map['deployments'], (value) => GetGradientaiAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      functions: map['functions'] == null ? null : pulumi.Output.create<List<GetGradientaiAgentFunction>>(pulumi.Input.decodeList<GetGradientaiAgentFunction>(map['functions'], (value) => GetGradientaiAgentFunction.fromMap((value as Map).cast<String, dynamic>()))),
      ifCase: map['ifCase'] == null ? null : pulumi.Output.create<String>(map['ifCase'] as String),
      k: map['k'] == null ? null : pulumi.Output.create<int>(map['k'] as int),
      knowledgeBases: map['knowledgeBases'] == null ? null : pulumi.Output.create<List<GetGradientaiAgentKnowledgeBase>>(pulumi.Input.decodeList<GetGradientaiAgentKnowledgeBase>(map['knowledgeBases'], (value) => GetGradientaiAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))),
      maxTokens: map['maxTokens'] == null ? null : pulumi.Output.create<int>(map['maxTokens'] as int),
      models: map['models'] == null ? null : pulumi.Output.create<List<GetGradientaiAgentModel>>(pulumi.Input.decodeList<GetGradientaiAgentModel>(map['models'], (value) => GetGradientaiAgentModel.fromMap((value as Map).cast<String, dynamic>()))),
      openAiApiKeys: map['openAiApiKeys'] == null ? null : pulumi.Output.create<List<GetGradientaiAgentOpenAiApiKey>>(pulumi.Input.decodeList<GetGradientaiAgentOpenAiApiKey>(map['openAiApiKeys'], (value) => GetGradientaiAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      retrievalMethod: map['retrievalMethod'] == null ? null : pulumi.Output.create<String>(map['retrievalMethod'] as String),
      routeCreatedBy: map['routeCreatedBy'] == null ? null : pulumi.Output.create<String>(map['routeCreatedBy'] as String),
      routeName: map['routeName'] == null ? null : pulumi.Output.create<String>(map['routeName'] as String),
      routeUuid: map['routeUuid'] == null ? null : pulumi.Output.create<String>(map['routeUuid'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      temperature: map['temperature'] == null ? null : pulumi.Output.create<double>(map['temperature'] as double),
      templates: map['templates'] == null ? null : pulumi.Output.create<List<GetGradientaiAgentTemplate>>(pulumi.Input.decodeList<GetGradientaiAgentTemplate>(map['templates'], (value) => GetGradientaiAgentTemplate.fromMap((value as Map).cast<String, dynamic>()))),
      topP: map['topP'] == null ? null : pulumi.Output.create<double>(map['topP'] as double),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

