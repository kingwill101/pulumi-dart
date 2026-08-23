import 'package:pulumi/pulumi.dart' as pulumi;
import 'call_args.dart';
import 'call_index_mine_args.dart';
import 'call_index_mine_result.dart';
import 'call_result.dart';
import 'concat_world_args.dart';
import 'concat_world_index_mine_args.dart';
import 'concat_world_index_mine_result.dart';
import 'concat_world_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_index_mine_nested_call_args_doc}
/// [options] Invoke options controlling this call.
Future<CallResult> call(
  CallArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'index-mod:indexMine/nested:Resource/call',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return CallResult.fromMap(result);
}

pulumi.Output<CallResult> callOutput(
  CallArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'index-mod:indexMine/nested:Resource/call',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(CallResult.fromMap);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_mine_nested_concat_world_args_doc}
/// [options] Invoke options controlling this call.
Future<ConcatWorldResult> concatWorld(
  ConcatWorldArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'index-mod:indexMine/nested:concatWorld',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ConcatWorldResult.fromMap(result);
}

pulumi.Output<ConcatWorldResult> concatWorldOutput(
  ConcatWorldArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'index-mod:indexMine/nested:concatWorld',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ConcatWorldResult.fromMap);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_mine_call_index_mine_args_doc}
/// [options] Invoke options controlling this call.
Future<CallIndexMineResult> callIndexMine(
  CallIndexMineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'index-mod:indexMine:Resource/call',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return CallIndexMineResult.fromMap(result);
}

pulumi.Output<CallIndexMineResult> callIndexMineOutput(
  CallIndexMineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'index-mod:indexMine:Resource/call',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(CallIndexMineResult.fromMap);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_mine_concat_world_index_mine_args_doc}
/// [options] Invoke options controlling this call.
Future<ConcatWorldIndexMineResult> concatWorldIndexMine(
  ConcatWorldIndexMineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'index-mod:indexMine:concatWorld',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ConcatWorldIndexMineResult.fromMap(result);
}

pulumi.Output<ConcatWorldIndexMineResult> concatWorldIndexMineOutput(
  ConcatWorldIndexMineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'index-mod:indexMine:concatWorld',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ConcatWorldIndexMineResult.fromMap);
}
