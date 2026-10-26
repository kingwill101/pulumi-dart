import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workstation_args.dart';
import 'get_workstation_cluster_args.dart';
import 'get_workstation_cluster_result.dart';
import 'get_workstation_cluster_workstation_config_iam_policy_args.dart';
import 'get_workstation_cluster_workstation_config_iam_policy_result.dart';
import 'get_workstation_cluster_workstation_config_iam_policy_workstations_v1beta_args.dart';
import 'get_workstation_cluster_workstation_config_iam_policy_workstations_v1beta_result.dart';
import 'get_workstation_cluster_workstation_config_workstation_iam_policy_args.dart';
import 'get_workstation_cluster_workstation_config_workstation_iam_policy_result.dart';
import 'get_workstation_cluster_workstation_config_workstation_iam_policy_workstations_v1beta_args.dart';
import 'get_workstation_cluster_workstation_config_workstation_iam_policy_workstations_v1beta_result.dart';
import 'get_workstation_cluster_workstations_v1beta_args.dart';
import 'get_workstation_cluster_workstations_v1beta_result.dart';
import 'get_workstation_config_args.dart';
import 'get_workstation_config_result.dart';
import 'get_workstation_config_workstations_v1beta_args.dart';
import 'get_workstation_config_workstations_v1beta_result.dart';
import 'get_workstation_result.dart';
import 'get_workstation_workstations_v1beta_args.dart';
import 'get_workstation_workstations_v1beta_result.dart';

/// Returns the requested workstation.
/// [args] Arguments passed to this invoke. {@macro pulumi_workstations_v1_get_workstation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkstationResult> getWorkstation(
  GetWorkstationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationResult.fromMap(result);
}

pulumi.Output<GetWorkstationResult> getWorkstationOutput(
  GetWorkstationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkstationResult.fromMap);
}

/// Returns the requested workstation cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_workstations_v1_get_workstation_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkstationClusterResult> getWorkstationCluster(
  GetWorkstationClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstationCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationClusterResult.fromMap(result);
}

pulumi.Output<GetWorkstationClusterResult> getWorkstationClusterOutput(
  GetWorkstationClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstationCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkstationClusterResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_workstations_v1_get_workstation_cluster_workstation_config_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkstationClusterWorkstationConfigIamPolicyResult> getWorkstationClusterWorkstationConfigIamPolicy(
  GetWorkstationClusterWorkstationConfigIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstationClusterWorkstationConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationClusterWorkstationConfigIamPolicyResult.fromMap(result);
}

pulumi.Output<GetWorkstationClusterWorkstationConfigIamPolicyResult> getWorkstationClusterWorkstationConfigIamPolicyOutput(
  GetWorkstationClusterWorkstationConfigIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstationClusterWorkstationConfigIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkstationClusterWorkstationConfigIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_workstations_v1_get_workstation_cluster_workstation_config_workstation_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkstationClusterWorkstationConfigWorkstationIamPolicyResult> getWorkstationClusterWorkstationConfigWorkstationIamPolicy(
  GetWorkstationClusterWorkstationConfigWorkstationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstationClusterWorkstationConfigWorkstationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationClusterWorkstationConfigWorkstationIamPolicyResult.fromMap(result);
}

pulumi.Output<GetWorkstationClusterWorkstationConfigWorkstationIamPolicyResult> getWorkstationClusterWorkstationConfigWorkstationIamPolicyOutput(
  GetWorkstationClusterWorkstationConfigWorkstationIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstationClusterWorkstationConfigWorkstationIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkstationClusterWorkstationConfigWorkstationIamPolicyResult.fromMap);
}

/// Returns the requested workstation configuration.
/// [args] Arguments passed to this invoke. {@macro pulumi_workstations_v1_get_workstation_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkstationConfigResult> getWorkstationConfig(
  GetWorkstationConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstationConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationConfigResult.fromMap(result);
}

pulumi.Output<GetWorkstationConfigResult> getWorkstationConfigOutput(
  GetWorkstationConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstationConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkstationConfigResult.fromMap);
}

/// Returns the requested workstation.
/// [args] Arguments passed to this invoke. {@macro pulumi_workstations_v1beta_get_workstation_workstations_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkstationWorkstationsV1betaResult> getWorkstationWorkstationsV1beta(
  GetWorkstationWorkstationsV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationWorkstationsV1betaResult.fromMap(result);
}

pulumi.Output<GetWorkstationWorkstationsV1betaResult> getWorkstationWorkstationsV1betaOutput(
  GetWorkstationWorkstationsV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkstationWorkstationsV1betaResult.fromMap);
}

/// Returns the requested workstation cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_workstations_v1beta_get_workstation_cluster_workstations_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkstationClusterWorkstationsV1betaResult> getWorkstationClusterWorkstationsV1beta(
  GetWorkstationClusterWorkstationsV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstationCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationClusterWorkstationsV1betaResult.fromMap(result);
}

pulumi.Output<GetWorkstationClusterWorkstationsV1betaResult> getWorkstationClusterWorkstationsV1betaOutput(
  GetWorkstationClusterWorkstationsV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstationCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkstationClusterWorkstationsV1betaResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_workstations_v1beta_get_workstation_cluster_workstation_config_iam_policy_workstations_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1betaResult> getWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1beta(
  GetWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstationClusterWorkstationConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1betaResult.fromMap(result);
}

pulumi.Output<GetWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1betaResult> getWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1betaOutput(
  GetWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstationClusterWorkstationConfigIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1betaResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_workstations_v1beta_get_workstation_cluster_workstation_config_workstation_iam_policy_workstations_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkstationClusterWorkstationConfigWorkstationIamPolicyWorkstationsV1betaResult> getWorkstationClusterWorkstationConfigWorkstationIamPolicyWorkstationsV1beta(
  GetWorkstationClusterWorkstationConfigWorkstationIamPolicyWorkstationsV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstationClusterWorkstationConfigWorkstationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationClusterWorkstationConfigWorkstationIamPolicyWorkstationsV1betaResult.fromMap(result);
}

pulumi.Output<GetWorkstationClusterWorkstationConfigWorkstationIamPolicyWorkstationsV1betaResult> getWorkstationClusterWorkstationConfigWorkstationIamPolicyWorkstationsV1betaOutput(
  GetWorkstationClusterWorkstationConfigWorkstationIamPolicyWorkstationsV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstationClusterWorkstationConfigWorkstationIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkstationClusterWorkstationConfigWorkstationIamPolicyWorkstationsV1betaResult.fromMap);
}

/// Returns the requested workstation configuration.
/// [args] Arguments passed to this invoke. {@macro pulumi_workstations_v1beta_get_workstation_config_workstations_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkstationConfigWorkstationsV1betaResult> getWorkstationConfigWorkstationsV1beta(
  GetWorkstationConfigWorkstationsV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstationConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationConfigWorkstationsV1betaResult.fromMap(result);
}

pulumi.Output<GetWorkstationConfigWorkstationsV1betaResult> getWorkstationConfigWorkstationsV1betaOutput(
  GetWorkstationConfigWorkstationsV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstationConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkstationConfigWorkstationsV1betaResult.fromMap);
}
