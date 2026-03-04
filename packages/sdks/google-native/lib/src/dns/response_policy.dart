import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_args.dart';

/// Creates a new Response Policy
/// Auto-naming is currently not supported for this resource.
class ResponsePolicy extends pulumi.CustomResource {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  late final pulumi.Output<String?> clientOperationId;

  /// User-provided description for this Response Policy.
  late final pulumi.Output<String> description;

  /// The list of Google Kubernetes Engine clusters to which this response policy is applied.
  late final pulumi.Output<List<Map<String, dynamic>>> gkeClusters;
  late final pulumi.Output<String> kind;

  /// User labels.
  late final pulumi.Output<Map<String, String>> labels;

  /// List of network names specifying networks to which this policy is applied.
  late final pulumi.Output<List<Map<String, dynamic>>> networks;
  late final pulumi.Output<String> project;

  /// User assigned name for this Response Policy.
  late final pulumi.Output<String> responsePolicyName;

  /// Creates a new [ResponsePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResponsePolicy]. {@macro pulumi_dns_v1beta2_response_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResponsePolicy(
    String name, {
    ResponsePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dns/v1beta2:ResponsePolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clientOperationId = registerOutput<String?>('clientOperationId');
    description = registerOutput<String>('description');
    gkeClusters = registerOutput<List<Map<String, dynamic>>>('gkeClusters');
    kind = registerOutput<String>('kind');
    labels = registerOutput<Map<String, String>>('labels');
    networks = registerOutput<List<Map<String, dynamic>>>('networks');
    project = registerOutput<String>('project');
    responsePolicyName = registerOutput<String>('responsePolicyName');
  }
}
