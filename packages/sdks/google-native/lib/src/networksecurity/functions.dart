import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_group_args.dart';
import 'get_address_group_iam_policy_args.dart';
import 'get_address_group_iam_policy_networksecurity_v1beta1_args.dart';
import 'get_address_group_iam_policy_networksecurity_v1beta1_result.dart';
import 'get_address_group_iam_policy_result.dart';
import 'get_address_group_networksecurity_v1beta1_args.dart';
import 'get_address_group_networksecurity_v1beta1_result.dart';
import 'get_address_group_result.dart';
import 'get_authorization_policy_args.dart';
import 'get_authorization_policy_iam_policy_args.dart';
import 'get_authorization_policy_iam_policy_networksecurity_v1beta1_args.dart';
import 'get_authorization_policy_iam_policy_networksecurity_v1beta1_result.dart';
import 'get_authorization_policy_iam_policy_result.dart';
import 'get_authorization_policy_networksecurity_v1beta1_args.dart';
import 'get_authorization_policy_networksecurity_v1beta1_result.dart';
import 'get_authorization_policy_result.dart';
import 'get_client_tls_policy_args.dart';
import 'get_client_tls_policy_iam_policy_args.dart';
import 'get_client_tls_policy_iam_policy_networksecurity_v1beta1_args.dart';
import 'get_client_tls_policy_iam_policy_networksecurity_v1beta1_result.dart';
import 'get_client_tls_policy_iam_policy_result.dart';
import 'get_client_tls_policy_networksecurity_v1beta1_args.dart';
import 'get_client_tls_policy_networksecurity_v1beta1_result.dart';
import 'get_client_tls_policy_result.dart';
import 'get_firewall_endpoint_args.dart';
import 'get_firewall_endpoint_association_args.dart';
import 'get_firewall_endpoint_association_result.dart';
import 'get_firewall_endpoint_result.dart';
import 'get_gateway_security_policy_args.dart';
import 'get_gateway_security_policy_networksecurity_v1beta1_args.dart';
import 'get_gateway_security_policy_networksecurity_v1beta1_result.dart';
import 'get_gateway_security_policy_result.dart';
import 'get_organization_address_group_args.dart';
import 'get_organization_address_group_networksecurity_v1beta1_args.dart';
import 'get_organization_address_group_networksecurity_v1beta1_result.dart';
import 'get_organization_address_group_result.dart';
import 'get_rule_args.dart';
import 'get_rule_networksecurity_v1beta1_args.dart';
import 'get_rule_networksecurity_v1beta1_result.dart';
import 'get_rule_result.dart';
import 'get_security_profile_args.dart';
import 'get_security_profile_group_args.dart';
import 'get_security_profile_group_result.dart';
import 'get_security_profile_result.dart';
import 'get_server_tls_policy_args.dart';
import 'get_server_tls_policy_iam_policy_args.dart';
import 'get_server_tls_policy_iam_policy_networksecurity_v1beta1_args.dart';
import 'get_server_tls_policy_iam_policy_networksecurity_v1beta1_result.dart';
import 'get_server_tls_policy_iam_policy_result.dart';
import 'get_server_tls_policy_networksecurity_v1beta1_args.dart';
import 'get_server_tls_policy_networksecurity_v1beta1_result.dart';
import 'get_server_tls_policy_result.dart';
import 'get_tls_inspection_policy_args.dart';
import 'get_tls_inspection_policy_networksecurity_v1beta1_args.dart';
import 'get_tls_inspection_policy_networksecurity_v1beta1_result.dart';
import 'get_tls_inspection_policy_result.dart';
import 'get_url_list_args.dart';
import 'get_url_list_networksecurity_v1beta1_args.dart';
import 'get_url_list_networksecurity_v1beta1_result.dart';
import 'get_url_list_result.dart';

/// Gets details of a single address group.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1_get_address_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressGroupResult> getAddressGroup(
  GetAddressGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getAddressGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressGroupResult.fromMap(result);
}

pulumi.Output<GetAddressGroupResult> getAddressGroupOutput(
  GetAddressGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getAddressGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAddressGroupResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1_get_address_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressGroupIamPolicyResult> getAddressGroupIamPolicy(
  GetAddressGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getAddressGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressGroupIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAddressGroupIamPolicyResult> getAddressGroupIamPolicyOutput(
  GetAddressGroupIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getAddressGroupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAddressGroupIamPolicyResult.fromMap);
}

/// Gets details of a single AuthorizationPolicy.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1_get_authorization_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizationPolicyResult> getAuthorizationPolicy(
  GetAuthorizationPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getAuthorizationPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationPolicyResult.fromMap(result);
}

pulumi.Output<GetAuthorizationPolicyResult> getAuthorizationPolicyOutput(
  GetAuthorizationPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getAuthorizationPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizationPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1_get_authorization_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizationPolicyIamPolicyResult> getAuthorizationPolicyIamPolicy(
  GetAuthorizationPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getAuthorizationPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationPolicyIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAuthorizationPolicyIamPolicyResult> getAuthorizationPolicyIamPolicyOutput(
  GetAuthorizationPolicyIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getAuthorizationPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizationPolicyIamPolicyResult.fromMap);
}

/// Gets details of a single ClientTlsPolicy.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1_get_client_tls_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClientTlsPolicyResult> getClientTlsPolicy(
  GetClientTlsPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getClientTlsPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientTlsPolicyResult.fromMap(result);
}

pulumi.Output<GetClientTlsPolicyResult> getClientTlsPolicyOutput(
  GetClientTlsPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getClientTlsPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClientTlsPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1_get_client_tls_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClientTlsPolicyIamPolicyResult> getClientTlsPolicyIamPolicy(
  GetClientTlsPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getClientTlsPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientTlsPolicyIamPolicyResult.fromMap(result);
}

pulumi.Output<GetClientTlsPolicyIamPolicyResult> getClientTlsPolicyIamPolicyOutput(
  GetClientTlsPolicyIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getClientTlsPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClientTlsPolicyIamPolicyResult.fromMap);
}

/// Gets details of a single GatewaySecurityPolicy.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1_get_gateway_security_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewaySecurityPolicyResult> getGatewaySecurityPolicy(
  GetGatewaySecurityPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getGatewaySecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewaySecurityPolicyResult.fromMap(result);
}

pulumi.Output<GetGatewaySecurityPolicyResult> getGatewaySecurityPolicyOutput(
  GetGatewaySecurityPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getGatewaySecurityPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewaySecurityPolicyResult.fromMap);
}

/// Gets details of a single address group.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1_get_organization_address_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationAddressGroupResult> getOrganizationAddressGroup(
  GetOrganizationAddressGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getOrganizationAddressGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationAddressGroupResult.fromMap(result);
}

pulumi.Output<GetOrganizationAddressGroupResult> getOrganizationAddressGroupOutput(
  GetOrganizationAddressGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getOrganizationAddressGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationAddressGroupResult.fromMap);
}

/// Gets details of a single GatewaySecurityPolicyRule.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1_get_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuleResult> getRule(
  GetRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleResult.fromMap(result);
}

pulumi.Output<GetRuleResult> getRuleOutput(
  GetRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRuleResult.fromMap);
}

/// Gets details of a single ServerTlsPolicy.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1_get_server_tls_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerTlsPolicyResult> getServerTlsPolicy(
  GetServerTlsPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getServerTlsPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerTlsPolicyResult.fromMap(result);
}

pulumi.Output<GetServerTlsPolicyResult> getServerTlsPolicyOutput(
  GetServerTlsPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getServerTlsPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerTlsPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1_get_server_tls_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerTlsPolicyIamPolicyResult> getServerTlsPolicyIamPolicy(
  GetServerTlsPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getServerTlsPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerTlsPolicyIamPolicyResult.fromMap(result);
}

pulumi.Output<GetServerTlsPolicyIamPolicyResult> getServerTlsPolicyIamPolicyOutput(
  GetServerTlsPolicyIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getServerTlsPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerTlsPolicyIamPolicyResult.fromMap);
}

/// Gets details of a single TlsInspectionPolicy.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1_get_tls_inspection_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTlsInspectionPolicyResult> getTlsInspectionPolicy(
  GetTlsInspectionPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getTlsInspectionPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTlsInspectionPolicyResult.fromMap(result);
}

pulumi.Output<GetTlsInspectionPolicyResult> getTlsInspectionPolicyOutput(
  GetTlsInspectionPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getTlsInspectionPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTlsInspectionPolicyResult.fromMap);
}

/// Gets details of a single UrlList.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1_get_url_list_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUrlListResult> getUrlList(
  GetUrlListArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getUrlList',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUrlListResult.fromMap(result);
}

pulumi.Output<GetUrlListResult> getUrlListOutput(
  GetUrlListArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getUrlList',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUrlListResult.fromMap);
}

/// Gets details of a single address group.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_address_group_networksecurity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressGroupNetworksecurityV1beta1Result> getAddressGroupNetworksecurityV1beta1(
  GetAddressGroupNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAddressGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressGroupNetworksecurityV1beta1Result.fromMap(result);
}

pulumi.Output<GetAddressGroupNetworksecurityV1beta1Result> getAddressGroupNetworksecurityV1beta1Output(
  GetAddressGroupNetworksecurityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAddressGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAddressGroupNetworksecurityV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_address_group_iam_policy_networksecurity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressGroupIamPolicyNetworksecurityV1beta1Result> getAddressGroupIamPolicyNetworksecurityV1beta1(
  GetAddressGroupIamPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAddressGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressGroupIamPolicyNetworksecurityV1beta1Result.fromMap(result);
}

pulumi.Output<GetAddressGroupIamPolicyNetworksecurityV1beta1Result> getAddressGroupIamPolicyNetworksecurityV1beta1Output(
  GetAddressGroupIamPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAddressGroupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAddressGroupIamPolicyNetworksecurityV1beta1Result.fromMap);
}

/// Gets details of a single AuthorizationPolicy.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_authorization_policy_networksecurity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizationPolicyNetworksecurityV1beta1Result> getAuthorizationPolicyNetworksecurityV1beta1(
  GetAuthorizationPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAuthorizationPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationPolicyNetworksecurityV1beta1Result.fromMap(result);
}

pulumi.Output<GetAuthorizationPolicyNetworksecurityV1beta1Result> getAuthorizationPolicyNetworksecurityV1beta1Output(
  GetAuthorizationPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAuthorizationPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizationPolicyNetworksecurityV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_authorization_policy_iam_policy_networksecurity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizationPolicyIamPolicyNetworksecurityV1beta1Result> getAuthorizationPolicyIamPolicyNetworksecurityV1beta1(
  GetAuthorizationPolicyIamPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAuthorizationPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationPolicyIamPolicyNetworksecurityV1beta1Result.fromMap(result);
}

pulumi.Output<GetAuthorizationPolicyIamPolicyNetworksecurityV1beta1Result> getAuthorizationPolicyIamPolicyNetworksecurityV1beta1Output(
  GetAuthorizationPolicyIamPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAuthorizationPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizationPolicyIamPolicyNetworksecurityV1beta1Result.fromMap);
}

/// Gets details of a single ClientTlsPolicy.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_client_tls_policy_networksecurity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClientTlsPolicyNetworksecurityV1beta1Result> getClientTlsPolicyNetworksecurityV1beta1(
  GetClientTlsPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getClientTlsPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientTlsPolicyNetworksecurityV1beta1Result.fromMap(result);
}

pulumi.Output<GetClientTlsPolicyNetworksecurityV1beta1Result> getClientTlsPolicyNetworksecurityV1beta1Output(
  GetClientTlsPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getClientTlsPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClientTlsPolicyNetworksecurityV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_client_tls_policy_iam_policy_networksecurity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClientTlsPolicyIamPolicyNetworksecurityV1beta1Result> getClientTlsPolicyIamPolicyNetworksecurityV1beta1(
  GetClientTlsPolicyIamPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getClientTlsPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientTlsPolicyIamPolicyNetworksecurityV1beta1Result.fromMap(result);
}

pulumi.Output<GetClientTlsPolicyIamPolicyNetworksecurityV1beta1Result> getClientTlsPolicyIamPolicyNetworksecurityV1beta1Output(
  GetClientTlsPolicyIamPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getClientTlsPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClientTlsPolicyIamPolicyNetworksecurityV1beta1Result.fromMap);
}

/// Gets details of a single Endpoint.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_firewall_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallEndpointResult> getFirewallEndpoint(
  GetFirewallEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getFirewallEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallEndpointResult.fromMap(result);
}

pulumi.Output<GetFirewallEndpointResult> getFirewallEndpointOutput(
  GetFirewallEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getFirewallEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFirewallEndpointResult.fromMap);
}

/// Gets details of a single FirewallEndpointAssociation.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_firewall_endpoint_association_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallEndpointAssociationResult> getFirewallEndpointAssociation(
  GetFirewallEndpointAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getFirewallEndpointAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallEndpointAssociationResult.fromMap(result);
}

pulumi.Output<GetFirewallEndpointAssociationResult> getFirewallEndpointAssociationOutput(
  GetFirewallEndpointAssociationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getFirewallEndpointAssociation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFirewallEndpointAssociationResult.fromMap);
}

/// Gets details of a single GatewaySecurityPolicy.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_gateway_security_policy_networksecurity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewaySecurityPolicyNetworksecurityV1beta1Result> getGatewaySecurityPolicyNetworksecurityV1beta1(
  GetGatewaySecurityPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getGatewaySecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewaySecurityPolicyNetworksecurityV1beta1Result.fromMap(result);
}

pulumi.Output<GetGatewaySecurityPolicyNetworksecurityV1beta1Result> getGatewaySecurityPolicyNetworksecurityV1beta1Output(
  GetGatewaySecurityPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getGatewaySecurityPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewaySecurityPolicyNetworksecurityV1beta1Result.fromMap);
}

/// Gets details of a single address group.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_organization_address_group_networksecurity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationAddressGroupNetworksecurityV1beta1Result> getOrganizationAddressGroupNetworksecurityV1beta1(
  GetOrganizationAddressGroupNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getOrganizationAddressGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationAddressGroupNetworksecurityV1beta1Result.fromMap(result);
}

pulumi.Output<GetOrganizationAddressGroupNetworksecurityV1beta1Result> getOrganizationAddressGroupNetworksecurityV1beta1Output(
  GetOrganizationAddressGroupNetworksecurityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getOrganizationAddressGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationAddressGroupNetworksecurityV1beta1Result.fromMap);
}

/// Gets details of a single GatewaySecurityPolicyRule.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_rule_networksecurity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuleNetworksecurityV1beta1Result> getRuleNetworksecurityV1beta1(
  GetRuleNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleNetworksecurityV1beta1Result.fromMap(result);
}

pulumi.Output<GetRuleNetworksecurityV1beta1Result> getRuleNetworksecurityV1beta1Output(
  GetRuleNetworksecurityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRuleNetworksecurityV1beta1Result.fromMap);
}

/// Gets details of a single SecurityProfile.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_security_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityProfileResult> getSecurityProfile(
  GetSecurityProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getSecurityProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityProfileResult.fromMap(result);
}

pulumi.Output<GetSecurityProfileResult> getSecurityProfileOutput(
  GetSecurityProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getSecurityProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityProfileResult.fromMap);
}

/// Gets details of a single SecurityProfileGroup.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_security_profile_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityProfileGroupResult> getSecurityProfileGroup(
  GetSecurityProfileGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getSecurityProfileGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityProfileGroupResult.fromMap(result);
}

pulumi.Output<GetSecurityProfileGroupResult> getSecurityProfileGroupOutput(
  GetSecurityProfileGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getSecurityProfileGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityProfileGroupResult.fromMap);
}

/// Gets details of a single ServerTlsPolicy.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_server_tls_policy_networksecurity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerTlsPolicyNetworksecurityV1beta1Result> getServerTlsPolicyNetworksecurityV1beta1(
  GetServerTlsPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getServerTlsPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerTlsPolicyNetworksecurityV1beta1Result.fromMap(result);
}

pulumi.Output<GetServerTlsPolicyNetworksecurityV1beta1Result> getServerTlsPolicyNetworksecurityV1beta1Output(
  GetServerTlsPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getServerTlsPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerTlsPolicyNetworksecurityV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_server_tls_policy_iam_policy_networksecurity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Result> getServerTlsPolicyIamPolicyNetworksecurityV1beta1(
  GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getServerTlsPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Result.fromMap(result);
}

pulumi.Output<GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Result> getServerTlsPolicyIamPolicyNetworksecurityV1beta1Output(
  GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getServerTlsPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Result.fromMap);
}

/// Gets details of a single TlsInspectionPolicy.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_tls_inspection_policy_networksecurity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTlsInspectionPolicyNetworksecurityV1beta1Result> getTlsInspectionPolicyNetworksecurityV1beta1(
  GetTlsInspectionPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getTlsInspectionPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTlsInspectionPolicyNetworksecurityV1beta1Result.fromMap(result);
}

pulumi.Output<GetTlsInspectionPolicyNetworksecurityV1beta1Result> getTlsInspectionPolicyNetworksecurityV1beta1Output(
  GetTlsInspectionPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getTlsInspectionPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTlsInspectionPolicyNetworksecurityV1beta1Result.fromMap);
}

/// Gets details of a single UrlList.
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_v1beta1_get_url_list_networksecurity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUrlListNetworksecurityV1beta1Result> getUrlListNetworksecurityV1beta1(
  GetUrlListNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getUrlList',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUrlListNetworksecurityV1beta1Result.fromMap(result);
}

pulumi.Output<GetUrlListNetworksecurityV1beta1Result> getUrlListNetworksecurityV1beta1Output(
  GetUrlListNetworksecurityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getUrlList',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUrlListNetworksecurityV1beta1Result.fromMap);
}
