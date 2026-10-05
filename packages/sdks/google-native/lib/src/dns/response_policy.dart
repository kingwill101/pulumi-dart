import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_args.dart';
import 'response_policy_gkecluster_response_dns_v1beta2.dart';
import 'response_policy_network_response_dns_v1beta2.dart';

/// Creates a new Response Policy
/// Auto-naming is currently not supported for this resource.
class ResponsePolicy extends pulumi.CustomResource {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  late final pulumi.Output<String?> clientOperationId;
  /// User-provided description for this Response Policy.
  late final pulumi.Output<String> description;
  /// The list of Google Kubernetes Engine clusters to which this response policy is applied.
  late final pulumi.Output<List<ResponsePolicyGKEClusterResponseDnsV1beta2>> gkeClusters;
  late final pulumi.Output<String> kind;
  /// User labels.
  late final pulumi.Output<Map<String, String>> labels;
  /// List of network names specifying networks to which this policy is applied.
  late final pulumi.Output<List<ResponsePolicyNetworkResponseDnsV1beta2>> networks;
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
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['project']).merge(options),
        ) {
    clientOperationId = registerOutput<String?>('clientOperationId');
    description = registerOutput<String>('description');
    gkeClusters = registerOutput<List<ResponsePolicyGKEClusterResponseDnsV1beta2>>('gkeClusters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResponsePolicyGKEClusterResponseDnsV1beta2>(guardedValue, (value) => ResponsePolicyGKEClusterResponseDnsV1beta2.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    networks = registerOutput<List<ResponsePolicyNetworkResponseDnsV1beta2>>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResponsePolicyNetworkResponseDnsV1beta2>(guardedValue, (value) => ResponsePolicyNetworkResponseDnsV1beta2.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    responsePolicyName = registerOutput<String>('responsePolicyName');
  }

  /// Creates a typed reference to an existing [ResponsePolicy] resource.
  ResponsePolicy.reference(String urn)
    : super(
        'google-native:dns/v1beta2:ResponsePolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    clientOperationId = registerOutput<String?>('clientOperationId');
    description = registerOutput<String>('description');
    gkeClusters = registerOutput<List<ResponsePolicyGKEClusterResponseDnsV1beta2>>('gkeClusters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResponsePolicyGKEClusterResponseDnsV1beta2>(guardedValue, (value) => ResponsePolicyGKEClusterResponseDnsV1beta2.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    networks = registerOutput<List<ResponsePolicyNetworkResponseDnsV1beta2>>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResponsePolicyNetworkResponseDnsV1beta2>(guardedValue, (value) => ResponsePolicyNetworkResponseDnsV1beta2.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    responsePolicyName = registerOutput<String>('responsePolicyName');
  }
}
