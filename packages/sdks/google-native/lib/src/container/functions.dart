import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_args.dart';
import 'get_cluster_container_v1beta1_args.dart';
import 'get_cluster_container_v1beta1_result.dart';
import 'get_cluster_result.dart';
import 'get_kubeconfig_args.dart';
import 'get_kubeconfig_container_v1beta1_args.dart';
import 'get_kubeconfig_container_v1beta1_result.dart';
import 'get_kubeconfig_result.dart';
import 'get_node_pool_args.dart';
import 'get_node_pool_container_v1beta1_args.dart';
import 'get_node_pool_container_v1beta1_result.dart';
import 'get_node_pool_result.dart';
import 'get_server_config_args.dart';
import 'get_server_config_container_v1beta1_args.dart';
import 'get_server_config_container_v1beta1_result.dart';
import 'get_server_config_result.dart';

/// Generate a kubeconfig for cluster authentication.
///
/// The kubeconfig generated is automatically stringified for ease of use with the pulumi/kubernetes provider.
/// The kubeconfig uses the new `gke-gcloud-auth-plugin` authentication plugin as recommended by Google.
///
/// See for more details:
/// - https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
/// [args] Arguments passed to this invoke. {@macro pulumi_container_v1_get_kubeconfig_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubeconfigResult> getKubeconfig(
  GetKubeconfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1:Cluster/getKubeconfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubeconfigResult.fromMap(result);
}

pulumi.Output<GetKubeconfigResult> getKubeconfigOutput(
  GetKubeconfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:container/v1:Cluster/getKubeconfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKubeconfigResult.fromMap);
}

/// Gets the details of a specific cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_container_v1_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

pulumi.Output<GetClusterResult> getClusterOutput(
  GetClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:container/v1:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
}

/// Retrieves the requested node pool.
/// [args] Arguments passed to this invoke. {@macro pulumi_container_v1_get_node_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodePoolResult> getNodePool(
  GetNodePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1:getNodePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodePoolResult.fromMap(result);
}

pulumi.Output<GetNodePoolResult> getNodePoolOutput(
  GetNodePoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:container/v1:getNodePool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNodePoolResult.fromMap);
}

/// Returns configuration info about the Google Kubernetes Engine service.
/// [args] Arguments passed to this invoke. {@macro pulumi_container_v1_get_server_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerConfigResult> getServerConfig(
  GetServerConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1:getServerConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerConfigResult.fromMap(result);
}

pulumi.Output<GetServerConfigResult> getServerConfigOutput(
  GetServerConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:container/v1:getServerConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerConfigResult.fromMap);
}

/// Generate a kubeconfig for cluster authentication.
///
/// The kubeconfig generated is automatically stringified for ease of use with the pulumi/kubernetes provider.
/// The kubeconfig uses the new `gke-gcloud-auth-plugin` authentication plugin as recommended by Google.
///
/// See for more details:
/// - https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
/// [args] Arguments passed to this invoke. {@macro pulumi_container_v1beta1_get_kubeconfig_container_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubeconfigContainerV1beta1Result> getKubeconfigContainerV1beta1(
  GetKubeconfigContainerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1beta1:Cluster/getKubeconfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubeconfigContainerV1beta1Result.fromMap(result);
}

pulumi.Output<GetKubeconfigContainerV1beta1Result> getKubeconfigContainerV1beta1Output(
  GetKubeconfigContainerV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:container/v1beta1:Cluster/getKubeconfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKubeconfigContainerV1beta1Result.fromMap);
}

/// Gets the details for a specific cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_container_v1beta1_get_cluster_container_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterContainerV1beta1Result> getClusterContainerV1beta1(
  GetClusterContainerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1beta1:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterContainerV1beta1Result.fromMap(result);
}

pulumi.Output<GetClusterContainerV1beta1Result> getClusterContainerV1beta1Output(
  GetClusterContainerV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:container/v1beta1:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterContainerV1beta1Result.fromMap);
}

/// Retrieves the requested node pool.
/// [args] Arguments passed to this invoke. {@macro pulumi_container_v1beta1_get_node_pool_container_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodePoolContainerV1beta1Result> getNodePoolContainerV1beta1(
  GetNodePoolContainerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1beta1:getNodePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodePoolContainerV1beta1Result.fromMap(result);
}

pulumi.Output<GetNodePoolContainerV1beta1Result> getNodePoolContainerV1beta1Output(
  GetNodePoolContainerV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:container/v1beta1:getNodePool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNodePoolContainerV1beta1Result.fromMap);
}

/// Returns configuration info about the Google Kubernetes Engine service.
/// [args] Arguments passed to this invoke. {@macro pulumi_container_v1beta1_get_server_config_container_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerConfigContainerV1beta1Result> getServerConfigContainerV1beta1(
  GetServerConfigContainerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1beta1:getServerConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerConfigContainerV1beta1Result.fromMap(result);
}

pulumi.Output<GetServerConfigContainerV1beta1Result> getServerConfigContainerV1beta1Output(
  GetServerConfigContainerV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:container/v1beta1:getServerConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerConfigContainerV1beta1Result.fromMap);
}
