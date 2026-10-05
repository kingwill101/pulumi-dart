import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bare_metal_admin_cluster_args.dart';
import 'get_bare_metal_admin_cluster_iam_policy_args.dart';
import 'get_bare_metal_admin_cluster_iam_policy_result.dart';
import 'get_bare_metal_admin_cluster_result.dart';
import 'get_bare_metal_cluster_args.dart';
import 'get_bare_metal_cluster_bare_metal_node_pool_iam_policy_args.dart';
import 'get_bare_metal_cluster_bare_metal_node_pool_iam_policy_result.dart';
import 'get_bare_metal_cluster_iam_policy_args.dart';
import 'get_bare_metal_cluster_iam_policy_result.dart';
import 'get_bare_metal_cluster_result.dart';
import 'get_bare_metal_node_pool_args.dart';
import 'get_bare_metal_node_pool_result.dart';
import 'get_vmware_admin_cluster_iam_policy_args.dart';
import 'get_vmware_admin_cluster_iam_policy_result.dart';
import 'get_vmware_cluster_args.dart';
import 'get_vmware_cluster_iam_policy_args.dart';
import 'get_vmware_cluster_iam_policy_result.dart';
import 'get_vmware_cluster_result.dart';
import 'get_vmware_cluster_vmware_node_pool_iam_policy_args.dart';
import 'get_vmware_cluster_vmware_node_pool_iam_policy_result.dart';
import 'get_vmware_node_pool_args.dart';
import 'get_vmware_node_pool_result.dart';

/// Gets details of a single bare metal admin cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_bare_metal_admin_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBareMetalAdminClusterResult> getBareMetalAdminCluster(
  GetBareMetalAdminClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalAdminCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalAdminClusterResult.fromMap(result);
}

pulumi.Output<GetBareMetalAdminClusterResult> getBareMetalAdminClusterOutput(
  GetBareMetalAdminClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalAdminCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBareMetalAdminClusterResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_bare_metal_admin_cluster_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBareMetalAdminClusterIamPolicyResult> getBareMetalAdminClusterIamPolicy(
  GetBareMetalAdminClusterIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalAdminClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalAdminClusterIamPolicyResult.fromMap(result);
}

pulumi.Output<GetBareMetalAdminClusterIamPolicyResult> getBareMetalAdminClusterIamPolicyOutput(
  GetBareMetalAdminClusterIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalAdminClusterIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBareMetalAdminClusterIamPolicyResult.fromMap);
}

/// Gets details of a single bare metal Cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_bare_metal_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBareMetalClusterResult> getBareMetalCluster(
  GetBareMetalClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalClusterResult.fromMap(result);
}

pulumi.Output<GetBareMetalClusterResult> getBareMetalClusterOutput(
  GetBareMetalClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBareMetalClusterResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_bare_metal_cluster_bare_metal_node_pool_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBareMetalClusterBareMetalNodePoolIamPolicyResult> getBareMetalClusterBareMetalNodePoolIamPolicy(
  GetBareMetalClusterBareMetalNodePoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalClusterBareMetalNodePoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalClusterBareMetalNodePoolIamPolicyResult.fromMap(result);
}

pulumi.Output<GetBareMetalClusterBareMetalNodePoolIamPolicyResult> getBareMetalClusterBareMetalNodePoolIamPolicyOutput(
  GetBareMetalClusterBareMetalNodePoolIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalClusterBareMetalNodePoolIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBareMetalClusterBareMetalNodePoolIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_bare_metal_cluster_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBareMetalClusterIamPolicyResult> getBareMetalClusterIamPolicy(
  GetBareMetalClusterIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalClusterIamPolicyResult.fromMap(result);
}

pulumi.Output<GetBareMetalClusterIamPolicyResult> getBareMetalClusterIamPolicyOutput(
  GetBareMetalClusterIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalClusterIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBareMetalClusterIamPolicyResult.fromMap);
}

/// Gets details of a single bare metal node pool.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_bare_metal_node_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBareMetalNodePoolResult> getBareMetalNodePool(
  GetBareMetalNodePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalNodePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalNodePoolResult.fromMap(result);
}

pulumi.Output<GetBareMetalNodePoolResult> getBareMetalNodePoolOutput(
  GetBareMetalNodePoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalNodePool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBareMetalNodePoolResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_vmware_admin_cluster_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVmwareAdminClusterIamPolicyResult> getVmwareAdminClusterIamPolicy(
  GetVmwareAdminClusterIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareAdminClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmwareAdminClusterIamPolicyResult.fromMap(result);
}

pulumi.Output<GetVmwareAdminClusterIamPolicyResult> getVmwareAdminClusterIamPolicyOutput(
  GetVmwareAdminClusterIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareAdminClusterIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVmwareAdminClusterIamPolicyResult.fromMap);
}

/// Gets details of a single VMware Cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_vmware_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVmwareClusterResult> getVmwareCluster(
  GetVmwareClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmwareClusterResult.fromMap(result);
}

pulumi.Output<GetVmwareClusterResult> getVmwareClusterOutput(
  GetVmwareClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVmwareClusterResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_vmware_cluster_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVmwareClusterIamPolicyResult> getVmwareClusterIamPolicy(
  GetVmwareClusterIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmwareClusterIamPolicyResult.fromMap(result);
}

pulumi.Output<GetVmwareClusterIamPolicyResult> getVmwareClusterIamPolicyOutput(
  GetVmwareClusterIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareClusterIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVmwareClusterIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_vmware_cluster_vmware_node_pool_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVmwareClusterVmwareNodePoolIamPolicyResult> getVmwareClusterVmwareNodePoolIamPolicy(
  GetVmwareClusterVmwareNodePoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareClusterVmwareNodePoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmwareClusterVmwareNodePoolIamPolicyResult.fromMap(result);
}

pulumi.Output<GetVmwareClusterVmwareNodePoolIamPolicyResult> getVmwareClusterVmwareNodePoolIamPolicyOutput(
  GetVmwareClusterVmwareNodePoolIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareClusterVmwareNodePoolIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVmwareClusterVmwareNodePoolIamPolicyResult.fromMap);
}

/// Gets details of a single VMware node pool.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkeonprem_v1_get_vmware_node_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVmwareNodePoolResult> getVmwareNodePool(
  GetVmwareNodePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareNodePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmwareNodePoolResult.fromMap(result);
}

pulumi.Output<GetVmwareNodePoolResult> getVmwareNodePoolOutput(
  GetVmwareNodePoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareNodePool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVmwareNodePoolResult.fromMap);
}
