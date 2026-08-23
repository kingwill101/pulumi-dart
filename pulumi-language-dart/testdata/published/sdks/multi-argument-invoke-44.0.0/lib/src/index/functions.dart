import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_argument_invoke_args.dart';
import 'multi_argument_invoke_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_index_multi_argument_invoke_args_doc}
/// [first] Value for the `first` invoke input.
/// [second] Value for the `second` invoke input.
/// [options] Invoke options controlling this call.
Future<MultiArgumentInvokeResult> multiArgumentInvoke(
  pulumi.Input<String> first,
  pulumi.Input<String?>? second,
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'multi-argument-invoke:index:multiArgumentInvoke',
    MultiArgumentInvokeArgs(first: first, second: second, ).toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return MultiArgumentInvokeResult.fromMap(result);
}

pulumi.Output<MultiArgumentInvokeResult> multiArgumentInvokeOutput(
  pulumi.Input<String> first,
  pulumi.Input<String?>? second,
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'multi-argument-invoke:index:multiArgumentInvoke',
    pulumi.Input.mapToInputs(MultiArgumentInvokeArgs(first: first, second: second, ).toMap()),
    options: options,
  ).apply(MultiArgumentInvokeResult.fromMap);
}
