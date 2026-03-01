import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lineage_event_args.dart';
import 'get_lineage_event_result.dart';
import 'get_process_args.dart';
import 'get_process_result.dart';
import 'get_run_args.dart';
import 'get_run_result.dart';

/// Gets details of a specified lineage event.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalineage_v1_get_lineage_event_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLineageEventResult> getLineageEvent(
  GetLineageEventArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalineage/v1:getLineageEvent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLineageEventResult.fromMap(result);
}

/// Gets the details of the specified process.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalineage_v1_get_process_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProcessResult> getProcess(
  GetProcessArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalineage/v1:getProcess',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProcessResult.fromMap(result);
}

/// Gets the details of the specified run.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalineage_v1_get_run_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRunResult> getRun(
  GetRunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalineage/v1:getRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRunResult.fromMap(result);
}
