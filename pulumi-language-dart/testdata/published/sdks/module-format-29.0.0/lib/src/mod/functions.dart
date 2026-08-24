import 'package:pulumi/pulumi.dart' as pulumi;
import 'call_args.dart';
import 'call_result.dart';
import 'concat_world_args.dart';
import 'concat_world_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_mod_nested_resource_call_args_doc}
/// [options] Invoke options controlling this call.
Future<CallResult> call(
  CallArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'module-format:mod/nested_Resource:Resource/call',
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
    'module-format:mod/nested_Resource:Resource/call',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(CallResult.fromMap);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_mod_nested_concat_world_concat_world_args_doc}
/// [options] Invoke options controlling this call.
Future<ConcatWorldResult> concatWorld(
  ConcatWorldArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'module-format:mod/nested_concatWorld:concatWorld',
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
    'module-format:mod/nested_concatWorld:concatWorld',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ConcatWorldResult.fromMap);
}
