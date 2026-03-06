// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_allowed_item_response_compute_v1.dart';
import 'firewall_denied_item_response_compute_v1.dart';
import 'firewall_log_config_response_compute_v1.dart';

/// Result data returned by getFirewall.
class GetFirewallComputeV1Result {
  /// The list of ALLOW rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a permitted connection.
  final List<FirewallAllowedItemResponseComputeV1> allowed;
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// The list of DENY rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a denied connection.
  final List<FirewallDeniedItemResponseComputeV1> denied;
  /// An optional description of this resource. Provide this field when you create the resource.
  final String description;
  /// If destination ranges are specified, the firewall rule applies only to traffic that has destination IP address in these ranges. These ranges must be expressed in CIDR format. Both IPv4 and IPv6 are supported.
  final List<String> destinationRanges;
  /// Direction of traffic to which this firewall applies, either `INGRESS` or `EGRESS`. The default is `INGRESS`. For `EGRESS` traffic, you cannot specify the sourceTags fields.
  final String direction;
  /// Denotes whether the firewall rule is disabled. When set to true, the firewall rule is not enforced and the network behaves as if it did not exist. If this is unspecified, the firewall rule will be enabled.
  final bool disabled;
  /// Type of the resource. Always compute#firewall for firewall rules.
  final String kind;
  /// This field denotes the logging options for a particular firewall rule. If logging is enabled, logs will be exported to Cloud Logging.
  final FirewallLogConfigResponseComputeV1 logConfig;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  final String name;
  /// URL of the network resource for this firewall rule. If not specified when creating a firewall rule, the default network is used: global/networks/default If you choose to specify this field, you can specify the network as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/myproject/global/networks/my-network - projects/myproject/global/networks/my-network - global/networks/default
  final String network;
  /// Priority for this rule. This is an integer between `0` and `65535`, both inclusive. The default value is `1000`. Relative priorities determine which rule takes effect if multiple rules apply. Lower values indicate higher priority. For example, a rule with priority `0` has higher precedence than a rule with priority `1`. DENY rules take precedence over ALLOW rules if they have equal priority. Note that VPC networks have implied rules with a priority of `65535`. To avoid conflicts with the implied rules, use a priority number less than `65535`.
  final int priority;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// If source ranges are specified, the firewall rule applies only to traffic that has a source IP address in these ranges. These ranges must be expressed in CIDR format. One or both of sourceRanges and sourceTags may be set. If both fields are set, the rule applies to traffic that has a source IP address within sourceRanges OR a source IP from a resource with a matching tag listed in the sourceTags field. The connection does not need to match both fields for the rule to apply. Both IPv4 and IPv6 are supported.
  final List<String> sourceRanges;
  /// If source service accounts are specified, the firewall rules apply only to traffic originating from an instance with a service account in this list. Source service accounts cannot be used to control traffic to an instance's external IP address because service accounts are associated with an instance, not an IP address. sourceRanges can be set at the same time as sourceServiceAccounts. If both are set, the firewall applies to traffic that has a source IP address within the sourceRanges OR a source IP that belongs to an instance with service account listed in sourceServiceAccount. The connection does not need to match both fields for the firewall to apply. sourceServiceAccounts cannot be used at the same time as sourceTags or targetTags.
  final List<String> sourceServiceAccounts;
  /// If source tags are specified, the firewall rule applies only to traffic with source IPs that match the primary network interfaces of VM instances that have the tag and are in the same VPC network. Source tags cannot be used to control traffic to an instance's external IP address, it only applies to traffic between instances in the same virtual network. Because tags are associated with instances, not IP addresses. One or both of sourceRanges and sourceTags may be set. If both fields are set, the firewall applies to traffic that has a source IP address within sourceRanges OR a source IP from a resource with a matching tag listed in the sourceTags field. The connection does not need to match both fields for the firewall to apply.
  final List<String> sourceTags;
  /// A list of service accounts indicating sets of instances located in the network that may make network connections as specified in allowed[]. targetServiceAccounts cannot be used at the same time as targetTags or sourceTags. If neither targetServiceAccounts nor targetTags are specified, the firewall rule applies to all instances on the specified network.
  final List<String> targetServiceAccounts;
  /// A list of tags that controls which instances the firewall rule applies to. If targetTags are specified, then the firewall rule applies only to instances in the VPC network that have one of those tags. If no targetTags are specified, the firewall rule applies to all instances on the specified network.
  final List<String> targetTags;

  /// Creates a new [GetFirewallComputeV1Result].
  /// [allowed] The list of ALLOW rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a permitted connection.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [denied] The list of DENY rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a denied connection.
  /// [description] An optional description of this resource. Provide this field when you create the resource.
  /// [destinationRanges] If destination ranges are specified, the firewall rule applies only to traffic that has destination IP address in these ranges. These ranges must be expressed in CIDR format. Both IPv4 and IPv6 are supported.
  /// [direction] Direction of traffic to which this firewall applies, either `INGRESS` or `EGRESS`. The default is `INGRESS`. For `EGRESS` traffic, you cannot specify the sourceTags fields.
  /// [disabled] Denotes whether the firewall rule is disabled. When set to true, the firewall rule is not enforced and the network behaves as if it did not exist. If this is unspecified, the firewall rule will be enabled.
  /// [kind] Type of the resource. Always compute#firewall for firewall rules.
  /// [logConfig] This field denotes the logging options for a particular firewall rule. If logging is enabled, logs will be exported to Cloud Logging.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  /// [network] URL of the network resource for this firewall rule. If not specified when creating a firewall rule, the default network is used: global/networks/default If you choose to specify this field, you can specify the network as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/myproject/global/networks/my-network - projects/myproject/global/networks/my-network - global/networks/default
  /// [priority] Priority for this rule. This is an integer between `0` and `65535`, both inclusive. The default value is `1000`. Relative priorities determine which rule takes effect if multiple rules apply. Lower values indicate higher priority. For example, a rule with priority `0` has higher precedence than a rule with priority `1`. DENY rules take precedence over ALLOW rules if they have equal priority. Note that VPC networks have implied rules with a priority of `65535`. To avoid conflicts with the implied rules, use a priority number less than `65535`.
  /// [selfLink] Server-defined URL for the resource.
  /// [sourceRanges] If source ranges are specified, the firewall rule applies only to traffic that has a source IP address in these ranges. These ranges must be expressed in CIDR format. One or both of sourceRanges and sourceTags may be set. If both fields are set, the rule applies to traffic that has a source IP address within sourceRanges OR a source IP from a resource with a matching tag listed in the sourceTags field. The connection does not need to match both fields for the rule to apply. Both IPv4 and IPv6 are supported.
  /// [sourceServiceAccounts] If source service accounts are specified, the firewall rules apply only to traffic originating from an instance with a service account in this list. Source service accounts cannot be used to control traffic to an instance's external IP address because service accounts are associated with an instance, not an IP address. sourceRanges can be set at the same time as sourceServiceAccounts. If both are set, the firewall applies to traffic that has a source IP address within the sourceRanges OR a source IP that belongs to an instance with service account listed in sourceServiceAccount. The connection does not need to match both fields for the firewall to apply. sourceServiceAccounts cannot be used at the same time as sourceTags or targetTags.
  /// [sourceTags] If source tags are specified, the firewall rule applies only to traffic with source IPs that match the primary network interfaces of VM instances that have the tag and are in the same VPC network. Source tags cannot be used to control traffic to an instance's external IP address, it only applies to traffic between instances in the same virtual network. Because tags are associated with instances, not IP addresses. One or both of sourceRanges and sourceTags may be set. If both fields are set, the firewall applies to traffic that has a source IP address within sourceRanges OR a source IP from a resource with a matching tag listed in the sourceTags field. The connection does not need to match both fields for the firewall to apply.
  /// [targetServiceAccounts] A list of service accounts indicating sets of instances located in the network that may make network connections as specified in allowed[]. targetServiceAccounts cannot be used at the same time as targetTags or sourceTags. If neither targetServiceAccounts nor targetTags are specified, the firewall rule applies to all instances on the specified network.
  /// [targetTags] A list of tags that controls which instances the firewall rule applies to. If targetTags are specified, then the firewall rule applies only to instances in the VPC network that have one of those tags. If no targetTags are specified, the firewall rule applies to all instances on the specified network.
  const GetFirewallComputeV1Result({
    required this.allowed,
    required this.creationTimestamp,
    required this.denied,
    required this.description,
    required this.destinationRanges,
    required this.direction,
    required this.disabled,
    required this.kind,
    required this.logConfig,
    required this.name,
    required this.network,
    required this.priority,
    required this.selfLink,
    required this.sourceRanges,
    required this.sourceServiceAccounts,
    required this.sourceTags,
    required this.targetServiceAccounts,
    required this.targetTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowed': pulumi.Input.encodeList<FirewallAllowedItemResponseComputeV1, Map<String, dynamic>>(allowed, (value) => value.toMap()),
      'creationTimestamp': creationTimestamp,
      'denied': pulumi.Input.encodeList<FirewallDeniedItemResponseComputeV1, Map<String, dynamic>>(denied, (value) => value.toMap()),
      'description': description,
      'destinationRanges': destinationRanges,
      'direction': direction,
      'disabled': disabled,
      'kind': kind,
      'logConfig': logConfig.toMap(),
      'name': name,
      'network': network,
      'priority': priority,
      'selfLink': selfLink,
      'sourceRanges': sourceRanges,
      'sourceServiceAccounts': sourceServiceAccounts,
      'sourceTags': sourceTags,
      'targetServiceAccounts': targetServiceAccounts,
      'targetTags': targetTags,
    };
  }

  factory GetFirewallComputeV1Result.fromMap(Map<String, dynamic> map) {
    return GetFirewallComputeV1Result(
      allowed: pulumi.Input.decodeList<FirewallAllowedItemResponseComputeV1>(map['allowed']!, (value) => FirewallAllowedItemResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] as String,
      denied: pulumi.Input.decodeList<FirewallDeniedItemResponseComputeV1>(map['denied']!, (value) => FirewallDeniedItemResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      destinationRanges: (map['destinationRanges'] as List).cast<String>(),
      direction: map['direction'] as String,
      disabled: map['disabled'] as bool,
      kind: map['kind'] as String,
      logConfig: FirewallLogConfigResponseComputeV1.fromMap((map['logConfig']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      network: map['network'] as String,
      priority: map['priority'] as int,
      selfLink: map['selfLink'] as String,
      sourceRanges: (map['sourceRanges'] as List).cast<String>(),
      sourceServiceAccounts: (map['sourceServiceAccounts'] as List).cast<String>(),
      sourceTags: (map['sourceTags'] as List).cast<String>(),
      targetServiceAccounts: (map['targetServiceAccounts'] as List).cast<String>(),
      targetTags: (map['targetTags'] as List).cast<String>(),
    );
  }
}

