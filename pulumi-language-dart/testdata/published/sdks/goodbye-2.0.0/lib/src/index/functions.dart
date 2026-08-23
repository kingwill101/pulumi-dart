import 'package:pulumi/pulumi.dart' as pulumi;
import 'do_goodbye_args.dart';
import 'do_goodbye_result.dart';
import '../internal/package_registration.dart' as package_registration;

/// [args] Arguments passed to this invoke. {@macro pulumi_index_do_goodbye_args_doc}
/// [options] Invoke options controlling this call.
Future<DoGoodbyeResult> doGoodbye(
  DoGoodbyeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'goodbye:index:doGoodbye',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
    registerPackageRequest: package_registration.registerPackageRequest,
  );
  return DoGoodbyeResult.fromMap(result);
}

pulumi.Output<DoGoodbyeResult> doGoodbyeOutput(
  DoGoodbyeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'goodbye:index:doGoodbye',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
    registerPackageRequest: package_registration.registerPackageRequest,
  ).apply(DoGoodbyeResult.fromMap);
}
