import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disk_pool_args.dart';
import 'get_disk_pool_result.dart';
import 'get_iscsi_target_args.dart';
import 'get_iscsi_target_result.dart';

/// Get a Disk pool.
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagepool_get_disk_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskPoolResult> getDiskPool(
  GetDiskPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagepool:getDiskPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskPoolResult.fromMap(result);
}

pulumi.Output<GetDiskPoolResult> getDiskPoolOutput(
  GetDiskPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:storagepool:getDiskPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDiskPoolResult.fromMap);
}

/// Get an iSCSI Target.
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagepool_get_iscsi_target_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIscsiTargetResult> getIscsiTarget(
  GetIscsiTargetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagepool:getIscsiTarget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIscsiTargetResult.fromMap(result);
}

pulumi.Output<GetIscsiTargetResult> getIscsiTargetOutput(
  GetIscsiTargetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:storagepool:getIscsiTarget',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIscsiTargetResult.fromMap);
}
