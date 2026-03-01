import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_default_supported_idp_config_args.dart';
import 'get_default_supported_idp_config_result.dart';
import 'get_inbound_saml_config_args.dart';
import 'get_inbound_saml_config_result.dart';
import 'get_oauth_idp_config_args.dart';
import 'get_oauth_idp_config_result.dart';
import 'get_tenant_args.dart';
import 'get_tenant_iam_policy_args.dart';
import 'get_tenant_iam_policy_result.dart';
import 'get_tenant_result.dart';

/// Retrieve a default supported Idp configuration for an Identity Toolkit project.
/// [args] Arguments passed to this invoke. {@macro pulumi_identitytoolkit_v2_get_default_supported_idp_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDefaultSupportedIdpConfigResult> getDefaultSupportedIdpConfig(
  GetDefaultSupportedIdpConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:identitytoolkit/v2:getDefaultSupportedIdpConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultSupportedIdpConfigResult.fromMap(result);
}

/// Retrieve an inbound SAML configuration for an Identity Toolkit project.
/// [args] Arguments passed to this invoke. {@macro pulumi_identitytoolkit_v2_get_inbound_saml_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInboundSamlConfigResult> getInboundSamlConfig(
  GetInboundSamlConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:identitytoolkit/v2:getInboundSamlConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInboundSamlConfigResult.fromMap(result);
}

/// Retrieve an Oidc Idp configuration for an Identity Toolkit project.
/// [args] Arguments passed to this invoke. {@macro pulumi_identitytoolkit_v2_get_oauth_idp_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOauthIdpConfigResult> getOauthIdpConfig(
  GetOauthIdpConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:identitytoolkit/v2:getOauthIdpConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOauthIdpConfigResult.fromMap(result);
}

/// Get a tenant. Requires read permission on the Tenant resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_identitytoolkit_v2_get_tenant_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTenantResult> getTenant(
  GetTenantArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:identitytoolkit/v2:getTenant',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTenantResult.fromMap(result);
}

/// Gets the access control policy for a resource. An error is returned if the resource does not exist. An empty policy is returned if the resource exists but does not have a policy set on it. Caller must have the right Google IAM permission on the resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_identitytoolkit_v2_get_tenant_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTenantIamPolicyResult> getTenantIamPolicy(
  GetTenantIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:identitytoolkit/v2:getTenantIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTenantIamPolicyResult.fromMap(result);
}
