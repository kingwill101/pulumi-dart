import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_access_rule_args.dart';

/// Creates a new external access rule in a given network policy.
/// Auto-naming is currently not supported for this resource.
class ExternalAccessRule extends pulumi.CustomResource {
  /// The action that the external access rule performs.
  late final pulumi.Output<String> action;
  /// Creation time of this resource.
  late final pulumi.Output<String> createTime;
  /// User-provided description for this external access rule.
  late final pulumi.Output<String> description;
  /// If destination ranges are specified, the external access rule applies only to the traffic that has a destination IP address in these ranges. The specified IP addresses must have reserved external IP addresses in the scope of the parent network policy. To match all external IP addresses in the scope of the parent network policy, specify `0.0.0.0/0`. To match a specific external IP address, specify it using the `IpRange.external_address` property.
  late final pulumi.Output<List<Map<String, dynamic>>> destinationIpRanges;
  /// A list of destination ports to which the external access rule applies. This field is only applicable for the UDP or TCP protocol. Each entry must be either an integer or a range. For example: `["22"]`, `["80","443"]`, or `["12345-12349"]`. To match all destination ports, specify `["0-65535"]`.
  late final pulumi.Output<List<String>> destinationPorts;
  /// Required. The user-provided identifier of the `ExternalAccessRule` to be created. This identifier must be unique among `ExternalAccessRule` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  late final pulumi.Output<String> externalAccessRuleId;
  /// The IP protocol to which the external access rule applies. This value can be one of the following three protocol strings (not case-sensitive): `tcp`, `udp`, or `icmp`.
  late final pulumi.Output<String> ipProtocol;
  late final pulumi.Output<String> location;
  /// The resource name of this external access rule. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1/networkPolicies/my-policy/externalAccessRules/my-rule`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> networkPolicyId;
  /// External access rule priority, which determines the external access rule to use when multiple rules apply. If multiple rules have the same priority, their ordering is non-deterministic. If specific ordering is required, assign unique priorities to enforce such ordering. The external access rule priority is an integer from 100 to 4096, both inclusive. Lower integers indicate higher precedence. For example, a rule with priority `100` has higher precedence than a rule with priority `101`.
  late final pulumi.Output<int> priority;
  late final pulumi.Output<String> project;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if the original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// If source ranges are specified, the external access rule applies only to traffic that has a source IP address in these ranges. These ranges can either be expressed in the CIDR format or as an IP address. As only inbound rules are supported, `ExternalAddress` resources cannot be the source IP addresses of an external access rule. To match all source addresses, specify `0.0.0.0/0`.
  late final pulumi.Output<List<Map<String, dynamic>>> sourceIpRanges;
  /// A list of source ports to which the external access rule applies. This field is only applicable for the UDP or TCP protocol. Each entry must be either an integer or a range. For example: `["22"]`, `["80","443"]`, or `["12345-12349"]`. To match all source ports, specify `["0-65535"]`.
  late final pulumi.Output<List<String>> sourcePorts;
  /// The state of the resource.
  late final pulumi.Output<String> state;
  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;
  /// Last update time of this resource.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ExternalAccessRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExternalAccessRule]. {@macro pulumi_vmwareengine_v1_external_access_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExternalAccessRule(
    String name, {
    ExternalAccessRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:vmwareengine/v1:ExternalAccessRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    destinationIpRanges = registerOutput<List<Map<String, dynamic>>>('destinationIpRanges');
    destinationPorts = registerOutput<List<String>>('destinationPorts');
    externalAccessRuleId = registerOutput<String>('externalAccessRuleId');
    ipProtocol = registerOutput<String>('ipProtocol');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkPolicyId = registerOutput<String>('networkPolicyId');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    sourceIpRanges = registerOutput<List<Map<String, dynamic>>>('sourceIpRanges');
    sourcePorts = registerOutput<List<String>>('sourcePorts');
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
