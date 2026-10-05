import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_args.dart';
import 'get_agent_dialogflow_v3beta1_args.dart';
import 'get_agent_dialogflow_v3beta1_result.dart';
import 'get_agent_result.dart';
import 'get_context_args.dart';
import 'get_context_dialogflow_v2beta1_args.dart';
import 'get_context_dialogflow_v2beta1_result.dart';
import 'get_context_result.dart';
import 'get_conversation_args.dart';
import 'get_conversation_dataset_args.dart';
import 'get_conversation_dataset_result.dart';
import 'get_conversation_dialogflow_v2beta1_args.dart';
import 'get_conversation_dialogflow_v2beta1_result.dart';
import 'get_conversation_model_args.dart';
import 'get_conversation_model_result.dart';
import 'get_conversation_profile_args.dart';
import 'get_conversation_profile_dialogflow_v2beta1_args.dart';
import 'get_conversation_profile_dialogflow_v2beta1_result.dart';
import 'get_conversation_profile_result.dart';
import 'get_conversation_result.dart';
import 'get_document_args.dart';
import 'get_document_dialogflow_v2beta1_args.dart';
import 'get_document_dialogflow_v2beta1_result.dart';
import 'get_document_result.dart';
import 'get_entity_type_args.dart';
import 'get_entity_type_dialogflow_v2beta1_args.dart';
import 'get_entity_type_dialogflow_v2beta1_result.dart';
import 'get_entity_type_dialogflow_v3_args.dart';
import 'get_entity_type_dialogflow_v3_result.dart';
import 'get_entity_type_dialogflow_v3beta1_args.dart';
import 'get_entity_type_dialogflow_v3beta1_result.dart';
import 'get_entity_type_result.dart';
import 'get_environment_args.dart';
import 'get_environment_dialogflow_v2beta1_args.dart';
import 'get_environment_dialogflow_v2beta1_result.dart';
import 'get_environment_dialogflow_v3_args.dart';
import 'get_environment_dialogflow_v3_result.dart';
import 'get_environment_dialogflow_v3beta1_args.dart';
import 'get_environment_dialogflow_v3beta1_result.dart';
import 'get_environment_result.dart';
import 'get_evaluation_args.dart';
import 'get_evaluation_result.dart';
import 'get_experiment_args.dart';
import 'get_experiment_dialogflow_v3beta1_args.dart';
import 'get_experiment_dialogflow_v3beta1_result.dart';
import 'get_experiment_result.dart';
import 'get_flow_args.dart';
import 'get_flow_dialogflow_v3beta1_args.dart';
import 'get_flow_dialogflow_v3beta1_result.dart';
import 'get_flow_result.dart';
import 'get_intent_args.dart';
import 'get_intent_dialogflow_v2beta1_args.dart';
import 'get_intent_dialogflow_v2beta1_result.dart';
import 'get_intent_dialogflow_v3_args.dart';
import 'get_intent_dialogflow_v3_result.dart';
import 'get_intent_dialogflow_v3beta1_args.dart';
import 'get_intent_dialogflow_v3beta1_result.dart';
import 'get_intent_result.dart';
import 'get_knowledge_base_args.dart';
import 'get_knowledge_base_dialogflow_v2beta1_args.dart';
import 'get_knowledge_base_dialogflow_v2beta1_result.dart';
import 'get_knowledge_base_result.dart';
import 'get_page_args.dart';
import 'get_page_dialogflow_v3beta1_args.dart';
import 'get_page_dialogflow_v3beta1_result.dart';
import 'get_page_result.dart';
import 'get_participant_args.dart';
import 'get_participant_dialogflow_v2beta1_args.dart';
import 'get_participant_dialogflow_v2beta1_result.dart';
import 'get_participant_result.dart';
import 'get_security_setting_args.dart';
import 'get_security_setting_dialogflow_v3beta1_args.dart';
import 'get_security_setting_dialogflow_v3beta1_result.dart';
import 'get_security_setting_result.dart';
import 'get_session_entity_type_args.dart';
import 'get_session_entity_type_dialogflow_v2beta1_args.dart';
import 'get_session_entity_type_dialogflow_v2beta1_result.dart';
import 'get_session_entity_type_dialogflow_v3_args.dart';
import 'get_session_entity_type_dialogflow_v3_result.dart';
import 'get_session_entity_type_dialogflow_v3beta1_args.dart';
import 'get_session_entity_type_dialogflow_v3beta1_result.dart';
import 'get_session_entity_type_result.dart';
import 'get_test_case_args.dart';
import 'get_test_case_dialogflow_v3beta1_args.dart';
import 'get_test_case_dialogflow_v3beta1_result.dart';
import 'get_test_case_result.dart';
import 'get_transition_route_group_args.dart';
import 'get_transition_route_group_dialogflow_v3beta1_args.dart';
import 'get_transition_route_group_dialogflow_v3beta1_result.dart';
import 'get_transition_route_group_result.dart';
import 'get_version_args.dart';
import 'get_version_dialogflow_v2beta1_args.dart';
import 'get_version_dialogflow_v2beta1_result.dart';
import 'get_version_dialogflow_v3_args.dart';
import 'get_version_dialogflow_v3_result.dart';
import 'get_version_dialogflow_v3beta1_args.dart';
import 'get_version_dialogflow_v3beta1_result.dart';
import 'get_version_result.dart';
import 'get_webhook_args.dart';
import 'get_webhook_dialogflow_v3beta1_args.dart';
import 'get_webhook_dialogflow_v3beta1_result.dart';
import 'get_webhook_result.dart';

/// Retrieves the specified context.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2_get_context_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContextResult> getContext(
  GetContextArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getContext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContextResult.fromMap(result);
}

pulumi.Output<GetContextResult> getContextOutput(
  GetContextArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getContext',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContextResult.fromMap);
}

/// Retrieves the specific conversation.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2_get_conversation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConversationResult> getConversation(
  GetConversationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getConversation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationResult.fromMap(result);
}

pulumi.Output<GetConversationResult> getConversationOutput(
  GetConversationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getConversation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConversationResult.fromMap);
}

/// Retrieves the specified conversation dataset.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2_get_conversation_dataset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConversationDatasetResult> getConversationDataset(
  GetConversationDatasetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getConversationDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationDatasetResult.fromMap(result);
}

pulumi.Output<GetConversationDatasetResult> getConversationDatasetOutput(
  GetConversationDatasetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getConversationDataset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConversationDatasetResult.fromMap);
}

/// Gets conversation model.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2_get_conversation_model_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConversationModelResult> getConversationModel(
  GetConversationModelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getConversationModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationModelResult.fromMap(result);
}

pulumi.Output<GetConversationModelResult> getConversationModelOutput(
  GetConversationModelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getConversationModel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConversationModelResult.fromMap);
}

/// Retrieves the specified conversation profile.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2_get_conversation_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConversationProfileResult> getConversationProfile(
  GetConversationProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getConversationProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationProfileResult.fromMap(result);
}

pulumi.Output<GetConversationProfileResult> getConversationProfileOutput(
  GetConversationProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getConversationProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConversationProfileResult.fromMap);
}

/// Retrieves the specified document.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2_get_document_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDocumentResult> getDocument(
  GetDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentResult.fromMap(result);
}

pulumi.Output<GetDocumentResult> getDocumentOutput(
  GetDocumentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getDocument',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDocumentResult.fromMap);
}

/// Retrieves the specified entity type.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2_get_entity_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityTypeResult> getEntityType(
  GetEntityTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeResult.fromMap(result);
}

pulumi.Output<GetEntityTypeResult> getEntityTypeOutput(
  GetEntityTypeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getEntityType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntityTypeResult.fromMap);
}

/// Retrieves the specified agent environment.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2_get_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}

pulumi.Output<GetEnvironmentResult> getEnvironmentOutput(
  GetEnvironmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentResult.fromMap);
}

/// Gets an evaluation of conversation model.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2_get_evaluation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEvaluationResult> getEvaluation(
  GetEvaluationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getEvaluation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEvaluationResult.fromMap(result);
}

pulumi.Output<GetEvaluationResult> getEvaluationOutput(
  GetEvaluationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getEvaluation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEvaluationResult.fromMap);
}

/// Retrieves the specified intent.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2_get_intent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntentResult> getIntent(
  GetIntentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getIntent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntentResult.fromMap(result);
}

pulumi.Output<GetIntentResult> getIntentOutput(
  GetIntentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getIntent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntentResult.fromMap);
}

/// Retrieves the specified knowledge base.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2_get_knowledge_base_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKnowledgeBaseResult> getKnowledgeBase(
  GetKnowledgeBaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getKnowledgeBase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKnowledgeBaseResult.fromMap(result);
}

pulumi.Output<GetKnowledgeBaseResult> getKnowledgeBaseOutput(
  GetKnowledgeBaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getKnowledgeBase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKnowledgeBaseResult.fromMap);
}

/// Retrieves a conversation participant.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2_get_participant_args_doc}
/// [options] Invoke options controlling this call.
Future<GetParticipantResult> getParticipant(
  GetParticipantArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getParticipant',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParticipantResult.fromMap(result);
}

pulumi.Output<GetParticipantResult> getParticipantOutput(
  GetParticipantArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getParticipant',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetParticipantResult.fromMap);
}

/// Retrieves the specified session entity type. This method doesn't work with Google Assistant integration. Contact Dialogflow support if you need to use session entities with Google Assistant integration.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2_get_session_entity_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSessionEntityTypeResult> getSessionEntityType(
  GetSessionEntityTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getSessionEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionEntityTypeResult.fromMap(result);
}

pulumi.Output<GetSessionEntityTypeResult> getSessionEntityTypeOutput(
  GetSessionEntityTypeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getSessionEntityType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSessionEntityTypeResult.fromMap);
}

/// Retrieves the specified agent version.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2_get_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionResult> getVersion(
  GetVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionResult.fromMap(result);
}

pulumi.Output<GetVersionResult> getVersionOutput(
  GetVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVersionResult.fromMap);
}

/// Retrieves the specified context.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2beta1_get_context_dialogflow_v2beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContextDialogflowV2beta1Result> getContextDialogflowV2beta1(
  GetContextDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getContext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContextDialogflowV2beta1Result.fromMap(result);
}

pulumi.Output<GetContextDialogflowV2beta1Result> getContextDialogflowV2beta1Output(
  GetContextDialogflowV2beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getContext',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContextDialogflowV2beta1Result.fromMap);
}

/// Retrieves the specific conversation.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2beta1_get_conversation_dialogflow_v2beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConversationDialogflowV2beta1Result> getConversationDialogflowV2beta1(
  GetConversationDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getConversation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationDialogflowV2beta1Result.fromMap(result);
}

pulumi.Output<GetConversationDialogflowV2beta1Result> getConversationDialogflowV2beta1Output(
  GetConversationDialogflowV2beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getConversation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConversationDialogflowV2beta1Result.fromMap);
}

/// Retrieves the specified conversation profile.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2beta1_get_conversation_profile_dialogflow_v2beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConversationProfileDialogflowV2beta1Result> getConversationProfileDialogflowV2beta1(
  GetConversationProfileDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getConversationProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationProfileDialogflowV2beta1Result.fromMap(result);
}

pulumi.Output<GetConversationProfileDialogflowV2beta1Result> getConversationProfileDialogflowV2beta1Output(
  GetConversationProfileDialogflowV2beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getConversationProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConversationProfileDialogflowV2beta1Result.fromMap);
}

/// Retrieves the specified document. Note: The `projects.agent.knowledgeBases.documents` resource is deprecated; only use `projects.knowledgeBases.documents`.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2beta1_get_document_dialogflow_v2beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDocumentDialogflowV2beta1Result> getDocumentDialogflowV2beta1(
  GetDocumentDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentDialogflowV2beta1Result.fromMap(result);
}

pulumi.Output<GetDocumentDialogflowV2beta1Result> getDocumentDialogflowV2beta1Output(
  GetDocumentDialogflowV2beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getDocument',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDocumentDialogflowV2beta1Result.fromMap);
}

/// Retrieves the specified entity type.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2beta1_get_entity_type_dialogflow_v2beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityTypeDialogflowV2beta1Result> getEntityTypeDialogflowV2beta1(
  GetEntityTypeDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeDialogflowV2beta1Result.fromMap(result);
}

pulumi.Output<GetEntityTypeDialogflowV2beta1Result> getEntityTypeDialogflowV2beta1Output(
  GetEntityTypeDialogflowV2beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getEntityType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntityTypeDialogflowV2beta1Result.fromMap);
}

/// Retrieves the specified agent environment.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2beta1_get_environment_dialogflow_v2beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentDialogflowV2beta1Result> getEnvironmentDialogflowV2beta1(
  GetEnvironmentDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentDialogflowV2beta1Result.fromMap(result);
}

pulumi.Output<GetEnvironmentDialogflowV2beta1Result> getEnvironmentDialogflowV2beta1Output(
  GetEnvironmentDialogflowV2beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentDialogflowV2beta1Result.fromMap);
}

/// Retrieves the specified intent.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2beta1_get_intent_dialogflow_v2beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntentDialogflowV2beta1Result> getIntentDialogflowV2beta1(
  GetIntentDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getIntent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntentDialogflowV2beta1Result.fromMap(result);
}

pulumi.Output<GetIntentDialogflowV2beta1Result> getIntentDialogflowV2beta1Output(
  GetIntentDialogflowV2beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getIntent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntentDialogflowV2beta1Result.fromMap);
}

/// Retrieves the specified knowledge base. Note: The `projects.agent.knowledgeBases` resource is deprecated; only use `projects.knowledgeBases`.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2beta1_get_knowledge_base_dialogflow_v2beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKnowledgeBaseDialogflowV2beta1Result> getKnowledgeBaseDialogflowV2beta1(
  GetKnowledgeBaseDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getKnowledgeBase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKnowledgeBaseDialogflowV2beta1Result.fromMap(result);
}

pulumi.Output<GetKnowledgeBaseDialogflowV2beta1Result> getKnowledgeBaseDialogflowV2beta1Output(
  GetKnowledgeBaseDialogflowV2beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getKnowledgeBase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKnowledgeBaseDialogflowV2beta1Result.fromMap);
}

/// Retrieves a conversation participant.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2beta1_get_participant_dialogflow_v2beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetParticipantDialogflowV2beta1Result> getParticipantDialogflowV2beta1(
  GetParticipantDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getParticipant',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParticipantDialogflowV2beta1Result.fromMap(result);
}

pulumi.Output<GetParticipantDialogflowV2beta1Result> getParticipantDialogflowV2beta1Output(
  GetParticipantDialogflowV2beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getParticipant',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetParticipantDialogflowV2beta1Result.fromMap);
}

/// Retrieves the specified session entity type. This method doesn't work with Google Assistant integration. Contact Dialogflow support if you need to use session entities with Google Assistant integration.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2beta1_get_session_entity_type_dialogflow_v2beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSessionEntityTypeDialogflowV2beta1Result> getSessionEntityTypeDialogflowV2beta1(
  GetSessionEntityTypeDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getSessionEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionEntityTypeDialogflowV2beta1Result.fromMap(result);
}

pulumi.Output<GetSessionEntityTypeDialogflowV2beta1Result> getSessionEntityTypeDialogflowV2beta1Output(
  GetSessionEntityTypeDialogflowV2beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getSessionEntityType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSessionEntityTypeDialogflowV2beta1Result.fromMap);
}

/// Retrieves the specified agent version.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v2beta1_get_version_dialogflow_v2beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionDialogflowV2beta1Result> getVersionDialogflowV2beta1(
  GetVersionDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionDialogflowV2beta1Result.fromMap(result);
}

pulumi.Output<GetVersionDialogflowV2beta1Result> getVersionDialogflowV2beta1Output(
  GetVersionDialogflowV2beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVersionDialogflowV2beta1Result.fromMap);
}

/// Retrieves the specified agent.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3_get_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentResult> getAgent(
  GetAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentResult.fromMap(result);
}

pulumi.Output<GetAgentResult> getAgentOutput(
  GetAgentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getAgent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentResult.fromMap);
}

/// Retrieves the specified entity type.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3_get_entity_type_dialogflow_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityTypeDialogflowV3Result> getEntityTypeDialogflowV3(
  GetEntityTypeDialogflowV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeDialogflowV3Result.fromMap(result);
}

pulumi.Output<GetEntityTypeDialogflowV3Result> getEntityTypeDialogflowV3Output(
  GetEntityTypeDialogflowV3Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getEntityType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntityTypeDialogflowV3Result.fromMap);
}

/// Retrieves the specified Environment.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3_get_environment_dialogflow_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentDialogflowV3Result> getEnvironmentDialogflowV3(
  GetEnvironmentDialogflowV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentDialogflowV3Result.fromMap(result);
}

pulumi.Output<GetEnvironmentDialogflowV3Result> getEnvironmentDialogflowV3Output(
  GetEnvironmentDialogflowV3Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentDialogflowV3Result.fromMap);
}

/// Retrieves the specified Experiment.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3_get_experiment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExperimentResult> getExperiment(
  GetExperimentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getExperiment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExperimentResult.fromMap(result);
}

pulumi.Output<GetExperimentResult> getExperimentOutput(
  GetExperimentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getExperiment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExperimentResult.fromMap);
}

/// Retrieves the specified flow.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3_get_flow_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlowResult> getFlow(
  GetFlowArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getFlow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlowResult.fromMap(result);
}

pulumi.Output<GetFlowResult> getFlowOutput(
  GetFlowArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getFlow',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFlowResult.fromMap);
}

/// Retrieves the specified intent.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3_get_intent_dialogflow_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntentDialogflowV3Result> getIntentDialogflowV3(
  GetIntentDialogflowV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getIntent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntentDialogflowV3Result.fromMap(result);
}

pulumi.Output<GetIntentDialogflowV3Result> getIntentDialogflowV3Output(
  GetIntentDialogflowV3Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getIntent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntentDialogflowV3Result.fromMap);
}

/// Retrieves the specified page.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3_get_page_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPageResult> getPage(
  GetPageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getPage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPageResult.fromMap(result);
}

pulumi.Output<GetPageResult> getPageOutput(
  GetPageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getPage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPageResult.fromMap);
}

/// Retrieves the specified SecuritySettings. The returned settings may be stale by up to 1 minute.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3_get_security_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecuritySettingResult> getSecuritySetting(
  GetSecuritySettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getSecuritySetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecuritySettingResult.fromMap(result);
}

pulumi.Output<GetSecuritySettingResult> getSecuritySettingOutput(
  GetSecuritySettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getSecuritySetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecuritySettingResult.fromMap);
}

/// Retrieves the specified session entity type.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3_get_session_entity_type_dialogflow_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSessionEntityTypeDialogflowV3Result> getSessionEntityTypeDialogflowV3(
  GetSessionEntityTypeDialogflowV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getSessionEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionEntityTypeDialogflowV3Result.fromMap(result);
}

pulumi.Output<GetSessionEntityTypeDialogflowV3Result> getSessionEntityTypeDialogflowV3Output(
  GetSessionEntityTypeDialogflowV3Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getSessionEntityType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSessionEntityTypeDialogflowV3Result.fromMap);
}

/// Gets a test case.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3_get_test_case_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTestCaseResult> getTestCase(
  GetTestCaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getTestCase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestCaseResult.fromMap(result);
}

pulumi.Output<GetTestCaseResult> getTestCaseOutput(
  GetTestCaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getTestCase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTestCaseResult.fromMap);
}

/// Retrieves the specified TransitionRouteGroup.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3_get_transition_route_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitionRouteGroupResult> getTransitionRouteGroup(
  GetTransitionRouteGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getTransitionRouteGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitionRouteGroupResult.fromMap(result);
}

pulumi.Output<GetTransitionRouteGroupResult> getTransitionRouteGroupOutput(
  GetTransitionRouteGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getTransitionRouteGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTransitionRouteGroupResult.fromMap);
}

/// Retrieves the specified Version.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3_get_version_dialogflow_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionDialogflowV3Result> getVersionDialogflowV3(
  GetVersionDialogflowV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionDialogflowV3Result.fromMap(result);
}

pulumi.Output<GetVersionDialogflowV3Result> getVersionDialogflowV3Output(
  GetVersionDialogflowV3Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVersionDialogflowV3Result.fromMap);
}

/// Retrieves the specified webhook.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3_get_webhook_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebhookResult> getWebhook(
  GetWebhookArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getWebhook',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebhookResult.fromMap(result);
}

pulumi.Output<GetWebhookResult> getWebhookOutput(
  GetWebhookArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getWebhook',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebhookResult.fromMap);
}

/// Retrieves the specified agent.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3beta1_get_agent_dialogflow_v3beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentDialogflowV3beta1Result> getAgentDialogflowV3beta1(
  GetAgentDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentDialogflowV3beta1Result.fromMap(result);
}

pulumi.Output<GetAgentDialogflowV3beta1Result> getAgentDialogflowV3beta1Output(
  GetAgentDialogflowV3beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getAgent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentDialogflowV3beta1Result.fromMap);
}

/// Retrieves the specified entity type.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3beta1_get_entity_type_dialogflow_v3beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityTypeDialogflowV3beta1Result> getEntityTypeDialogflowV3beta1(
  GetEntityTypeDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeDialogflowV3beta1Result.fromMap(result);
}

pulumi.Output<GetEntityTypeDialogflowV3beta1Result> getEntityTypeDialogflowV3beta1Output(
  GetEntityTypeDialogflowV3beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getEntityType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntityTypeDialogflowV3beta1Result.fromMap);
}

/// Retrieves the specified Environment.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3beta1_get_environment_dialogflow_v3beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentDialogflowV3beta1Result> getEnvironmentDialogflowV3beta1(
  GetEnvironmentDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentDialogflowV3beta1Result.fromMap(result);
}

pulumi.Output<GetEnvironmentDialogflowV3beta1Result> getEnvironmentDialogflowV3beta1Output(
  GetEnvironmentDialogflowV3beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentDialogflowV3beta1Result.fromMap);
}

/// Retrieves the specified Experiment.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3beta1_get_experiment_dialogflow_v3beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExperimentDialogflowV3beta1Result> getExperimentDialogflowV3beta1(
  GetExperimentDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getExperiment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExperimentDialogflowV3beta1Result.fromMap(result);
}

pulumi.Output<GetExperimentDialogflowV3beta1Result> getExperimentDialogflowV3beta1Output(
  GetExperimentDialogflowV3beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getExperiment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExperimentDialogflowV3beta1Result.fromMap);
}

/// Retrieves the specified flow.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3beta1_get_flow_dialogflow_v3beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlowDialogflowV3beta1Result> getFlowDialogflowV3beta1(
  GetFlowDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getFlow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlowDialogflowV3beta1Result.fromMap(result);
}

pulumi.Output<GetFlowDialogflowV3beta1Result> getFlowDialogflowV3beta1Output(
  GetFlowDialogflowV3beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getFlow',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFlowDialogflowV3beta1Result.fromMap);
}

/// Retrieves the specified intent.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3beta1_get_intent_dialogflow_v3beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntentDialogflowV3beta1Result> getIntentDialogflowV3beta1(
  GetIntentDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getIntent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntentDialogflowV3beta1Result.fromMap(result);
}

pulumi.Output<GetIntentDialogflowV3beta1Result> getIntentDialogflowV3beta1Output(
  GetIntentDialogflowV3beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getIntent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntentDialogflowV3beta1Result.fromMap);
}

/// Retrieves the specified page.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3beta1_get_page_dialogflow_v3beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPageDialogflowV3beta1Result> getPageDialogflowV3beta1(
  GetPageDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getPage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPageDialogflowV3beta1Result.fromMap(result);
}

pulumi.Output<GetPageDialogflowV3beta1Result> getPageDialogflowV3beta1Output(
  GetPageDialogflowV3beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getPage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPageDialogflowV3beta1Result.fromMap);
}

/// Retrieves the specified SecuritySettings. The returned settings may be stale by up to 1 minute.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3beta1_get_security_setting_dialogflow_v3beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecuritySettingDialogflowV3beta1Result> getSecuritySettingDialogflowV3beta1(
  GetSecuritySettingDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getSecuritySetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecuritySettingDialogflowV3beta1Result.fromMap(result);
}

pulumi.Output<GetSecuritySettingDialogflowV3beta1Result> getSecuritySettingDialogflowV3beta1Output(
  GetSecuritySettingDialogflowV3beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getSecuritySetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecuritySettingDialogflowV3beta1Result.fromMap);
}

/// Retrieves the specified session entity type.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3beta1_get_session_entity_type_dialogflow_v3beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSessionEntityTypeDialogflowV3beta1Result> getSessionEntityTypeDialogflowV3beta1(
  GetSessionEntityTypeDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getSessionEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionEntityTypeDialogflowV3beta1Result.fromMap(result);
}

pulumi.Output<GetSessionEntityTypeDialogflowV3beta1Result> getSessionEntityTypeDialogflowV3beta1Output(
  GetSessionEntityTypeDialogflowV3beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getSessionEntityType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSessionEntityTypeDialogflowV3beta1Result.fromMap);
}

/// Gets a test case.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3beta1_get_test_case_dialogflow_v3beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTestCaseDialogflowV3beta1Result> getTestCaseDialogflowV3beta1(
  GetTestCaseDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getTestCase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestCaseDialogflowV3beta1Result.fromMap(result);
}

pulumi.Output<GetTestCaseDialogflowV3beta1Result> getTestCaseDialogflowV3beta1Output(
  GetTestCaseDialogflowV3beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getTestCase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTestCaseDialogflowV3beta1Result.fromMap);
}

/// Retrieves the specified TransitionRouteGroup.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3beta1_get_transition_route_group_dialogflow_v3beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitionRouteGroupDialogflowV3beta1Result> getTransitionRouteGroupDialogflowV3beta1(
  GetTransitionRouteGroupDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getTransitionRouteGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitionRouteGroupDialogflowV3beta1Result.fromMap(result);
}

pulumi.Output<GetTransitionRouteGroupDialogflowV3beta1Result> getTransitionRouteGroupDialogflowV3beta1Output(
  GetTransitionRouteGroupDialogflowV3beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getTransitionRouteGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTransitionRouteGroupDialogflowV3beta1Result.fromMap);
}

/// Retrieves the specified Version.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3beta1_get_version_dialogflow_v3beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionDialogflowV3beta1Result> getVersionDialogflowV3beta1(
  GetVersionDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionDialogflowV3beta1Result.fromMap(result);
}

pulumi.Output<GetVersionDialogflowV3beta1Result> getVersionDialogflowV3beta1Output(
  GetVersionDialogflowV3beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVersionDialogflowV3beta1Result.fromMap);
}

/// Retrieves the specified webhook.
/// [args] Arguments passed to this invoke. {@macro pulumi_dialogflow_v3beta1_get_webhook_dialogflow_v3beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebhookDialogflowV3beta1Result> getWebhookDialogflowV3beta1(
  GetWebhookDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getWebhook',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebhookDialogflowV3beta1Result.fromMap(result);
}

pulumi.Output<GetWebhookDialogflowV3beta1Result> getWebhookDialogflowV3beta1Output(
  GetWebhookDialogflowV3beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getWebhook',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebhookDialogflowV3beta1Result.fromMap);
}
