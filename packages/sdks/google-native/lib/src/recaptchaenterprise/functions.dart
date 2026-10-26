import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewallpolicy_args.dart';
import 'get_firewallpolicy_result.dart';
import 'get_key_args.dart';
import 'get_key_result.dart';

/// Returns the specified firewall policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_recaptchaenterprise_v1_get_firewallpolicy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallpolicyResult> getFirewallpolicy(
  GetFirewallpolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:recaptchaenterprise/v1:getFirewallpolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallpolicyResult.fromMap(result);
}

pulumi.Output<GetFirewallpolicyResult> getFirewallpolicyOutput(
  GetFirewallpolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:recaptchaenterprise/v1:getFirewallpolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFirewallpolicyResult.fromMap);
}

/// Returns the specified key.
/// [args] Arguments passed to this invoke. {@macro pulumi_recaptchaenterprise_v1_get_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyResult> getKey(
  GetKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:recaptchaenterprise/v1:getKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyResult.fromMap(result);
}

pulumi.Output<GetKeyResult> getKeyOutput(
  GetKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:recaptchaenterprise/v1:getKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKeyResult.fromMap);
}
