import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_args.dart';
import 'get_cluster_redis_v1beta1_args.dart';
import 'get_cluster_redis_v1beta1_result.dart';
import 'get_cluster_result.dart';
import 'get_instance_args.dart';
import 'get_instance_redis_v1beta1_args.dart';
import 'get_instance_redis_v1beta1_result.dart';
import 'get_instance_result.dart';

/// Gets the details of a specific Redis cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_v1_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:redis/v1:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Gets the details of a specific Redis instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_v1_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:redis/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Gets the details of a specific Redis cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_v1beta1_get_cluster_redis_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterRedisV1beta1Result> getClusterRedisV1beta1(
  GetClusterRedisV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:redis/v1beta1:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterRedisV1beta1Result.fromMap(result);
}

/// Gets the details of a specific Redis instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_v1beta1_get_instance_redis_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceRedisV1beta1Result> getInstanceRedisV1beta1(
  GetInstanceRedisV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:redis/v1beta1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceRedisV1beta1Result.fromMap(result);
}
