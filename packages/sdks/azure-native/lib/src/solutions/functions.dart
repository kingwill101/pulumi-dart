import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_args.dart';
import 'get_application_definition_args.dart';
import 'get_application_definition_result.dart';
import 'get_application_result.dart';
import 'get_jit_request_args.dart';
import 'get_jit_request_result.dart';
import 'list_application_allowed_upgrade_plans_args.dart';
import 'list_application_allowed_upgrade_plans_result.dart';
import 'list_application_tokens_args.dart';
import 'list_application_tokens_result.dart';

/// Gets the managed application.
///
/// Uses Azure REST API version 2021-07-01.
///
/// Other available API versions: 2023-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native solutions [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_solutions_get_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:solutions:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}

/// Gets the managed application definition.
///
/// Uses Azure REST API version 2021-07-01.
///
/// Other available API versions: 2023-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native solutions [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_solutions_get_application_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationDefinitionResult> getApplicationDefinition(
  GetApplicationDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:solutions:getApplicationDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationDefinitionResult.fromMap(result);
}

/// Gets the JIT request.
///
/// Uses Azure REST API version 2021-07-01.
///
/// Other available API versions: 2023-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native solutions [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_solutions_get_jit_request_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJitRequestResult> getJitRequest(
  GetJitRequestArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:solutions:getJitRequest',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJitRequestResult.fromMap(result);
}

/// List allowed upgrade plans for application.
///
/// Uses Azure REST API version 2021-07-01.
///
/// Other available API versions: 2023-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native solutions [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_solutions_list_application_allowed_upgrade_plans_args_doc}
/// [options] Invoke options controlling this call.
Future<ListApplicationAllowedUpgradePlansResult>
listApplicationAllowedUpgradePlans(
  ListApplicationAllowedUpgradePlansArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:solutions:listApplicationAllowedUpgradePlans',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListApplicationAllowedUpgradePlansResult.fromMap(result);
}

/// List tokens for application.
///
/// Uses Azure REST API version 2021-07-01.
///
/// Other available API versions: 2023-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native solutions [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_solutions_list_application_tokens_args_doc}
/// [options] Invoke options controlling this call.
Future<ListApplicationTokensResult> listApplicationTokens(
  ListApplicationTokensArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:solutions:listApplicationTokens',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListApplicationTokensResult.fromMap(result);
}
