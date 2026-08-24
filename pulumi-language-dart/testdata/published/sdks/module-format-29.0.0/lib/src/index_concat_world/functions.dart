import 'package:pulumi/pulumi.dart' as pulumi;
import 'concat_world_args.dart';
import 'concat_world_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_index_concat_world_concat_world_args_doc}
/// [options] Invoke options controlling this call.
Future<ConcatWorldResult> concatWorld(
  ConcatWorldArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'module-format:index_concatWorld:concatWorld',
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
    'module-format:index_concatWorld:concatWorld',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ConcatWorldResult.fromMap);
}
