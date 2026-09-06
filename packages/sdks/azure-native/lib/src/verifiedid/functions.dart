import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authority_args.dart';
import 'get_authority_result.dart';

/// Get a Authority
///
/// Uses Azure REST API version 2024-01-26-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_verifiedid_get_authority_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorityResult> getAuthority(
  GetAuthorityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:verifiedid:getAuthority',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorityResult.fromMap(result);
}

pulumi.Output<GetAuthorityResult> getAuthorityOutput(
  GetAuthorityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:verifiedid:getAuthority',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorityResult.fromMap);
}
