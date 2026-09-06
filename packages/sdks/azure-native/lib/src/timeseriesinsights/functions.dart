import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_policy_args.dart';
import 'get_access_policy_result.dart';
import 'get_event_hub_event_source_args.dart';
import 'get_event_hub_event_source_result.dart';
import 'get_gen1_environment_args.dart';
import 'get_gen1_environment_result.dart';
import 'get_gen2_environment_args.dart';
import 'get_gen2_environment_result.dart';
import 'get_io_thub_event_source_args.dart';
import 'get_io_thub_event_source_result.dart';
import 'get_reference_data_set_args.dart';
import 'get_reference_data_set_result.dart';

/// Gets the access policy with the specified name in the specified environment.
///
/// Uses Azure REST API version 2020-05-15.
///
/// Other available API versions: 2021-03-31-preview, 2021-06-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native timeseriesinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_timeseriesinsights_get_access_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPolicyResult> getAccessPolicy(
  GetAccessPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:timeseriesinsights:getAccessPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyResult.fromMap(result);
}

pulumi.Output<GetAccessPolicyResult> getAccessPolicyOutput(
  GetAccessPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:timeseriesinsights:getAccessPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccessPolicyResult.fromMap);
}

/// Gets the event source with the specified name in the specified environment.
///
/// Uses Azure REST API version 2020-05-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_timeseriesinsights_get_event_hub_event_source_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventHubEventSourceResult> getEventHubEventSource(
  GetEventHubEventSourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:timeseriesinsights:getEventHubEventSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventHubEventSourceResult.fromMap(result);
}

pulumi.Output<GetEventHubEventSourceResult> getEventHubEventSourceOutput(
  GetEventHubEventSourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:timeseriesinsights:getEventHubEventSource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEventHubEventSourceResult.fromMap);
}

/// Gets the environment with the specified name in the specified subscription and resource group.
///
/// Uses Azure REST API version 2020-05-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_timeseriesinsights_get_gen1_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGen1EnvironmentResult> getGen1Environment(
  GetGen1EnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:timeseriesinsights:getGen1Environment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGen1EnvironmentResult.fromMap(result);
}

pulumi.Output<GetGen1EnvironmentResult> getGen1EnvironmentOutput(
  GetGen1EnvironmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:timeseriesinsights:getGen1Environment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGen1EnvironmentResult.fromMap);
}

/// Gets the environment with the specified name in the specified subscription and resource group.
///
/// Uses Azure REST API version 2020-05-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_timeseriesinsights_get_gen2_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGen2EnvironmentResult> getGen2Environment(
  GetGen2EnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:timeseriesinsights:getGen2Environment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGen2EnvironmentResult.fromMap(result);
}

pulumi.Output<GetGen2EnvironmentResult> getGen2EnvironmentOutput(
  GetGen2EnvironmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:timeseriesinsights:getGen2Environment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGen2EnvironmentResult.fromMap);
}

/// Gets the event source with the specified name in the specified environment.
///
/// Uses Azure REST API version 2020-05-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_timeseriesinsights_get_io_thub_event_source_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIoTHubEventSourceResult> getIoTHubEventSource(
  GetIoTHubEventSourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:timeseriesinsights:getIoTHubEventSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIoTHubEventSourceResult.fromMap(result);
}

pulumi.Output<GetIoTHubEventSourceResult> getIoTHubEventSourceOutput(
  GetIoTHubEventSourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:timeseriesinsights:getIoTHubEventSource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIoTHubEventSourceResult.fromMap);
}

/// Gets the reference data set with the specified name in the specified environment.
///
/// Uses Azure REST API version 2020-05-15.
///
/// Other available API versions: 2021-03-31-preview, 2021-06-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native timeseriesinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_timeseriesinsights_get_reference_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReferenceDataSetResult> getReferenceDataSet(
  GetReferenceDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:timeseriesinsights:getReferenceDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReferenceDataSetResult.fromMap(result);
}

pulumi.Output<GetReferenceDataSetResult> getReferenceDataSetOutput(
  GetReferenceDataSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:timeseriesinsights:getReferenceDataSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReferenceDataSetResult.fromMap);
}
