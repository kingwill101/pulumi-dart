import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_profile_args.dart';
import 'get_connection_profile_datamigration_v1beta1_args.dart';
import 'get_connection_profile_datamigration_v1beta1_result.dart';
import 'get_connection_profile_iam_policy_args.dart';
import 'get_connection_profile_iam_policy_datamigration_v1beta1_args.dart';
import 'get_connection_profile_iam_policy_datamigration_v1beta1_result.dart';
import 'get_connection_profile_iam_policy_result.dart';
import 'get_connection_profile_result.dart';
import 'get_conversion_workspace_args.dart';
import 'get_conversion_workspace_iam_policy_args.dart';
import 'get_conversion_workspace_iam_policy_result.dart';
import 'get_conversion_workspace_result.dart';
import 'get_mapping_rule_args.dart';
import 'get_mapping_rule_result.dart';
import 'get_migration_job_args.dart';
import 'get_migration_job_datamigration_v1beta1_args.dart';
import 'get_migration_job_datamigration_v1beta1_result.dart';
import 'get_migration_job_iam_policy_args.dart';
import 'get_migration_job_iam_policy_datamigration_v1beta1_args.dart';
import 'get_migration_job_iam_policy_datamigration_v1beta1_result.dart';
import 'get_migration_job_iam_policy_result.dart';
import 'get_migration_job_result.dart';
import 'get_private_connection_args.dart';
import 'get_private_connection_iam_policy_args.dart';
import 'get_private_connection_iam_policy_result.dart';
import 'get_private_connection_result.dart';

/// Gets details of a single connection profile.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_connection_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionProfileResult> getConnectionProfile(
  GetConnectionProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConnectionProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileResult.fromMap(result);
}

pulumi.Output<GetConnectionProfileResult> getConnectionProfileOutput(
  GetConnectionProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConnectionProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionProfileResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_connection_profile_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionProfileIamPolicyResult> getConnectionProfileIamPolicy(
  GetConnectionProfileIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConnectionProfileIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileIamPolicyResult.fromMap(result);
}

pulumi.Output<GetConnectionProfileIamPolicyResult> getConnectionProfileIamPolicyOutput(
  GetConnectionProfileIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConnectionProfileIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionProfileIamPolicyResult.fromMap);
}

/// Gets details of a single conversion workspace.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_conversion_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConversionWorkspaceResult> getConversionWorkspace(
  GetConversionWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConversionWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversionWorkspaceResult.fromMap(result);
}

pulumi.Output<GetConversionWorkspaceResult> getConversionWorkspaceOutput(
  GetConversionWorkspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConversionWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConversionWorkspaceResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_conversion_workspace_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConversionWorkspaceIamPolicyResult> getConversionWorkspaceIamPolicy(
  GetConversionWorkspaceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConversionWorkspaceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversionWorkspaceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetConversionWorkspaceIamPolicyResult> getConversionWorkspaceIamPolicyOutput(
  GetConversionWorkspaceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConversionWorkspaceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConversionWorkspaceIamPolicyResult.fromMap);
}

/// Gets the details of a mapping rule.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_mapping_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMappingRuleResult> getMappingRule(
  GetMappingRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getMappingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMappingRuleResult.fromMap(result);
}

pulumi.Output<GetMappingRuleResult> getMappingRuleOutput(
  GetMappingRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datamigration/v1:getMappingRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMappingRuleResult.fromMap);
}

/// Gets details of a single migration job.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_migration_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrationJobResult> getMigrationJob(
  GetMigrationJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getMigrationJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationJobResult.fromMap(result);
}

pulumi.Output<GetMigrationJobResult> getMigrationJobOutput(
  GetMigrationJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datamigration/v1:getMigrationJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMigrationJobResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_migration_job_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrationJobIamPolicyResult> getMigrationJobIamPolicy(
  GetMigrationJobIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getMigrationJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationJobIamPolicyResult.fromMap(result);
}

pulumi.Output<GetMigrationJobIamPolicyResult> getMigrationJobIamPolicyOutput(
  GetMigrationJobIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datamigration/v1:getMigrationJobIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMigrationJobIamPolicyResult.fromMap);
}

/// Gets details of a single private connection.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_private_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateConnectionResult> getPrivateConnection(
  GetPrivateConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getPrivateConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateConnectionResult.fromMap(result);
}

pulumi.Output<GetPrivateConnectionResult> getPrivateConnectionOutput(
  GetPrivateConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datamigration/v1:getPrivateConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateConnectionResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_private_connection_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateConnectionIamPolicyResult> getPrivateConnectionIamPolicy(
  GetPrivateConnectionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getPrivateConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateConnectionIamPolicyResult.fromMap(result);
}

pulumi.Output<GetPrivateConnectionIamPolicyResult> getPrivateConnectionIamPolicyOutput(
  GetPrivateConnectionIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datamigration/v1:getPrivateConnectionIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateConnectionIamPolicyResult.fromMap);
}

/// Gets details of a single connection profile.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1beta1_get_connection_profile_datamigration_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionProfileDatamigrationV1beta1Result> getConnectionProfileDatamigrationV1beta1(
  GetConnectionProfileDatamigrationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getConnectionProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileDatamigrationV1beta1Result.fromMap(result);
}

pulumi.Output<GetConnectionProfileDatamigrationV1beta1Result> getConnectionProfileDatamigrationV1beta1Output(
  GetConnectionProfileDatamigrationV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getConnectionProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionProfileDatamigrationV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1beta1_get_connection_profile_iam_policy_datamigration_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionProfileIamPolicyDatamigrationV1beta1Result> getConnectionProfileIamPolicyDatamigrationV1beta1(
  GetConnectionProfileIamPolicyDatamigrationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getConnectionProfileIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileIamPolicyDatamigrationV1beta1Result.fromMap(result);
}

pulumi.Output<GetConnectionProfileIamPolicyDatamigrationV1beta1Result> getConnectionProfileIamPolicyDatamigrationV1beta1Output(
  GetConnectionProfileIamPolicyDatamigrationV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getConnectionProfileIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionProfileIamPolicyDatamigrationV1beta1Result.fromMap);
}

/// Gets details of a single migration job.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1beta1_get_migration_job_datamigration_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrationJobDatamigrationV1beta1Result> getMigrationJobDatamigrationV1beta1(
  GetMigrationJobDatamigrationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getMigrationJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationJobDatamigrationV1beta1Result.fromMap(result);
}

pulumi.Output<GetMigrationJobDatamigrationV1beta1Result> getMigrationJobDatamigrationV1beta1Output(
  GetMigrationJobDatamigrationV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getMigrationJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMigrationJobDatamigrationV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1beta1_get_migration_job_iam_policy_datamigration_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrationJobIamPolicyDatamigrationV1beta1Result> getMigrationJobIamPolicyDatamigrationV1beta1(
  GetMigrationJobIamPolicyDatamigrationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getMigrationJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationJobIamPolicyDatamigrationV1beta1Result.fromMap(result);
}

pulumi.Output<GetMigrationJobIamPolicyDatamigrationV1beta1Result> getMigrationJobIamPolicyDatamigrationV1beta1Output(
  GetMigrationJobIamPolicyDatamigrationV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getMigrationJobIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMigrationJobIamPolicyDatamigrationV1beta1Result.fromMap);
}
