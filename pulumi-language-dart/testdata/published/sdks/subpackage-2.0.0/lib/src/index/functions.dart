import 'package:pulumi/pulumi.dart' as pulumi;
import 'do_hello_world_args.dart';
import 'do_hello_world_result.dart';
import '../internal/package_registration.dart' as package_registration;

/// [args] Arguments passed to this invoke. {@macro pulumi_index_do_hello_world_args_doc}
/// [options] Invoke options controlling this call.
Future<DoHelloWorldResult> doHelloWorld(
  DoHelloWorldArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'subpackage:index:doHelloWorld',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
    registerPackageRequest: package_registration.registerPackageRequest,
  );
  return DoHelloWorldResult.fromMap(result);
}

pulumi.Output<DoHelloWorldResult> doHelloWorldOutput(
  DoHelloWorldArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'subpackage:index:doHelloWorld',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
    registerPackageRequest: package_registration.registerPackageRequest,
  ).apply(DoHelloWorldResult.fromMap);
}
