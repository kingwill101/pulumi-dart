import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_conversation_args.dart';
import 'get_conversation_discoveryengine_v1beta_args.dart';
import 'get_conversation_discoveryengine_v1beta_result.dart';
import 'get_conversation_result.dart';
import 'get_data_store_args.dart';
import 'get_data_store_result.dart';
import 'get_document_args.dart';
import 'get_document_discoveryengine_v1beta_args.dart';
import 'get_document_discoveryengine_v1beta_result.dart';
import 'get_document_result.dart';
import 'get_engine_args.dart';
import 'get_engine_result.dart';
import 'get_schema_args.dart';
import 'get_schema_discoveryengine_v1beta_args.dart';
import 'get_schema_discoveryengine_v1beta_result.dart';
import 'get_schema_result.dart';

/// Gets a Conversation.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1alpha_get_conversation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConversationResult> getConversation(
  GetConversationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getConversation',
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
    'google-native:discoveryengine/v1alpha:getConversation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConversationResult.fromMap);
}

/// Gets a DataStore.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1alpha_get_data_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataStoreResult> getDataStore(
  GetDataStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getDataStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataStoreResult.fromMap(result);
}

pulumi.Output<GetDataStoreResult> getDataStoreOutput(
  GetDataStoreArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getDataStore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataStoreResult.fromMap);
}

/// Gets a Document.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1alpha_get_document_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDocumentResult> getDocument(
  GetDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getDocument',
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
    'google-native:discoveryengine/v1alpha:getDocument',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDocumentResult.fromMap);
}

/// Gets a Engine.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1alpha_get_engine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEngineResult> getEngine(
  GetEngineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getEngine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEngineResult.fromMap(result);
}

pulumi.Output<GetEngineResult> getEngineOutput(
  GetEngineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getEngine',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEngineResult.fromMap);
}

/// Gets a Schema.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1alpha_get_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchemaResult> getSchema(
  GetSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchemaResult.fromMap(result);
}

pulumi.Output<GetSchemaResult> getSchemaOutput(
  GetSchemaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getSchema',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSchemaResult.fromMap);
}

/// Gets a Conversation.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1beta_get_conversation_discoveryengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConversationDiscoveryengineV1betaResult> getConversationDiscoveryengineV1beta(
  GetConversationDiscoveryengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1beta:getConversation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationDiscoveryengineV1betaResult.fromMap(result);
}

pulumi.Output<GetConversationDiscoveryengineV1betaResult> getConversationDiscoveryengineV1betaOutput(
  GetConversationDiscoveryengineV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:discoveryengine/v1beta:getConversation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConversationDiscoveryengineV1betaResult.fromMap);
}

/// Gets a Document.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1beta_get_document_discoveryengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDocumentDiscoveryengineV1betaResult> getDocumentDiscoveryengineV1beta(
  GetDocumentDiscoveryengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1beta:getDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentDiscoveryengineV1betaResult.fromMap(result);
}

pulumi.Output<GetDocumentDiscoveryengineV1betaResult> getDocumentDiscoveryengineV1betaOutput(
  GetDocumentDiscoveryengineV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:discoveryengine/v1beta:getDocument',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDocumentDiscoveryengineV1betaResult.fromMap);
}

/// Gets a Schema.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1beta_get_schema_discoveryengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchemaDiscoveryengineV1betaResult> getSchemaDiscoveryengineV1beta(
  GetSchemaDiscoveryengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1beta:getSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchemaDiscoveryengineV1betaResult.fromMap(result);
}

pulumi.Output<GetSchemaDiscoveryengineV1betaResult> getSchemaDiscoveryengineV1betaOutput(
  GetSchemaDiscoveryengineV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:discoveryengine/v1beta:getSchema',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSchemaDiscoveryengineV1betaResult.fromMap);
}
