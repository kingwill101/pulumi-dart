import 'package:pulumi/pulumi.dart' as pulumi;
import 'greet_args.dart';
import 'greet_result.dart';
import '../internal/package_registration.dart' as package_registration;

/// [args] Arguments passed to this invoke. {@macro pulumi_index_greet_args_doc}
/// [options] Invoke options controlling this call.
Future<GreetResult> greet(
  GreetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'myext:index:greet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
    registerPackageRequest: package_registration.registerPackageRequest,
  );
  return GreetResult.fromMap(result);
}

pulumi.Output<GreetResult> greetOutput(
  GreetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'myext:index:greet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
    registerPackageRequest: package_registration.registerPackageRequest,
  ).apply(GreetResult.fromMap);
}
