import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_args.dart';
import 'get_instance_result.dart';

/// Use this data source to get information about a Lustre instance. For more information see the [API docs](https://cloud.google.com/filestore/docs/lustre/reference/rest/v1/projects.locations.instances).
///
/// ## Example Usage
///
///
/// ```yaml
/// variables:
///   instance:
///     fn::invoke:
///       function: gcp:lustre:getInstance
///       arguments:
///         name: my-instance
///         zone: us-central1-a
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lustre_get_instance_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:lustre/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}
