import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_args.dart';
import 'get_gateway_result.dart';
import 'get_operator_api_connection_args.dart';
import 'get_operator_api_connection_result.dart';

/// Get a Gateway resource by name.
///
/// Uses Azure REST API version 2024-01-15-preview.
///
/// Other available API versions: 2025-03-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native programmableconnectivity [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_programmableconnectivity_get_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayResult> getGateway(
  GetGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:programmableconnectivity:getGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayResult.fromMap(result);
}

pulumi.Output<GetGatewayResult> getGatewayOutput(
  GetGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:programmableconnectivity:getGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayResult.fromMap);
}

/// Get an Operator API Connection.
///
/// Uses Azure REST API version 2024-01-15-preview.
///
/// Other available API versions: 2025-03-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native programmableconnectivity [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_programmableconnectivity_get_operator_api_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOperatorApiConnectionResult> getOperatorApiConnection(
  GetOperatorApiConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:programmableconnectivity:getOperatorApiConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOperatorApiConnectionResult.fromMap(result);
}

pulumi.Output<GetOperatorApiConnectionResult> getOperatorApiConnectionOutput(
  GetOperatorApiConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:programmableconnectivity:getOperatorApiConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOperatorApiConnectionResult.fromMap);
}
