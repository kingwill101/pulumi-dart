import 'package:pulumi/pulumi.dart' as pulumi;
import 'invoke_args.dart';
import 'invoke_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_index_invoke_args_doc}
/// [options] Invoke options controlling this call.
Future<InvokeResult> invoke(
  InvokeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'primitive:index:invoke',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return InvokeResult.fromMap(result);
}

pulumi.Output<InvokeResult> invokeOutput(
  InvokeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'primitive:index:invoke',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(InvokeResult.fromMap);
}
