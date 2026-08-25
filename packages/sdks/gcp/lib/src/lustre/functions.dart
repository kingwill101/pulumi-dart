import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_args.dart';
import 'get_instance_result.dart';

/// Use this data source to get information about a Lustre instance. For more information see the [API docs](https://docs.cloud.google.com/managed-lustre/docs/reference/rest/v1/projects.locations.instances).
///
/// ## Example Usage
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_lustre_getinstance" "instance" {
///   name = "my-instance"
///   zone = "us-central1-a"
/// }
/// ```
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

pulumi.Output<GetInstanceResult> getInstanceOutput(
  GetInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:lustre/getInstance:getInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceResult.fromMap);
}
