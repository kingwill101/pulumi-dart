import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attestation_at_resource_args.dart';
import 'get_attestation_at_resource_group_args.dart';
import 'get_attestation_at_resource_group_result.dart';
import 'get_attestation_at_resource_result.dart';
import 'get_attestation_at_subscription_args.dart';
import 'get_attestation_at_subscription_result.dart';
import 'get_remediation_at_management_group_args.dart';
import 'get_remediation_at_management_group_result.dart';
import 'get_remediation_at_resource_args.dart';
import 'get_remediation_at_resource_group_args.dart';
import 'get_remediation_at_resource_group_result.dart';
import 'get_remediation_at_resource_result.dart';
import 'get_remediation_at_subscription_args.dart';
import 'get_remediation_at_subscription_result.dart';
import 'list_remediation_deployments_at_management_group_args.dart';
import 'list_remediation_deployments_at_management_group_result.dart';
import 'list_remediation_deployments_at_resource_args.dart';
import 'list_remediation_deployments_at_resource_group_args.dart';
import 'list_remediation_deployments_at_resource_group_result.dart';
import 'list_remediation_deployments_at_resource_result.dart';
import 'list_remediation_deployments_at_subscription_args.dart';
import 'list_remediation_deployments_at_subscription_result.dart';

/// Gets an existing attestation at resource scope.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2022-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native policyinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_policyinsights_get_attestation_at_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttestationAtResourceResult> getAttestationAtResource(
  GetAttestationAtResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:policyinsights:getAttestationAtResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttestationAtResourceResult.fromMap(result);
}

pulumi.Output<GetAttestationAtResourceResult> getAttestationAtResourceOutput(
  GetAttestationAtResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:policyinsights:getAttestationAtResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAttestationAtResourceResult.fromMap);
}

/// Gets an existing attestation at resource group scope.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2022-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native policyinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_policyinsights_get_attestation_at_resource_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttestationAtResourceGroupResult> getAttestationAtResourceGroup(
  GetAttestationAtResourceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:policyinsights:getAttestationAtResourceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttestationAtResourceGroupResult.fromMap(result);
}

pulumi.Output<GetAttestationAtResourceGroupResult> getAttestationAtResourceGroupOutput(
  GetAttestationAtResourceGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:policyinsights:getAttestationAtResourceGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAttestationAtResourceGroupResult.fromMap);
}

/// Gets an existing attestation at subscription scope.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2022-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native policyinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_policyinsights_get_attestation_at_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttestationAtSubscriptionResult> getAttestationAtSubscription(
  GetAttestationAtSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:policyinsights:getAttestationAtSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttestationAtSubscriptionResult.fromMap(result);
}

pulumi.Output<GetAttestationAtSubscriptionResult> getAttestationAtSubscriptionOutput(
  GetAttestationAtSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:policyinsights:getAttestationAtSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAttestationAtSubscriptionResult.fromMap);
}

/// Gets an existing remediation at management group scope.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2021-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native policyinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_policyinsights_get_remediation_at_management_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRemediationAtManagementGroupResult> getRemediationAtManagementGroup(
  GetRemediationAtManagementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:policyinsights:getRemediationAtManagementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRemediationAtManagementGroupResult.fromMap(result);
}

pulumi.Output<GetRemediationAtManagementGroupResult> getRemediationAtManagementGroupOutput(
  GetRemediationAtManagementGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:policyinsights:getRemediationAtManagementGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRemediationAtManagementGroupResult.fromMap);
}

/// Gets an existing remediation at resource scope.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2021-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native policyinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_policyinsights_get_remediation_at_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRemediationAtResourceResult> getRemediationAtResource(
  GetRemediationAtResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:policyinsights:getRemediationAtResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRemediationAtResourceResult.fromMap(result);
}

pulumi.Output<GetRemediationAtResourceResult> getRemediationAtResourceOutput(
  GetRemediationAtResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:policyinsights:getRemediationAtResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRemediationAtResourceResult.fromMap);
}

/// Gets an existing remediation at resource group scope.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2021-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native policyinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_policyinsights_get_remediation_at_resource_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRemediationAtResourceGroupResult> getRemediationAtResourceGroup(
  GetRemediationAtResourceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:policyinsights:getRemediationAtResourceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRemediationAtResourceGroupResult.fromMap(result);
}

pulumi.Output<GetRemediationAtResourceGroupResult> getRemediationAtResourceGroupOutput(
  GetRemediationAtResourceGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:policyinsights:getRemediationAtResourceGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRemediationAtResourceGroupResult.fromMap);
}

/// Gets an existing remediation at subscription scope.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2021-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native policyinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_policyinsights_get_remediation_at_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRemediationAtSubscriptionResult> getRemediationAtSubscription(
  GetRemediationAtSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:policyinsights:getRemediationAtSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRemediationAtSubscriptionResult.fromMap(result);
}

pulumi.Output<GetRemediationAtSubscriptionResult> getRemediationAtSubscriptionOutput(
  GetRemediationAtSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:policyinsights:getRemediationAtSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRemediationAtSubscriptionResult.fromMap);
}

/// Gets all deployments for a remediation at management group scope.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2021-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native policyinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_policyinsights_list_remediation_deployments_at_management_group_args_doc}
/// [options] Invoke options controlling this call.
Future<ListRemediationDeploymentsAtManagementGroupResult> listRemediationDeploymentsAtManagementGroup(
  ListRemediationDeploymentsAtManagementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:policyinsights:listRemediationDeploymentsAtManagementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListRemediationDeploymentsAtManagementGroupResult.fromMap(result);
}

pulumi.Output<ListRemediationDeploymentsAtManagementGroupResult> listRemediationDeploymentsAtManagementGroupOutput(
  ListRemediationDeploymentsAtManagementGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:policyinsights:listRemediationDeploymentsAtManagementGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListRemediationDeploymentsAtManagementGroupResult.fromMap);
}

/// Gets all deployments for a remediation at resource scope.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2021-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native policyinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_policyinsights_list_remediation_deployments_at_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<ListRemediationDeploymentsAtResourceResult> listRemediationDeploymentsAtResource(
  ListRemediationDeploymentsAtResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:policyinsights:listRemediationDeploymentsAtResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListRemediationDeploymentsAtResourceResult.fromMap(result);
}

pulumi.Output<ListRemediationDeploymentsAtResourceResult> listRemediationDeploymentsAtResourceOutput(
  ListRemediationDeploymentsAtResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:policyinsights:listRemediationDeploymentsAtResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListRemediationDeploymentsAtResourceResult.fromMap);
}

/// Gets all deployments for a remediation at resource group scope.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2021-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native policyinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_policyinsights_list_remediation_deployments_at_resource_group_args_doc}
/// [options] Invoke options controlling this call.
Future<ListRemediationDeploymentsAtResourceGroupResult> listRemediationDeploymentsAtResourceGroup(
  ListRemediationDeploymentsAtResourceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:policyinsights:listRemediationDeploymentsAtResourceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListRemediationDeploymentsAtResourceGroupResult.fromMap(result);
}

pulumi.Output<ListRemediationDeploymentsAtResourceGroupResult> listRemediationDeploymentsAtResourceGroupOutput(
  ListRemediationDeploymentsAtResourceGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:policyinsights:listRemediationDeploymentsAtResourceGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListRemediationDeploymentsAtResourceGroupResult.fromMap);
}

/// Gets all deployments for a remediation at subscription scope.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2021-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native policyinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_policyinsights_list_remediation_deployments_at_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<ListRemediationDeploymentsAtSubscriptionResult> listRemediationDeploymentsAtSubscription(
  ListRemediationDeploymentsAtSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:policyinsights:listRemediationDeploymentsAtSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListRemediationDeploymentsAtSubscriptionResult.fromMap(result);
}

pulumi.Output<ListRemediationDeploymentsAtSubscriptionResult> listRemediationDeploymentsAtSubscriptionOutput(
  ListRemediationDeploymentsAtSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:policyinsights:listRemediationDeploymentsAtSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListRemediationDeploymentsAtSubscriptionResult.fromMap);
}
