import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aspect_type_iam_policy_args.dart';
import 'get_aspect_type_iam_policy_result.dart';
import 'get_asset_args.dart';
import 'get_asset_result.dart';
import 'get_attribute_args.dart';
import 'get_attribute_result.dart';
import 'get_content_args.dart';
import 'get_content_result.dart';
import 'get_contentitem_args.dart';
import 'get_contentitem_result.dart';
import 'get_data_attribute_binding_args.dart';
import 'get_data_attribute_binding_iam_policy_args.dart';
import 'get_data_attribute_binding_iam_policy_result.dart';
import 'get_data_attribute_binding_result.dart';
import 'get_data_scan_args.dart';
import 'get_data_scan_iam_policy_args.dart';
import 'get_data_scan_iam_policy_result.dart';
import 'get_data_scan_result.dart';
import 'get_data_taxonomy_args.dart';
import 'get_data_taxonomy_attribute_iam_policy_args.dart';
import 'get_data_taxonomy_attribute_iam_policy_result.dart';
import 'get_data_taxonomy_iam_policy_args.dart';
import 'get_data_taxonomy_iam_policy_result.dart';
import 'get_data_taxonomy_result.dart';
import 'get_entity_args.dart';
import 'get_entity_result.dart';
import 'get_entry_group_iam_policy_args.dart';
import 'get_entry_group_iam_policy_result.dart';
import 'get_entry_type_iam_policy_args.dart';
import 'get_entry_type_iam_policy_result.dart';
import 'get_environment_args.dart';
import 'get_environment_result.dart';
import 'get_governance_rule_iam_policy_args.dart';
import 'get_governance_rule_iam_policy_result.dart';
import 'get_lake_args.dart';
import 'get_lake_asset_iam_policy_args.dart';
import 'get_lake_asset_iam_policy_result.dart';
import 'get_lake_content_iam_policy_args.dart';
import 'get_lake_content_iam_policy_result.dart';
import 'get_lake_contentitem_iam_policy_args.dart';
import 'get_lake_contentitem_iam_policy_result.dart';
import 'get_lake_environment_iam_policy_args.dart';
import 'get_lake_environment_iam_policy_result.dart';
import 'get_lake_iam_policy_args.dart';
import 'get_lake_iam_policy_result.dart';
import 'get_lake_result.dart';
import 'get_lake_task_iam_policy_args.dart';
import 'get_lake_task_iam_policy_result.dart';
import 'get_lake_zone_iam_policy_args.dart';
import 'get_lake_zone_iam_policy_result.dart';
import 'get_partition_args.dart';
import 'get_partition_result.dart';
import 'get_task_args.dart';
import 'get_task_result.dart';
import 'get_zone_args.dart';
import 'get_zone_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_aspect_type_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAspectTypeIamPolicyResult> getAspectTypeIamPolicy(
  GetAspectTypeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getAspectTypeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAspectTypeIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAspectTypeIamPolicyResult> getAspectTypeIamPolicyOutput(
  GetAspectTypeIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getAspectTypeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAspectTypeIamPolicyResult.fromMap);
}

/// Retrieves an asset resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_asset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssetResult> getAsset(
  GetAssetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getAsset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssetResult.fromMap(result);
}

pulumi.Output<GetAssetResult> getAssetOutput(
  GetAssetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getAsset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAssetResult.fromMap);
}

/// Retrieves a Data Attribute resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_attribute_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttributeResult> getAttribute(
  GetAttributeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getAttribute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttributeResult.fromMap(result);
}

pulumi.Output<GetAttributeResult> getAttributeOutput(
  GetAttributeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getAttribute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAttributeResult.fromMap);
}

/// Get a content resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_content_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContentResult> getContent(
  GetContentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getContent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContentResult.fromMap(result);
}

pulumi.Output<GetContentResult> getContentOutput(
  GetContentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getContent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContentResult.fromMap);
}

/// Get a content resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_contentitem_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContentitemResult> getContentitem(
  GetContentitemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getContentitem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContentitemResult.fromMap(result);
}

pulumi.Output<GetContentitemResult> getContentitemOutput(
  GetContentitemArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getContentitem',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContentitemResult.fromMap);
}

/// Retrieves a DataAttributeBinding resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_data_attribute_binding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataAttributeBindingResult> getDataAttributeBinding(
  GetDataAttributeBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataAttributeBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataAttributeBindingResult.fromMap(result);
}

pulumi.Output<GetDataAttributeBindingResult> getDataAttributeBindingOutput(
  GetDataAttributeBindingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataAttributeBinding',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataAttributeBindingResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_data_attribute_binding_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataAttributeBindingIamPolicyResult> getDataAttributeBindingIamPolicy(
  GetDataAttributeBindingIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataAttributeBindingIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataAttributeBindingIamPolicyResult.fromMap(result);
}

pulumi.Output<GetDataAttributeBindingIamPolicyResult> getDataAttributeBindingIamPolicyOutput(
  GetDataAttributeBindingIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataAttributeBindingIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataAttributeBindingIamPolicyResult.fromMap);
}

/// Gets a DataScan resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_data_scan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataScanResult> getDataScan(
  GetDataScanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataScan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataScanResult.fromMap(result);
}

pulumi.Output<GetDataScanResult> getDataScanOutput(
  GetDataScanArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataScan',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataScanResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_data_scan_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataScanIamPolicyResult> getDataScanIamPolicy(
  GetDataScanIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataScanIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataScanIamPolicyResult.fromMap(result);
}

pulumi.Output<GetDataScanIamPolicyResult> getDataScanIamPolicyOutput(
  GetDataScanIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataScanIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataScanIamPolicyResult.fromMap);
}

/// Retrieves a DataTaxonomy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_data_taxonomy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataTaxonomyResult> getDataTaxonomy(
  GetDataTaxonomyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataTaxonomy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataTaxonomyResult.fromMap(result);
}

pulumi.Output<GetDataTaxonomyResult> getDataTaxonomyOutput(
  GetDataTaxonomyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataTaxonomy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataTaxonomyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_data_taxonomy_attribute_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataTaxonomyAttributeIamPolicyResult> getDataTaxonomyAttributeIamPolicy(
  GetDataTaxonomyAttributeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataTaxonomyAttributeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataTaxonomyAttributeIamPolicyResult.fromMap(result);
}

pulumi.Output<GetDataTaxonomyAttributeIamPolicyResult> getDataTaxonomyAttributeIamPolicyOutput(
  GetDataTaxonomyAttributeIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataTaxonomyAttributeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataTaxonomyAttributeIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_data_taxonomy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataTaxonomyIamPolicyResult> getDataTaxonomyIamPolicy(
  GetDataTaxonomyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataTaxonomyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataTaxonomyIamPolicyResult.fromMap(result);
}

pulumi.Output<GetDataTaxonomyIamPolicyResult> getDataTaxonomyIamPolicyOutput(
  GetDataTaxonomyIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataTaxonomyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataTaxonomyIamPolicyResult.fromMap);
}

/// Get a metadata entity.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_entity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityResult> getEntity(
  GetEntityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getEntity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityResult.fromMap(result);
}

pulumi.Output<GetEntityResult> getEntityOutput(
  GetEntityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getEntity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntityResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_entry_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntryGroupIamPolicyResult> getEntryGroupIamPolicy(
  GetEntryGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getEntryGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupIamPolicyResult.fromMap(result);
}

pulumi.Output<GetEntryGroupIamPolicyResult> getEntryGroupIamPolicyOutput(
  GetEntryGroupIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getEntryGroupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntryGroupIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_entry_type_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntryTypeIamPolicyResult> getEntryTypeIamPolicy(
  GetEntryTypeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getEntryTypeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryTypeIamPolicyResult.fromMap(result);
}

pulumi.Output<GetEntryTypeIamPolicyResult> getEntryTypeIamPolicyOutput(
  GetEntryTypeIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getEntryTypeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntryTypeIamPolicyResult.fromMap);
}

/// Get environment resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}

pulumi.Output<GetEnvironmentResult> getEnvironmentOutput(
  GetEnvironmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_governance_rule_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGovernanceRuleIamPolicyResult> getGovernanceRuleIamPolicy(
  GetGovernanceRuleIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getGovernanceRuleIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGovernanceRuleIamPolicyResult.fromMap(result);
}

pulumi.Output<GetGovernanceRuleIamPolicyResult> getGovernanceRuleIamPolicyOutput(
  GetGovernanceRuleIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getGovernanceRuleIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGovernanceRuleIamPolicyResult.fromMap);
}

/// Retrieves a lake resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_lake_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLakeResult> getLake(
  GetLakeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLake',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLakeResult.fromMap(result);
}

pulumi.Output<GetLakeResult> getLakeOutput(
  GetLakeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLake',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLakeResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_lake_asset_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLakeAssetIamPolicyResult> getLakeAssetIamPolicy(
  GetLakeAssetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeAssetIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLakeAssetIamPolicyResult.fromMap(result);
}

pulumi.Output<GetLakeAssetIamPolicyResult> getLakeAssetIamPolicyOutput(
  GetLakeAssetIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeAssetIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLakeAssetIamPolicyResult.fromMap);
}

/// Gets the access control policy for a contentitem resource. A NOT_FOUND error is returned if the resource does not exist. An empty policy is returned if the resource exists but does not have a policy set on it.Caller must have Google IAM dataplex.content.getIamPolicy permission on the resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_lake_content_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLakeContentIamPolicyResult> getLakeContentIamPolicy(
  GetLakeContentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeContentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLakeContentIamPolicyResult.fromMap(result);
}

pulumi.Output<GetLakeContentIamPolicyResult> getLakeContentIamPolicyOutput(
  GetLakeContentIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeContentIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLakeContentIamPolicyResult.fromMap);
}

/// Gets the access control policy for a contentitem resource. A NOT_FOUND error is returned if the resource does not exist. An empty policy is returned if the resource exists but does not have a policy set on it.Caller must have Google IAM dataplex.content.getIamPolicy permission on the resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_lake_contentitem_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLakeContentitemIamPolicyResult> getLakeContentitemIamPolicy(
  GetLakeContentitemIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeContentitemIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLakeContentitemIamPolicyResult.fromMap(result);
}

pulumi.Output<GetLakeContentitemIamPolicyResult> getLakeContentitemIamPolicyOutput(
  GetLakeContentitemIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeContentitemIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLakeContentitemIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_lake_environment_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLakeEnvironmentIamPolicyResult> getLakeEnvironmentIamPolicy(
  GetLakeEnvironmentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeEnvironmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLakeEnvironmentIamPolicyResult.fromMap(result);
}

pulumi.Output<GetLakeEnvironmentIamPolicyResult> getLakeEnvironmentIamPolicyOutput(
  GetLakeEnvironmentIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeEnvironmentIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLakeEnvironmentIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_lake_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLakeIamPolicyResult> getLakeIamPolicy(
  GetLakeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLakeIamPolicyResult.fromMap(result);
}

pulumi.Output<GetLakeIamPolicyResult> getLakeIamPolicyOutput(
  GetLakeIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLakeIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_lake_task_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLakeTaskIamPolicyResult> getLakeTaskIamPolicy(
  GetLakeTaskIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeTaskIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLakeTaskIamPolicyResult.fromMap(result);
}

pulumi.Output<GetLakeTaskIamPolicyResult> getLakeTaskIamPolicyOutput(
  GetLakeTaskIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeTaskIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLakeTaskIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_lake_zone_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLakeZoneIamPolicyResult> getLakeZoneIamPolicy(
  GetLakeZoneIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeZoneIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLakeZoneIamPolicyResult.fromMap(result);
}

pulumi.Output<GetLakeZoneIamPolicyResult> getLakeZoneIamPolicyOutput(
  GetLakeZoneIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeZoneIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLakeZoneIamPolicyResult.fromMap);
}

/// Get a metadata partition of an entity.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_partition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartitionResult> getPartition(
  GetPartitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getPartition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartitionResult.fromMap(result);
}

pulumi.Output<GetPartitionResult> getPartitionOutput(
  GetPartitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getPartition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPartitionResult.fromMap);
}

/// Get task resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_task_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaskResult> getTask(
  GetTaskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskResult.fromMap(result);
}

pulumi.Output<GetTaskResult> getTaskOutput(
  GetTaskArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getTask',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTaskResult.fromMap);
}

/// Retrieves a zone resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_v1_get_zone_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZoneResult> getZone(
  GetZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZoneResult.fromMap(result);
}

pulumi.Output<GetZoneResult> getZoneOutput(
  GetZoneArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataplex/v1:getZone',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetZoneResult.fromMap);
}
