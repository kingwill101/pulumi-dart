import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config_response_dns_v1beta2.dart';
import 'policy_dns_v1beta2_args.dart';

/// Creates a new Policy.
class PolicyDnsV1beta2 extends pulumi.CustomResource {
  /// Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  late final pulumi.Output<PolicyAlternativeNameServerConfigResponseDnsV1beta2> alternativeNameServerConfig;
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  late final pulumi.Output<String?> clientOperationId;
  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the policy's function.
  late final pulumi.Output<String> description;
  /// Allows networks bound to this policy to receive DNS queries sent by VMs or applications over VPN connections. When enabled, a virtual IP address is allocated from each of the subnetworks that are bound to this policy.
  late final pulumi.Output<bool> enableInboundForwarding;
  /// Controls whether logging is enabled for the networks bound to this policy. Defaults to no logging if not set.
  late final pulumi.Output<bool> enableLogging;
  late final pulumi.Output<String> kind;
  /// User-assigned name for this policy.
  late final pulumi.Output<String> name;
  /// List of network names specifying networks to which this policy is applied.
  late final pulumi.Output<List<Map<String, dynamic>>> networks;
  late final pulumi.Output<String> project;

  /// Creates a new [PolicyDnsV1beta2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyDnsV1beta2]. {@macro pulumi_dns_v1beta2_policy_dns_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyDnsV1beta2(
    String name, {
    PolicyDnsV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dns/v1beta2:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alternativeNameServerConfig = registerOutput<PolicyAlternativeNameServerConfigResponseDnsV1beta2>('alternativeNameServerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyAlternativeNameServerConfigResponseDnsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientOperationId = registerOutput<String?>('clientOperationId');
    description = registerOutput<String>('description');
    enableInboundForwarding = registerOutput<bool>('enableInboundForwarding');
    enableLogging = registerOutput<bool>('enableLogging');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<Map<String, dynamic>>>('networks');
    project = registerOutput<String>('project');
  }
}
