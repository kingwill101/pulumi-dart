import 'package:pulumi/pulumi.dart' as pulumi;
import 'refs_args.dart';
import 'refs_result.dart';

/// The `refs` method of the `Component` component resource. Returns the call request's property dependencies.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_refs_args_doc}
/// [options] Invoke options controlling this call.
Future<RefsResult> refs(
  RefsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'component-property-deps:index:Component/refs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return RefsResult.fromMap(result);
}

pulumi.Output<RefsResult> refsOutput(
  RefsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'component-property-deps:index:Component/refs',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(RefsResult.fromMap);
}
