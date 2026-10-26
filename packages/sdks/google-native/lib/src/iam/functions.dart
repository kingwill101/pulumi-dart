import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_args.dart';
import 'get_key_result.dart';
import 'get_organization_role_args.dart';
import 'get_organization_role_result.dart';
import 'get_provider_args.dart';
import 'get_provider_result.dart';
import 'get_role_args.dart';
import 'get_role_result.dart';
import 'get_service_account_args.dart';
import 'get_service_account_iam_policy_args.dart';
import 'get_service_account_iam_policy_result.dart';
import 'get_service_account_result.dart';
import 'get_workforce_pool_args.dart';
import 'get_workforce_pool_iam_policy_args.dart';
import 'get_workforce_pool_iam_policy_result.dart';
import 'get_workforce_pool_key_args.dart';
import 'get_workforce_pool_key_result.dart';
import 'get_workforce_pool_provider_args.dart';
import 'get_workforce_pool_provider_result.dart';
import 'get_workforce_pool_result.dart';
import 'get_workload_identity_pool_args.dart';
import 'get_workload_identity_pool_key_args.dart';
import 'get_workload_identity_pool_key_result.dart';
import 'get_workload_identity_pool_result.dart';

/// Gets a ServiceAccountKey.
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_v1_get_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyResult> getKey(
  GetKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getKey',
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
    'google-native:iam/v1:getKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKeyResult.fromMap);
}

/// Gets the definition of a Role.
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_v1_get_organization_role_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationRoleResult> getOrganizationRole(
  GetOrganizationRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getOrganizationRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationRoleResult.fromMap(result);
}

pulumi.Output<GetOrganizationRoleResult> getOrganizationRoleOutput(
  GetOrganizationRoleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:iam/v1:getOrganizationRole',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationRoleResult.fromMap);
}

/// Gets an individual WorkloadIdentityPoolProvider.
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_v1_get_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProviderResult> getProvider(
  GetProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProviderResult.fromMap(result);
}

pulumi.Output<GetProviderResult> getProviderOutput(
  GetProviderArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:iam/v1:getProvider',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProviderResult.fromMap);
}

/// Gets the definition of a Role.
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_v1_get_role_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoleResult> getRole(
  GetRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoleResult.fromMap(result);
}

pulumi.Output<GetRoleResult> getRoleOutput(
  GetRoleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:iam/v1:getRole',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoleResult.fromMap);
}

/// Gets a ServiceAccount.
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_v1_get_service_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceAccountResult> getServiceAccount(
  GetServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAccountResult.fromMap(result);
}

pulumi.Output<GetServiceAccountResult> getServiceAccountOutput(
  GetServiceAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:iam/v1:getServiceAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceAccountResult.fromMap);
}

/// Gets the IAM policy that is attached to a ServiceAccount. This IAM policy specifies which principals have access to the service account. This method does not tell you whether the service account has been granted any roles on other resources. To check whether a service account has role grants on a resource, use the `getIamPolicy` method for that resource. For example, to view the role grants for a project, call the Resource Manager API's [`projects.getIamPolicy`](https://cloud.google.com/resource-manager/reference/rest/v1/projects/getIamPolicy) method.
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_v1_get_service_account_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceAccountIamPolicyResult> getServiceAccountIamPolicy(
  GetServiceAccountIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getServiceAccountIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAccountIamPolicyResult.fromMap(result);
}

pulumi.Output<GetServiceAccountIamPolicyResult> getServiceAccountIamPolicyOutput(
  GetServiceAccountIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:iam/v1:getServiceAccountIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceAccountIamPolicyResult.fromMap);
}

/// Gets an individual WorkforcePool.
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_v1_get_workforce_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkforcePoolResult> getWorkforcePool(
  GetWorkforcePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkforcePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkforcePoolResult.fromMap(result);
}

pulumi.Output<GetWorkforcePoolResult> getWorkforcePoolOutput(
  GetWorkforcePoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkforcePool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkforcePoolResult.fromMap);
}

/// Gets IAM policies on a WorkforcePool.
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_v1_get_workforce_pool_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkforcePoolIamPolicyResult> getWorkforcePoolIamPolicy(
  GetWorkforcePoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkforcePoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkforcePoolIamPolicyResult.fromMap(result);
}

pulumi.Output<GetWorkforcePoolIamPolicyResult> getWorkforcePoolIamPolicyOutput(
  GetWorkforcePoolIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkforcePoolIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkforcePoolIamPolicyResult.fromMap);
}

/// Gets a WorkforcePoolProviderKey.
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_v1_get_workforce_pool_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkforcePoolKeyResult> getWorkforcePoolKey(
  GetWorkforcePoolKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkforcePoolKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkforcePoolKeyResult.fromMap(result);
}

pulumi.Output<GetWorkforcePoolKeyResult> getWorkforcePoolKeyOutput(
  GetWorkforcePoolKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkforcePoolKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkforcePoolKeyResult.fromMap);
}

/// Gets an individual WorkforcePoolProvider.
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_v1_get_workforce_pool_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkforcePoolProviderResult> getWorkforcePoolProvider(
  GetWorkforcePoolProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkforcePoolProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkforcePoolProviderResult.fromMap(result);
}

pulumi.Output<GetWorkforcePoolProviderResult> getWorkforcePoolProviderOutput(
  GetWorkforcePoolProviderArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkforcePoolProvider',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkforcePoolProviderResult.fromMap);
}

/// Gets an individual WorkloadIdentityPool.
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_v1_get_workload_identity_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadIdentityPoolResult> getWorkloadIdentityPool(
  GetWorkloadIdentityPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkloadIdentityPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadIdentityPoolResult.fromMap(result);
}

pulumi.Output<GetWorkloadIdentityPoolResult> getWorkloadIdentityPoolOutput(
  GetWorkloadIdentityPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkloadIdentityPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkloadIdentityPoolResult.fromMap);
}

/// Gets an individual WorkloadIdentityPoolProviderKey.
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_v1_get_workload_identity_pool_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadIdentityPoolKeyResult> getWorkloadIdentityPoolKey(
  GetWorkloadIdentityPoolKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkloadIdentityPoolKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadIdentityPoolKeyResult.fromMap(result);
}

pulumi.Output<GetWorkloadIdentityPoolKeyResult> getWorkloadIdentityPoolKeyOutput(
  GetWorkloadIdentityPoolKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkloadIdentityPoolKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkloadIdentityPoolKeyResult.fromMap);
}
