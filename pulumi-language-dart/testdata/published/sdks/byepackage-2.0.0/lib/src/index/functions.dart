import 'package:pulumi/pulumi.dart' as pulumi;
import 'do_goodbye_world_args.dart';
import 'do_goodbye_world_result.dart';
import '../internal/package_registration.dart' as package_registration;

/// [args] Arguments passed to this invoke. {@macro pulumi_index_do_goodbye_world_args_doc}
/// [options] Invoke options controlling this call.
Future<DoGoodbyeWorldResult> doGoodbyeWorld(
  DoGoodbyeWorldArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'byepackage:index:doGoodbyeWorld',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
    registerPackageRequest: package_registration.registerPackageRequest,
  );
  return DoGoodbyeWorldResult.fromMap(result);
}

pulumi.Output<DoGoodbyeWorldResult> doGoodbyeWorldOutput(
  DoGoodbyeWorldArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'byepackage:index:doGoodbyeWorld',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
    registerPackageRequest: package_registration.registerPackageRequest,
  ).apply(DoGoodbyeWorldResult.fromMap);
}
