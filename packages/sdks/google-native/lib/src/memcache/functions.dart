import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_args.dart';
import 'get_instance_memcache_v1beta2_args.dart';
import 'get_instance_memcache_v1beta2_result.dart';
import 'get_instance_result.dart';

/// Gets details of a single Instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_memcache_v1_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:memcache/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Gets details of a single Instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_memcache_v1beta2_get_instance_memcache_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceMemcacheV1beta2Result> getInstanceMemcacheV1beta2(
  GetInstanceMemcacheV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:memcache/v1beta2:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceMemcacheV1beta2Result.fromMap(result);
}
