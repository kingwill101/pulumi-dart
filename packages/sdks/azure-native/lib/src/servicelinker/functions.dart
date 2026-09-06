import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connector_args.dart';
import 'get_connector_dryrun_args.dart';
import 'get_connector_dryrun_result.dart';
import 'get_connector_result.dart';
import 'get_linker_args.dart';
import 'get_linker_dryrun_args.dart';
import 'get_linker_dryrun_result.dart';
import 'get_linker_result.dart';
import 'list_linker_configurations_args.dart';
import 'list_linker_configurations_result.dart';

/// Returns Connector resource for a given name.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01-preview, 2024-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicelinker [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicelinker_get_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectorResult> getConnector(
  GetConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicelinker:getConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult.fromMap(result);
}

pulumi.Output<GetConnectorResult> getConnectorOutput(
  GetConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicelinker:getConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectorResult.fromMap);
}

/// get a dryrun job
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01-preview, 2024-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicelinker [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicelinker_get_connector_dryrun_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectorDryrunResult> getConnectorDryrun(
  GetConnectorDryrunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicelinker:getConnectorDryrun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorDryrunResult.fromMap(result);
}

pulumi.Output<GetConnectorDryrunResult> getConnectorDryrunOutput(
  GetConnectorDryrunArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicelinker:getConnectorDryrun',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectorDryrunResult.fromMap);
}

/// Returns Linker resource for a given name.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01-preview, 2024-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicelinker [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicelinker_get_linker_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinkerResult> getLinker(
  GetLinkerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicelinker:getLinker',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinkerResult.fromMap(result);
}

pulumi.Output<GetLinkerResult> getLinkerOutput(
  GetLinkerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicelinker:getLinker',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLinkerResult.fromMap);
}

/// get a dryrun job
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01-preview, 2024-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicelinker [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicelinker_get_linker_dryrun_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinkerDryrunResult> getLinkerDryrun(
  GetLinkerDryrunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicelinker:getLinkerDryrun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinkerDryrunResult.fromMap(result);
}

pulumi.Output<GetLinkerDryrunResult> getLinkerDryrunOutput(
  GetLinkerDryrunArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicelinker:getLinkerDryrun',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLinkerDryrunResult.fromMap);
}

/// list source configurations for a Linker.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01-preview, 2024-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicelinker [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicelinker_list_linker_configurations_args_doc}
/// [options] Invoke options controlling this call.
Future<ListLinkerConfigurationsResult> listLinkerConfigurations(
  ListLinkerConfigurationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicelinker:listLinkerConfigurations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListLinkerConfigurationsResult.fromMap(result);
}

pulumi.Output<ListLinkerConfigurationsResult> listLinkerConfigurationsOutput(
  ListLinkerConfigurationsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicelinker:listLinkerConfigurations',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListLinkerConfigurationsResult.fromMap);
}
