import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_enterprise_policy_args.dart';
import 'get_enterprise_policy_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';

/// Get information about an account.
///
/// Uses Azure REST API version 2020-10-30-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_powerplatform_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:powerplatform:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// Get information about an EnterprisePolicy
///
/// Uses Azure REST API version 2020-10-30-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_powerplatform_get_enterprise_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterprisePolicyResult> getEnterprisePolicy(
  GetEnterprisePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:powerplatform:getEnterprisePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterprisePolicyResult.fromMap(result);
}

/// Gets a private endpoint connection.
///
/// Uses Azure REST API version 2020-10-30-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_powerplatform_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:powerplatform:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}
