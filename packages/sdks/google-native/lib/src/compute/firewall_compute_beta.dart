import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_compute_beta_args.dart';
import 'firewall_log_config_response_compute_beta.dart';

/// Creates a firewall rule in the specified project using the data included in the request.
class FirewallComputeBeta extends pulumi.CustomResource {
  /// The list of ALLOW rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a permitted connection.
  late final pulumi.Output<List<Map<String, dynamic>>> allowed;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// The list of DENY rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a denied connection.
  late final pulumi.Output<List<Map<String, dynamic>>> denied;
  /// An optional description of this resource. Provide this field when you create the resource.
  late final pulumi.Output<String> description;
  /// If destination ranges are specified, the firewall rule applies only to traffic that has destination IP address in these ranges. These ranges must be expressed in CIDR format. Both IPv4 and IPv6 are supported.
  late final pulumi.Output<List<String>> destinationRanges;
  /// Direction of traffic to which this firewall applies, either `INGRESS` or `EGRESS`. The default is `INGRESS`. For `EGRESS` traffic, you cannot specify the sourceTags fields.
  late final pulumi.Output<String> direction;
  /// Denotes whether the firewall rule is disabled. When set to true, the firewall rule is not enforced and the network behaves as if it did not exist. If this is unspecified, the firewall rule will be enabled.
  late final pulumi.Output<bool> disabled;
  /// Deprecated in favor of enable in LogConfig. This field denotes whether to enable logging for a particular firewall rule. If logging is enabled, logs will be exported t Cloud Logging.
  late final pulumi.Output<bool> enableLogging;
  /// Type of the resource. Always compute#firewall for firewall rules.
  late final pulumi.Output<String> kind;
  /// This field denotes the logging options for a particular firewall rule. If logging is enabled, logs will be exported to Cloud Logging.
  late final pulumi.Output<FirewallLogConfigResponseComputeBeta> logConfig;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  late final pulumi.Output<String> name;
  /// URL of the network resource for this firewall rule. If not specified when creating a firewall rule, the default network is used: global/networks/default If you choose to specify this field, you can specify the network as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/myproject/global/networks/my-network - projects/myproject/global/networks/my-network - global/networks/default
  late final pulumi.Output<String> network;
  /// Priority for this rule. This is an integer between `0` and `65535`, both inclusive. The default value is `1000`. Relative priorities determine which rule takes effect if multiple rules apply. Lower values indicate higher priority. For example, a rule with priority `0` has higher precedence than a rule with priority `1`. DENY rules take precedence over ALLOW rules if they have equal priority. Note that VPC networks have implied rules with a priority of `65535`. To avoid conflicts with the implied rules, use a priority number less than `65535`.
  late final pulumi.Output<int> priority;
  late final pulumi.Output<String> project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  /// If source ranges are specified, the firewall rule applies only to traffic that has a source IP address in these ranges. These ranges must be expressed in CIDR format. One or both of sourceRanges and sourceTags may be set. If both fields are set, the rule applies to traffic that has a source IP address within sourceRanges OR a source IP from a resource with a matching tag listed in the sourceTags field. The connection does not need to match both fields for the rule to apply. Both IPv4 and IPv6 are supported.
  late final pulumi.Output<List<String>> sourceRanges;
  /// If source service accounts are specified, the firewall rules apply only to traffic originating from an instance with a service account in this list. Source service accounts cannot be used to control traffic to an instance's external IP address because service accounts are associated with an instance, not an IP address. sourceRanges can be set at the same time as sourceServiceAccounts. If both are set, the firewall applies to traffic that has a source IP address within the sourceRanges OR a source IP that belongs to an instance with service account listed in sourceServiceAccount. The connection does not need to match both fields for the firewall to apply. sourceServiceAccounts cannot be used at the same time as sourceTags or targetTags.
  late final pulumi.Output<List<String>> sourceServiceAccounts;
  /// If source tags are specified, the firewall rule applies only to traffic with source IPs that match the primary network interfaces of VM instances that have the tag and are in the same VPC network. Source tags cannot be used to control traffic to an instance's external IP address, it only applies to traffic between instances in the same virtual network. Because tags are associated with instances, not IP addresses. One or both of sourceRanges and sourceTags may be set. If both fields are set, the firewall applies to traffic that has a source IP address within sourceRanges OR a source IP from a resource with a matching tag listed in the sourceTags field. The connection does not need to match both fields for the firewall to apply.
  late final pulumi.Output<List<String>> sourceTags;
  /// A list of service accounts indicating sets of instances located in the network that may make network connections as specified in allowed[]. targetServiceAccounts cannot be used at the same time as targetTags or sourceTags. If neither targetServiceAccounts nor targetTags are specified, the firewall rule applies to all instances on the specified network.
  late final pulumi.Output<List<String>> targetServiceAccounts;
  /// A list of tags that controls which instances the firewall rule applies to. If targetTags are specified, then the firewall rule applies only to instances in the VPC network that have one of those tags. If no targetTags are specified, the firewall rule applies to all instances on the specified network.
  late final pulumi.Output<List<String>> targetTags;

  /// Creates a new [FirewallComputeBeta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallComputeBeta]. {@macro pulumi_compute_beta_firewall_compute_beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallComputeBeta(
    String name, {
    FirewallComputeBetaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/beta:Firewall',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowed = registerOutput<List<Map<String, dynamic>>>('allowed');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    denied = registerOutput<List<Map<String, dynamic>>>('denied');
    description = registerOutput<String>('description');
    destinationRanges = registerOutput<List<String>>('destinationRanges');
    direction = registerOutput<String>('direction');
    disabled = registerOutput<bool>('disabled');
    enableLogging = registerOutput<bool>('enableLogging');
    kind = registerOutput<String>('kind');
    logConfig = registerOutput<FirewallLogConfigResponseComputeBeta>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallLogConfigResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    selfLink = registerOutput<String>('selfLink');
    sourceRanges = registerOutput<List<String>>('sourceRanges');
    sourceServiceAccounts = registerOutput<List<String>>('sourceServiceAccounts');
    sourceTags = registerOutput<List<String>>('sourceTags');
    targetServiceAccounts = registerOutput<List<String>>('targetServiceAccounts');
    targetTags = registerOutput<List<String>>('targetTags');
  }
}
