import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_args.dart';
import 'identity_invoke_args.dart';
import 'identity_invoke_result.dart';
import 'identity_result.dart';
import 'prefixed_args.dart';
import 'prefixed_result.dart';

/// The `identity` method of the `ComponentCallable` component resource. Returns the component's `value` unaltered.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_identity_args_doc}
/// [options] Invoke options controlling this call.
Future<IdentityResult> identity(
  IdentityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'component:index:ComponentCallable/identity',
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
    'component:index:ComponentCallable/identity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(IdentityResult.fromMap);
}

/// The `prefixed` method of the `ComponentCallable` component resource. Accepts a string and returns the component's `value` prefixed with that string.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_prefixed_args_doc}
/// [options] Invoke options controlling this call.
Future<PrefixedResult> prefixed(
  PrefixedArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'component:index:ComponentCallable/prefixed',
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
    'component:index:ComponentCallable/prefixed',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(PrefixedResult.fromMap);
}

/// Returns its input unchanged.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_identity_invoke_args_doc}
/// [options] Invoke options controlling this call.
Future<IdentityInvokeResult> identity2(
  IdentityInvokeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'component:index:identity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return IdentityInvokeResult.fromMap(result);
}

pulumi.Output<IdentityInvokeResult> identity2Output(
  IdentityInvokeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'component:index:identity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(IdentityInvokeResult.fromMap);
}
