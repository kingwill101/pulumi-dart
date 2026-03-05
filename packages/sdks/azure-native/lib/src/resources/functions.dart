import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_azure_cli_script_args.dart';
import 'get_azure_cli_script_result.dart';
import 'get_azure_power_shell_script_args.dart';
import 'get_azure_power_shell_script_result.dart';
import 'get_deployment_args.dart';
import 'get_deployment_at_management_group_scope_args.dart';
import 'get_deployment_at_management_group_scope_result.dart';
import 'get_deployment_at_scope_args.dart';
import 'get_deployment_at_scope_result.dart';
import 'get_deployment_at_subscription_scope_args.dart';
import 'get_deployment_at_subscription_scope_result.dart';
import 'get_deployment_at_tenant_scope_args.dart';
import 'get_deployment_at_tenant_scope_result.dart';
import 'get_deployment_result.dart';
import 'get_deployment_stack_at_management_group_args.dart';
import 'get_deployment_stack_at_management_group_result.dart';
import 'get_deployment_stack_at_resource_group_args.dart';
import 'get_deployment_stack_at_resource_group_result.dart';
import 'get_deployment_stack_at_subscription_args.dart';
import 'get_deployment_stack_at_subscription_result.dart';
import 'get_deployment_stacks_what_if_results_at_management_group_args.dart';
import 'get_deployment_stacks_what_if_results_at_management_group_result.dart';
import 'get_deployment_stacks_what_if_results_at_resource_group_args.dart';
import 'get_deployment_stacks_what_if_results_at_resource_group_result.dart';
import 'get_deployment_stacks_what_if_results_at_subscription_args.dart';
import 'get_deployment_stacks_what_if_results_at_subscription_result.dart';
import 'get_resource_args.dart';
import 'get_resource_group_args.dart';
import 'get_resource_group_result.dart';
import 'get_resource_result.dart';
import 'get_tag_at_scope_args.dart';
import 'get_tag_at_scope_result.dart';
import 'get_template_spec_args.dart';
import 'get_template_spec_result.dart';
import 'get_template_spec_version_args.dart';
import 'get_template_spec_version_result.dart';

/// Gets a deployment script with a given name.
///
/// Uses Azure REST API version 2023-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_azure_cli_script_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAzureCliScriptResult> getAzureCliScript(
  GetAzureCliScriptArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getAzureCliScript',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAzureCliScriptResult.fromMap(result);
}

/// Gets a deployment script with a given name.
///
/// Uses Azure REST API version 2023-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_azure_power_shell_script_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAzurePowerShellScriptResult> getAzurePowerShellScript(
  GetAzurePowerShellScriptArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getAzurePowerShellScript',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAzurePowerShellScriptResult.fromMap(result);
}

/// Gets a deployment.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2020-10-01, 2021-01-01, 2021-04-01, 2022-09-01, 2023-07-01, 2024-07-01, 2024-11-01, 2025-03-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentResult> getDeployment(
  GetDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResult.fromMap(result);
}

/// Gets a deployment.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2020-10-01, 2021-01-01, 2021-04-01, 2022-09-01, 2023-07-01, 2024-07-01, 2024-11-01, 2025-03-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_deployment_at_management_group_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentAtManagementGroupScopeResult>
getDeploymentAtManagementGroupScope(
  GetDeploymentAtManagementGroupScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getDeploymentAtManagementGroupScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentAtManagementGroupScopeResult.fromMap(result);
}

/// Gets a deployment.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2020-10-01, 2021-01-01, 2021-04-01, 2022-09-01, 2023-07-01, 2024-07-01, 2024-11-01, 2025-03-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_deployment_at_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentAtScopeResult> getDeploymentAtScope(
  GetDeploymentAtScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getDeploymentAtScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentAtScopeResult.fromMap(result);
}

/// Gets a deployment.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2020-10-01, 2021-01-01, 2021-04-01, 2022-09-01, 2023-07-01, 2024-07-01, 2024-11-01, 2025-03-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_deployment_at_subscription_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentAtSubscriptionScopeResult> getDeploymentAtSubscriptionScope(
  GetDeploymentAtSubscriptionScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getDeploymentAtSubscriptionScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentAtSubscriptionScopeResult.fromMap(result);
}

/// Gets a deployment.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2020-10-01, 2021-01-01, 2021-04-01, 2022-09-01, 2023-07-01, 2024-07-01, 2024-11-01, 2025-03-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_deployment_at_tenant_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentAtTenantScopeResult> getDeploymentAtTenantScope(
  GetDeploymentAtTenantScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getDeploymentAtTenantScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentAtTenantScopeResult.fromMap(result);
}

/// Gets the Deployment stack with the given name.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2022-08-01-preview, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_deployment_stack_at_management_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentStackAtManagementGroupResult>
getDeploymentStackAtManagementGroup(
  GetDeploymentStackAtManagementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getDeploymentStackAtManagementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentStackAtManagementGroupResult.fromMap(result);
}

/// Gets the Deployment stack with the given name.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2022-08-01-preview, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_deployment_stack_at_resource_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentStackAtResourceGroupResult>
getDeploymentStackAtResourceGroup(
  GetDeploymentStackAtResourceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getDeploymentStackAtResourceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentStackAtResourceGroupResult.fromMap(result);
}

/// Gets the Deployment stack with the given name.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2022-08-01-preview, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_deployment_stack_at_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentStackAtSubscriptionResult> getDeploymentStackAtSubscription(
  GetDeploymentStackAtSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getDeploymentStackAtSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentStackAtSubscriptionResult.fromMap(result);
}

/// Gets the Deployment stack with the given name.
///
/// Uses Azure REST API version 2025-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_deployment_stacks_what_if_results_at_management_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentStacksWhatIfResultsAtManagementGroupResult>
getDeploymentStacksWhatIfResultsAtManagementGroup(
  GetDeploymentStacksWhatIfResultsAtManagementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getDeploymentStacksWhatIfResultsAtManagementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentStacksWhatIfResultsAtManagementGroupResult.fromMap(
    result,
  );
}

/// Gets the Deployment stack with the given name.
///
/// Uses Azure REST API version 2025-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_deployment_stacks_what_if_results_at_resource_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentStacksWhatIfResultsAtResourceGroupResult>
getDeploymentStacksWhatIfResultsAtResourceGroup(
  GetDeploymentStacksWhatIfResultsAtResourceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getDeploymentStacksWhatIfResultsAtResourceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentStacksWhatIfResultsAtResourceGroupResult.fromMap(result);
}

/// Gets the Deployment stack with the given name.
///
/// Uses Azure REST API version 2025-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_deployment_stacks_what_if_results_at_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentStacksWhatIfResultsAtSubscriptionResult>
getDeploymentStacksWhatIfResultsAtSubscription(
  GetDeploymentStacksWhatIfResultsAtSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getDeploymentStacksWhatIfResultsAtSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentStacksWhatIfResultsAtSubscriptionResult.fromMap(result);
}

/// Gets a resource.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2020-10-01, 2021-01-01, 2021-04-01, 2022-09-01, 2023-07-01, 2024-07-01, 2024-11-01, 2025-03-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceResult> getResource(
  GetResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceResult.fromMap(result);
}

/// Gets a resource group.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2020-10-01, 2021-01-01, 2021-04-01, 2022-09-01, 2023-07-01, 2024-07-01, 2024-11-01, 2025-03-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_resource_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceGroupResult> getResourceGroup(
  GetResourceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getResourceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceGroupResult.fromMap(result);
}

/// Wrapper resource for tags API requests and responses.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2020-10-01, 2021-01-01, 2021-04-01, 2022-09-01, 2023-07-01, 2024-07-01, 2024-11-01, 2025-03-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_tag_at_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagAtScopeResult> getTagAtScope(
  GetTagAtScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getTagAtScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagAtScopeResult.fromMap(result);
}

/// Gets a Template Spec with a given name.
///
/// Uses Azure REST API version 2022-02-01.
///
/// Other available API versions: 2021-03-01-preview, 2021-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_template_spec_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTemplateSpecResult> getTemplateSpec(
  GetTemplateSpecArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getTemplateSpec',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTemplateSpecResult.fromMap(result);
}

/// Gets a Template Spec version from a specific Template Spec.
///
/// Uses Azure REST API version 2022-02-01.
///
/// Other available API versions: 2021-03-01-preview, 2021-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resources_get_template_spec_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTemplateSpecVersionResult> getTemplateSpecVersion(
  GetTemplateSpecVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resources:getTemplateSpecVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTemplateSpecVersionResult.fromMap(result);
}
