import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_energy_service_args.dart';
import 'get_energy_service_result.dart';
import 'list_energy_service_partitions_args.dart';
import 'list_energy_service_partitions_result.dart';

/// Returns oep resource for a given name.
///
/// Uses Azure REST API version 2022-04-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_openenergyplatform_get_energy_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnergyServiceResult> getEnergyService(
  GetEnergyServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:openenergyplatform:getEnergyService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnergyServiceResult.fromMap(result);
}

pulumi.Output<GetEnergyServiceResult> getEnergyServiceOutput(
  GetEnergyServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:openenergyplatform:getEnergyService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnergyServiceResult.fromMap);
}

/// Method that gets called when list of partitions is requested.
///
/// Uses Azure REST API version 2022-04-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_openenergyplatform_list_energy_service_partitions_args_doc}
/// [options] Invoke options controlling this call.
Future<ListEnergyServicePartitionsResult> listEnergyServicePartitions(
  ListEnergyServicePartitionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:openenergyplatform:listEnergyServicePartitions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListEnergyServicePartitionsResult.fromMap(result);
}

pulumi.Output<ListEnergyServicePartitionsResult> listEnergyServicePartitionsOutput(
  ListEnergyServicePartitionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:openenergyplatform:listEnergyServicePartitions',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListEnergyServicePartitionsResult.fromMap);
}
