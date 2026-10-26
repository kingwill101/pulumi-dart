import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_document_args.dart';
import 'get_document_result.dart';
import 'get_document_schema_args.dart';
import 'get_document_schema_result.dart';
import 'get_rule_set_args.dart';
import 'get_rule_set_result.dart';
import 'get_synonym_set_args.dart';
import 'get_synonym_set_result.dart';

/// Gets a document. Returns NOT_FOUND if the document does not exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_contentwarehouse_v1_get_document_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDocumentResult> getDocument(
  GetDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contentwarehouse/v1:getDocument',
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
    'google-native:contentwarehouse/v1:getDocument',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDocumentResult.fromMap);
}

/// Gets a document schema. Returns NOT_FOUND if the document schema does not exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_contentwarehouse_v1_get_document_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDocumentSchemaResult> getDocumentSchema(
  GetDocumentSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contentwarehouse/v1:getDocumentSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentSchemaResult.fromMap(result);
}

pulumi.Output<GetDocumentSchemaResult> getDocumentSchemaOutput(
  GetDocumentSchemaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:contentwarehouse/v1:getDocumentSchema',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDocumentSchemaResult.fromMap);
}

/// Gets a ruleset. Returns NOT_FOUND if the ruleset does not exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_contentwarehouse_v1_get_rule_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuleSetResult> getRuleSet(
  GetRuleSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contentwarehouse/v1:getRuleSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleSetResult.fromMap(result);
}

pulumi.Output<GetRuleSetResult> getRuleSetOutput(
  GetRuleSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:contentwarehouse/v1:getRuleSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRuleSetResult.fromMap);
}

/// Gets a SynonymSet for a particular context. Throws a NOT_FOUND exception if the Synonymset does not exist
/// [args] Arguments passed to this invoke. {@macro pulumi_contentwarehouse_v1_get_synonym_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSynonymSetResult> getSynonymSet(
  GetSynonymSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contentwarehouse/v1:getSynonymSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSynonymSetResult.fromMap(result);
}

pulumi.Output<GetSynonymSetResult> getSynonymSetOutput(
  GetSynonymSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:contentwarehouse/v1:getSynonymSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSynonymSetResult.fromMap);
}
