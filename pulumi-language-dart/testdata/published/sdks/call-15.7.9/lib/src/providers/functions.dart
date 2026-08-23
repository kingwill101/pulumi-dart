import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_args.dart';
import 'identity_result.dart';
import 'prefixed_args.dart';
import 'prefixed_result.dart';

/// The `identity` method of the `call` package's provider. Returns the provider's `value` configuration unaltered.
/// [args] Arguments passed to this invoke. {@macro pulumi_providers_identity_args_doc}
/// [options] Invoke options controlling this call.
Future<IdentityResult> identity(
  IdentityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumi:providers:call/identity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return IdentityResult.fromMap(result);
}

pulumi.Output<IdentityResult> identityOutput(
  IdentityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumi:providers:call/identity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(IdentityResult.fromMap);
}

/// The `prefixed` method of the `call` package's provider. Accepts a string and returns the provider's `value` configuration prefixed with that string.
/// [args] Arguments passed to this invoke. {@macro pulumi_providers_prefixed_args_doc}
/// [options] Invoke options controlling this call.
Future<PrefixedResult> prefixed(
  PrefixedArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumi:providers:call/prefixed',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return PrefixedResult.fromMap(result);
}

pulumi.Output<PrefixedResult> prefixedOutput(
  PrefixedArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumi:providers:call/prefixed',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(PrefixedResult.fromMap);
}
