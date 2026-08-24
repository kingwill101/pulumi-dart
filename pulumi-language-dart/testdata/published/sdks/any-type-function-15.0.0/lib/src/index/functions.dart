import 'package:pulumi/pulumi.dart' as pulumi;
import 'dyn_list_to_dyn_args.dart';
import 'dyn_list_to_dyn_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_index_dyn_list_to_dyn_args_doc}
/// [options] Invoke options controlling this call.
Future<DynListToDynResult> dynListToDyn(
  DynListToDynArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'any-type-function:index:dynListToDyn',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return DynListToDynResult.fromMap(result);
}

pulumi.Output<DynListToDynResult> dynListToDynOutput(
  DynListToDynArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'any-type-function:index:dynListToDyn',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(DynListToDynResult.fromMap);
}
