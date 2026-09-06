import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_modeling_args.dart';
import 'get_modeling_result.dart';
import 'get_service_endpoint_args.dart';
import 'get_service_endpoint_result.dart';

/// Returns RecommendationsService Account resource for a given name.
///
/// Uses Azure REST API version 2022-03-01-preview.
///
/// Other available API versions: 2022-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recommendationsservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recommendationsservice_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recommendationsservice:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

pulumi.Output<GetAccountResult> getAccountOutput(
  GetAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:recommendationsservice:getAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccountResult.fromMap);
}

/// Returns Modeling resources for a given name.
///
/// Uses Azure REST API version 2022-03-01-preview.
///
/// Other available API versions: 2022-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recommendationsservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recommendationsservice_get_modeling_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelingResult> getModeling(
  GetModelingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recommendationsservice:getModeling',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelingResult.fromMap(result);
}

pulumi.Output<GetModelingResult> getModelingOutput(
  GetModelingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:recommendationsservice:getModeling',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetModelingResult.fromMap);
}

/// Returns ServiceEndpoint resources for a given name.
///
/// Uses Azure REST API version 2022-03-01-preview.
///
/// Other available API versions: 2022-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recommendationsservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recommendationsservice_get_service_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceEndpointResult> getServiceEndpoint(
  GetServiceEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recommendationsservice:getServiceEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceEndpointResult.fromMap(result);
}

pulumi.Output<GetServiceEndpointResult> getServiceEndpointOutput(
  GetServiceEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:recommendationsservice:getServiceEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceEndpointResult.fromMap);
}
