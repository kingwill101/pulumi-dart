import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_azure_traffic_collector_args.dart';
import 'get_azure_traffic_collector_result.dart';
import 'get_collector_policy_args.dart';
import 'get_collector_policy_result.dart';

/// Gets the specified Azure Traffic Collector in a specified resource group
///
/// Uses Azure REST API version 2022-11-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkfunction_get_azure_traffic_collector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAzureTrafficCollectorResult> getAzureTrafficCollector(
  GetAzureTrafficCollectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkfunction:getAzureTrafficCollector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAzureTrafficCollectorResult.fromMap(result);
}

pulumi.Output<GetAzureTrafficCollectorResult> getAzureTrafficCollectorOutput(
  GetAzureTrafficCollectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkfunction:getAzureTrafficCollector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAzureTrafficCollectorResult.fromMap);
}

/// Gets the collector policy in a specified Traffic Collector
///
/// Uses Azure REST API version 2022-11-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkfunction_get_collector_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCollectorPolicyResult> getCollectorPolicy(
  GetCollectorPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkfunction:getCollectorPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCollectorPolicyResult.fromMap(result);
}

pulumi.Output<GetCollectorPolicyResult> getCollectorPolicyOutput(
  GetCollectorPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkfunction:getCollectorPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCollectorPolicyResult.fromMap);
}
