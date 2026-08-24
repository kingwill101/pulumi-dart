import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_invoke_scalar_args.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_index_my_invoke_scalar_args_doc}
/// [options] Invoke options controlling this call.
Future<bool> myInvokeScalar(
  MyInvokeScalarArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final value = await deployment.invokeSingle<dynamic>(
    'simple-invoke-with-scalar-return:index:myInvokeScalar',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return value as bool;
}

pulumi.Output<bool> myInvokeScalarOutput(
  MyInvokeScalarArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeSingleOutput<dynamic>(
    'simple-invoke-with-scalar-return:index:myInvokeScalar',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply<bool>((value) => value as bool);
}
