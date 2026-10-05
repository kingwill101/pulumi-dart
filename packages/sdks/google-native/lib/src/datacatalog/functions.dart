import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entry_args.dart';
import 'get_entry_datacatalog_v1beta1_args.dart';
import 'get_entry_datacatalog_v1beta1_result.dart';
import 'get_entry_group_args.dart';
import 'get_entry_group_datacatalog_v1beta1_args.dart';
import 'get_entry_group_datacatalog_v1beta1_result.dart';
import 'get_entry_group_iam_policy_args.dart';
import 'get_entry_group_iam_policy_datacatalog_v1beta1_args.dart';
import 'get_entry_group_iam_policy_datacatalog_v1beta1_result.dart';
import 'get_entry_group_iam_policy_result.dart';
import 'get_entry_group_result.dart';
import 'get_entry_result.dart';
import 'get_policy_tag_args.dart';
import 'get_policy_tag_datacatalog_v1beta1_args.dart';
import 'get_policy_tag_datacatalog_v1beta1_result.dart';
import 'get_policy_tag_result.dart';
import 'get_tag_template_args.dart';
import 'get_tag_template_datacatalog_v1beta1_args.dart';
import 'get_tag_template_datacatalog_v1beta1_result.dart';
import 'get_tag_template_iam_policy_args.dart';
import 'get_tag_template_iam_policy_datacatalog_v1beta1_args.dart';
import 'get_tag_template_iam_policy_datacatalog_v1beta1_result.dart';
import 'get_tag_template_iam_policy_result.dart';
import 'get_tag_template_result.dart';
import 'get_taxonomy_args.dart';
import 'get_taxonomy_datacatalog_v1beta1_args.dart';
import 'get_taxonomy_datacatalog_v1beta1_result.dart';
import 'get_taxonomy_iam_policy_args.dart';
import 'get_taxonomy_iam_policy_datacatalog_v1beta1_args.dart';
import 'get_taxonomy_iam_policy_datacatalog_v1beta1_result.dart';
import 'get_taxonomy_iam_policy_result.dart';
import 'get_taxonomy_policy_tag_iam_policy_args.dart';
import 'get_taxonomy_policy_tag_iam_policy_datacatalog_v1beta1_args.dart';
import 'get_taxonomy_policy_tag_iam_policy_datacatalog_v1beta1_result.dart';
import 'get_taxonomy_policy_tag_iam_policy_result.dart';
import 'get_taxonomy_result.dart';

/// Gets an entry.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1_get_entry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntryResult> getEntry(
  GetEntryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getEntry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryResult.fromMap(result);
}

pulumi.Output<GetEntryResult> getEntryOutput(
  GetEntryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getEntry',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntryResult.fromMap);
}

/// Gets an entry group.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1_get_entry_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntryGroupResult> getEntryGroup(
  GetEntryGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getEntryGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupResult.fromMap(result);
}

pulumi.Output<GetEntryGroupResult> getEntryGroupOutput(
  GetEntryGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getEntryGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntryGroupResult.fromMap);
}

/// Gets the access control policy for a resource. May return: * A`NOT_FOUND` error if the resource doesn't exist or you don't have the permission to view it. * An empty policy if the resource exists but doesn't have a set policy. Supported resources are: - Tag templates - Entry groups Note: This method doesn't get policies from Google Cloud Platform resources ingested into Data Catalog. To call this method, you must have the following Google IAM permissions: - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag templates. - `datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1_get_entry_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntryGroupIamPolicyResult> getEntryGroupIamPolicy(
  GetEntryGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getEntryGroupIamPolicy',
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
    'google-native:datacatalog/v1:getEntryGroupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntryGroupIamPolicyResult.fromMap);
}

/// Gets a policy tag.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1_get_policy_tag_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyTagResult> getPolicyTag(
  GetPolicyTagArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getPolicyTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyTagResult.fromMap(result);
}

pulumi.Output<GetPolicyTagResult> getPolicyTagOutput(
  GetPolicyTagArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getPolicyTag',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyTagResult.fromMap);
}

/// Gets a tag template.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1_get_tag_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagTemplateResult> getTagTemplate(
  GetTagTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTagTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagTemplateResult.fromMap(result);
}

pulumi.Output<GetTagTemplateResult> getTagTemplateOutput(
  GetTagTemplateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTagTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagTemplateResult.fromMap);
}

/// Gets the access control policy for a resource. May return: * A`NOT_FOUND` error if the resource doesn't exist or you don't have the permission to view it. * An empty policy if the resource exists but doesn't have a set policy. Supported resources are: - Tag templates - Entry groups Note: This method doesn't get policies from Google Cloud Platform resources ingested into Data Catalog. To call this method, you must have the following Google IAM permissions: - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag templates. - `datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1_get_tag_template_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagTemplateIamPolicyResult> getTagTemplateIamPolicy(
  GetTagTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTagTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagTemplateIamPolicyResult.fromMap(result);
}

pulumi.Output<GetTagTemplateIamPolicyResult> getTagTemplateIamPolicyOutput(
  GetTagTemplateIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTagTemplateIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagTemplateIamPolicyResult.fromMap);
}

/// Gets a taxonomy.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1_get_taxonomy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaxonomyResult> getTaxonomy(
  GetTaxonomyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTaxonomy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyResult.fromMap(result);
}

pulumi.Output<GetTaxonomyResult> getTaxonomyOutput(
  GetTaxonomyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTaxonomy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTaxonomyResult.fromMap);
}

/// Gets the IAM policy for a policy tag or a taxonomy.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1_get_taxonomy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaxonomyIamPolicyResult> getTaxonomyIamPolicy(
  GetTaxonomyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTaxonomyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyIamPolicyResult.fromMap(result);
}

pulumi.Output<GetTaxonomyIamPolicyResult> getTaxonomyIamPolicyOutput(
  GetTaxonomyIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTaxonomyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTaxonomyIamPolicyResult.fromMap);
}

/// Gets the IAM policy for a policy tag or a taxonomy.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1_get_taxonomy_policy_tag_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaxonomyPolicyTagIamPolicyResult> getTaxonomyPolicyTagIamPolicy(
  GetTaxonomyPolicyTagIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTaxonomyPolicyTagIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyPolicyTagIamPolicyResult.fromMap(result);
}

pulumi.Output<GetTaxonomyPolicyTagIamPolicyResult> getTaxonomyPolicyTagIamPolicyOutput(
  GetTaxonomyPolicyTagIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTaxonomyPolicyTagIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTaxonomyPolicyTagIamPolicyResult.fromMap);
}

/// Gets an entry.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1beta1_get_entry_datacatalog_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntryDatacatalogV1beta1Result> getEntryDatacatalogV1beta1(
  GetEntryDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getEntry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryDatacatalogV1beta1Result.fromMap(result);
}

pulumi.Output<GetEntryDatacatalogV1beta1Result> getEntryDatacatalogV1beta1Output(
  GetEntryDatacatalogV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getEntry',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntryDatacatalogV1beta1Result.fromMap);
}

/// Gets an EntryGroup.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1beta1_get_entry_group_datacatalog_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntryGroupDatacatalogV1beta1Result> getEntryGroupDatacatalogV1beta1(
  GetEntryGroupDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getEntryGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupDatacatalogV1beta1Result.fromMap(result);
}

pulumi.Output<GetEntryGroupDatacatalogV1beta1Result> getEntryGroupDatacatalogV1beta1Output(
  GetEntryGroupDatacatalogV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getEntryGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntryGroupDatacatalogV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. A `NOT_FOUND` error is returned if the resource does not exist. An empty policy is returned if the resource exists but does not have a policy set on it. Supported resources are: - Tag templates. - Entries. - Entry groups. Note, this method cannot be used to manage policies for BigQuery, Pub/Sub and any external Google Cloud Platform resources synced to Data Catalog. Callers must have following Google IAM permission - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag templates. - `datacatalog.entries.getIamPolicy` to get policies on entries. - `datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1beta1_get_entry_group_iam_policy_datacatalog_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntryGroupIamPolicyDatacatalogV1beta1Result> getEntryGroupIamPolicyDatacatalogV1beta1(
  GetEntryGroupIamPolicyDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getEntryGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupIamPolicyDatacatalogV1beta1Result.fromMap(result);
}

pulumi.Output<GetEntryGroupIamPolicyDatacatalogV1beta1Result> getEntryGroupIamPolicyDatacatalogV1beta1Output(
  GetEntryGroupIamPolicyDatacatalogV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getEntryGroupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntryGroupIamPolicyDatacatalogV1beta1Result.fromMap);
}

/// Gets a policy tag.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1beta1_get_policy_tag_datacatalog_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyTagDatacatalogV1beta1Result> getPolicyTagDatacatalogV1beta1(
  GetPolicyTagDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getPolicyTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyTagDatacatalogV1beta1Result.fromMap(result);
}

pulumi.Output<GetPolicyTagDatacatalogV1beta1Result> getPolicyTagDatacatalogV1beta1Output(
  GetPolicyTagDatacatalogV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getPolicyTag',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyTagDatacatalogV1beta1Result.fromMap);
}

/// Gets a tag template.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1beta1_get_tag_template_datacatalog_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagTemplateDatacatalogV1beta1Result> getTagTemplateDatacatalogV1beta1(
  GetTagTemplateDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTagTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagTemplateDatacatalogV1beta1Result.fromMap(result);
}

pulumi.Output<GetTagTemplateDatacatalogV1beta1Result> getTagTemplateDatacatalogV1beta1Output(
  GetTagTemplateDatacatalogV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTagTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagTemplateDatacatalogV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. A `NOT_FOUND` error is returned if the resource does not exist. An empty policy is returned if the resource exists but does not have a policy set on it. Supported resources are: - Tag templates. - Entries. - Entry groups. Note, this method cannot be used to manage policies for BigQuery, Pub/Sub and any external Google Cloud Platform resources synced to Data Catalog. Callers must have following Google IAM permission - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag templates. - `datacatalog.entries.getIamPolicy` to get policies on entries. - `datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1beta1_get_tag_template_iam_policy_datacatalog_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagTemplateIamPolicyDatacatalogV1beta1Result> getTagTemplateIamPolicyDatacatalogV1beta1(
  GetTagTemplateIamPolicyDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTagTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagTemplateIamPolicyDatacatalogV1beta1Result.fromMap(result);
}

pulumi.Output<GetTagTemplateIamPolicyDatacatalogV1beta1Result> getTagTemplateIamPolicyDatacatalogV1beta1Output(
  GetTagTemplateIamPolicyDatacatalogV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTagTemplateIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagTemplateIamPolicyDatacatalogV1beta1Result.fromMap);
}

/// Gets a taxonomy.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1beta1_get_taxonomy_datacatalog_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaxonomyDatacatalogV1beta1Result> getTaxonomyDatacatalogV1beta1(
  GetTaxonomyDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTaxonomy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyDatacatalogV1beta1Result.fromMap(result);
}

pulumi.Output<GetTaxonomyDatacatalogV1beta1Result> getTaxonomyDatacatalogV1beta1Output(
  GetTaxonomyDatacatalogV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTaxonomy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTaxonomyDatacatalogV1beta1Result.fromMap);
}

/// Gets the IAM policy for a taxonomy or a policy tag.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1beta1_get_taxonomy_iam_policy_datacatalog_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaxonomyIamPolicyDatacatalogV1beta1Result> getTaxonomyIamPolicyDatacatalogV1beta1(
  GetTaxonomyIamPolicyDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTaxonomyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyIamPolicyDatacatalogV1beta1Result.fromMap(result);
}

pulumi.Output<GetTaxonomyIamPolicyDatacatalogV1beta1Result> getTaxonomyIamPolicyDatacatalogV1beta1Output(
  GetTaxonomyIamPolicyDatacatalogV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTaxonomyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTaxonomyIamPolicyDatacatalogV1beta1Result.fromMap);
}

/// Gets the IAM policy for a taxonomy or a policy tag.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_v1beta1_get_taxonomy_policy_tag_iam_policy_datacatalog_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaxonomyPolicyTagIamPolicyDatacatalogV1beta1Result> getTaxonomyPolicyTagIamPolicyDatacatalogV1beta1(
  GetTaxonomyPolicyTagIamPolicyDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTaxonomyPolicyTagIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyPolicyTagIamPolicyDatacatalogV1beta1Result.fromMap(result);
}

pulumi.Output<GetTaxonomyPolicyTagIamPolicyDatacatalogV1beta1Result> getTaxonomyPolicyTagIamPolicyDatacatalogV1beta1Output(
  GetTaxonomyPolicyTagIamPolicyDatacatalogV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTaxonomyPolicyTagIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTaxonomyPolicyTagIamPolicyDatacatalogV1beta1Result.fromMap);
}
