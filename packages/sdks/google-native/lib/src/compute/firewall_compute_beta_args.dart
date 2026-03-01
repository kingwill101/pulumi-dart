// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_allowed_item_compute_beta.dart';
import 'firewall_denied_item_compute_beta.dart';
import 'firewall_direction_compute_beta.dart';
import 'firewall_log_config_compute_beta.dart';

/// {@template pulumi_compute_beta_firewall_compute_beta_args_doc}
/// The set of arguments for Firewall.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_firewall_compute_beta_args_doc}
class FirewallComputeBetaArgs {
  /// The list of ALLOW rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a permitted connection.
  final pulumi.Input<List<FirewallAllowedItemComputeBeta>>? allowed;
  /// The list of DENY rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a denied connection.
  final pulumi.Input<List<FirewallDeniedItemComputeBeta>>? denied;
  /// An optional description of this resource. Provide this field when you create the resource.
  final pulumi.Input<String>? description;
  /// If destination ranges are specified, the firewall rule applies only to traffic that has destination IP address in these ranges. These ranges must be expressed in CIDR format. Both IPv4 and IPv6 are supported.
  final pulumi.Input<List<String>>? destinationRanges;
  /// Direction of traffic to which this firewall applies, either `INGRESS` or `EGRESS`. The default is `INGRESS`. For `EGRESS` traffic, you cannot specify the sourceTags fields.
  final pulumi.Input<FirewallDirectionComputeBeta>? direction;
  /// Denotes whether the firewall rule is disabled. When set to true, the firewall rule is not enforced and the network behaves as if it did not exist. If this is unspecified, the firewall rule will be enabled.
  final pulumi.Input<bool>? disabled;
  /// Deprecated in favor of enable in LogConfig. This field denotes whether to enable logging for a particular firewall rule. If logging is enabled, logs will be exported t Cloud Logging.
  final pulumi.Input<bool>? enableLogging;
  /// This field denotes the logging options for a particular firewall rule. If logging is enabled, logs will be exported to Cloud Logging.
  final pulumi.Input<FirewallLogConfigComputeBeta>? logConfig;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  final pulumi.Input<String>? name;
  /// URL of the network resource for this firewall rule. If not specified when creating a firewall rule, the default network is used: global/networks/default If you choose to specify this field, you can specify the network as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/myproject/global/networks/my-network - projects/myproject/global/networks/my-network - global/networks/default
  final pulumi.Input<String>? network;
  /// Priority for this rule. This is an integer between `0` and `65535`, both inclusive. The default value is `1000`. Relative priorities determine which rule takes effect if multiple rules apply. Lower values indicate higher priority. For example, a rule with priority `0` has higher precedence than a rule with priority `1`. DENY rules take precedence over ALLOW rules if they have equal priority. Note that VPC networks have implied rules with a priority of `65535`. To avoid conflicts with the implied rules, use a priority number less than `65535`.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// If source ranges are specified, the firewall rule applies only to traffic that has a source IP address in these ranges. These ranges must be expressed in CIDR format. One or both of sourceRanges and sourceTags may be set. If both fields are set, the rule applies to traffic that has a source IP address within sourceRanges OR a source IP from a resource with a matching tag listed in the sourceTags field. The connection does not need to match both fields for the rule to apply. Both IPv4 and IPv6 are supported.
  final pulumi.Input<List<String>>? sourceRanges;
  /// If source service accounts are specified, the firewall rules apply only to traffic originating from an instance with a service account in this list. Source service accounts cannot be used to control traffic to an instance's external IP address because service accounts are associated with an instance, not an IP address. sourceRanges can be set at the same time as sourceServiceAccounts. If both are set, the firewall applies to traffic that has a source IP address within the sourceRanges OR a source IP that belongs to an instance with service account listed in sourceServiceAccount. The connection does not need to match both fields for the firewall to apply. sourceServiceAccounts cannot be used at the same time as sourceTags or targetTags.
  final pulumi.Input<List<String>>? sourceServiceAccounts;
  /// If source tags are specified, the firewall rule applies only to traffic with source IPs that match the primary network interfaces of VM instances that have the tag and are in the same VPC network. Source tags cannot be used to control traffic to an instance's external IP address, it only applies to traffic between instances in the same virtual network. Because tags are associated with instances, not IP addresses. One or both of sourceRanges and sourceTags may be set. If both fields are set, the firewall applies to traffic that has a source IP address within sourceRanges OR a source IP from a resource with a matching tag listed in the sourceTags field. The connection does not need to match both fields for the firewall to apply.
  final pulumi.Input<List<String>>? sourceTags;
  /// A list of service accounts indicating sets of instances located in the network that may make network connections as specified in allowed[]. targetServiceAccounts cannot be used at the same time as targetTags or sourceTags. If neither targetServiceAccounts nor targetTags are specified, the firewall rule applies to all instances on the specified network.
  final pulumi.Input<List<String>>? targetServiceAccounts;
  /// A list of tags that controls which instances the firewall rule applies to. If targetTags are specified, then the firewall rule applies only to instances in the VPC network that have one of those tags. If no targetTags are specified, the firewall rule applies to all instances on the specified network.
  final pulumi.Input<List<String>>? targetTags;

  /// Creates a new [FirewallComputeBetaArgs].
  /// [allowed] The list of ALLOW rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a permitted connection.
  /// [denied] The list of DENY rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a denied connection.
  /// [description] An optional description of this resource. Provide this field when you create the resource.
  /// [destinationRanges] If destination ranges are specified, the firewall rule applies only to traffic that has destination IP address in these ranges. These ranges must be expressed in CIDR format. Both IPv4 and IPv6 are supported.
  /// [direction] Direction of traffic to which this firewall applies, either `INGRESS` or `EGRESS`. The default is `INGRESS`. For `EGRESS` traffic, you cannot specify the sourceTags fields.
  /// [disabled] Denotes whether the firewall rule is disabled. When set to true, the firewall rule is not enforced and the network behaves as if it did not exist. If this is unspecified, the firewall rule will be enabled.
  /// [enableLogging] Deprecated in favor of enable in LogConfig. This field denotes whether to enable logging for a particular firewall rule. If logging is enabled, logs will be exported t Cloud Logging.
  /// [logConfig] This field denotes the logging options for a particular firewall rule. If logging is enabled, logs will be exported to Cloud Logging.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  /// [network] URL of the network resource for this firewall rule. If not specified when creating a firewall rule, the default network is used: global/networks/default If you choose to specify this field, you can specify the network as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/myproject/global/networks/my-network - projects/myproject/global/networks/my-network - global/networks/default
  /// [priority] Priority for this rule. This is an integer between `0` and `65535`, both inclusive. The default value is `1000`. Relative priorities determine which rule takes effect if multiple rules apply. Lower values indicate higher priority. For example, a rule with priority `0` has higher precedence than a rule with priority `1`. DENY rules take precedence over ALLOW rules if they have equal priority. Note that VPC networks have implied rules with a priority of `65535`. To avoid conflicts with the implied rules, use a priority number less than `65535`.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [sourceRanges] If source ranges are specified, the firewall rule applies only to traffic that has a source IP address in these ranges. These ranges must be expressed in CIDR format. One or both of sourceRanges and sourceTags may be set. If both fields are set, the rule applies to traffic that has a source IP address within sourceRanges OR a source IP from a resource with a matching tag listed in the sourceTags field. The connection does not need to match both fields for the rule to apply. Both IPv4 and IPv6 are supported.
  /// [sourceServiceAccounts] If source service accounts are specified, the firewall rules apply only to traffic originating from an instance with a service account in this list. Source service accounts cannot be used to control traffic to an instance's external IP address because service accounts are associated with an instance, not an IP address. sourceRanges can be set at the same time as sourceServiceAccounts. If both are set, the firewall applies to traffic that has a source IP address within the sourceRanges OR a source IP that belongs to an instance with service account listed in sourceServiceAccount. The connection does not need to match both fields for the firewall to apply. sourceServiceAccounts cannot be used at the same time as sourceTags or targetTags.
  /// [sourceTags] If source tags are specified, the firewall rule applies only to traffic with source IPs that match the primary network interfaces of VM instances that have the tag and are in the same VPC network. Source tags cannot be used to control traffic to an instance's external IP address, it only applies to traffic between instances in the same virtual network. Because tags are associated with instances, not IP addresses. One or both of sourceRanges and sourceTags may be set. If both fields are set, the firewall applies to traffic that has a source IP address within sourceRanges OR a source IP from a resource with a matching tag listed in the sourceTags field. The connection does not need to match both fields for the firewall to apply.
  /// [targetServiceAccounts] A list of service accounts indicating sets of instances located in the network that may make network connections as specified in allowed[]. targetServiceAccounts cannot be used at the same time as targetTags or sourceTags. If neither targetServiceAccounts nor targetTags are specified, the firewall rule applies to all instances on the specified network.
  /// [targetTags] A list of tags that controls which instances the firewall rule applies to. If targetTags are specified, then the firewall rule applies only to instances in the VPC network that have one of those tags. If no targetTags are specified, the firewall rule applies to all instances on the specified network.
  FirewallComputeBetaArgs({
    pulumi.Output<List<FirewallAllowedItemComputeBeta>>? allowed,
    pulumi.Output<List<FirewallDeniedItemComputeBeta>>? denied,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? destinationRanges,
    pulumi.Output<FirewallDirectionComputeBeta>? direction,
    pulumi.Output<bool>? disabled,
    pulumi.Output<bool>? enableLogging,
    pulumi.Output<FirewallLogConfigComputeBeta>? logConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    pulumi.Output<List<String>>? sourceRanges,
    pulumi.Output<List<String>>? sourceServiceAccounts,
    pulumi.Output<List<String>>? sourceTags,
    pulumi.Output<List<String>>? targetServiceAccounts,
    pulumi.Output<List<String>>? targetTags,
  }) :
      allowed = pulumi.Input.asOptionalInput<List<FirewallAllowedItemComputeBeta>>(allowed),
      denied = pulumi.Input.asOptionalInput<List<FirewallDeniedItemComputeBeta>>(denied),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationRanges = pulumi.Input.asOptionalInput<List<String>>(destinationRanges),
      direction = pulumi.Input.asOptionalInput<FirewallDirectionComputeBeta>(direction),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      enableLogging = pulumi.Input.asOptionalInput<bool>(enableLogging),
      logConfig = pulumi.Input.asOptionalInput<FirewallLogConfigComputeBeta>(logConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      sourceRanges = pulumi.Input.asOptionalInput<List<String>>(sourceRanges),
      sourceServiceAccounts = pulumi.Input.asOptionalInput<List<String>>(sourceServiceAccounts),
      sourceTags = pulumi.Input.asOptionalInput<List<String>>(sourceTags),
      targetServiceAccounts = pulumi.Input.asOptionalInput<List<String>>(targetServiceAccounts),
      targetTags = pulumi.Input.asOptionalInput<List<String>>(targetTags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowed': ?pulumi.Input.mapOptionalInputValue<List<FirewallAllowedItemComputeBeta>, List<Map<String, dynamic>>>(allowed, (value) => pulumi.Input.encodeList<FirewallAllowedItemComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'denied': ?pulumi.Input.mapOptionalInputValue<List<FirewallDeniedItemComputeBeta>, List<Map<String, dynamic>>>(denied, (value) => pulumi.Input.encodeList<FirewallDeniedItemComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'destinationRanges': ?destinationRanges,
      'direction': ?pulumi.Input.mapOptionalInputValue<FirewallDirectionComputeBeta, String>(direction, (value) => value.value),
      'disabled': ?disabled,
      'enableLogging': ?enableLogging,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<FirewallLogConfigComputeBeta, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'network': ?network,
      'priority': ?priority,
      'project': ?project,
      'requestId': ?requestId,
      'sourceRanges': ?sourceRanges,
      'sourceServiceAccounts': ?sourceServiceAccounts,
      'sourceTags': ?sourceTags,
      'targetServiceAccounts': ?targetServiceAccounts,
      'targetTags': ?targetTags,
    };
  }

  factory FirewallComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return FirewallComputeBetaArgs(
      allowed: map['allowed'] == null ? null : pulumi.Output.create<List<FirewallAllowedItemComputeBeta>>(pulumi.Input.decodeList<FirewallAllowedItemComputeBeta>(map['allowed'], (value) => FirewallAllowedItemComputeBeta.fromMap((value as Map).cast<String, dynamic>()))),
      denied: map['denied'] == null ? null : pulumi.Output.create<List<FirewallDeniedItemComputeBeta>>(pulumi.Input.decodeList<FirewallDeniedItemComputeBeta>(map['denied'], (value) => FirewallDeniedItemComputeBeta.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationRanges: map['destinationRanges'] == null ? null : pulumi.Output.create<List<String>>((map['destinationRanges'] as List).cast<String>()),
      direction: map['direction'] == null ? null : pulumi.Output.create<FirewallDirectionComputeBeta>(FirewallDirectionComputeBeta.fromValue(map['direction'] as String)),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      enableLogging: map['enableLogging'] == null ? null : pulumi.Output.create<bool>(map['enableLogging'] as bool),
      logConfig: map['logConfig'] == null ? null : pulumi.Output.create<FirewallLogConfigComputeBeta>(FirewallLogConfigComputeBeta.fromMap((map['logConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      sourceRanges: map['sourceRanges'] == null ? null : pulumi.Output.create<List<String>>((map['sourceRanges'] as List).cast<String>()),
      sourceServiceAccounts: map['sourceServiceAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['sourceServiceAccounts'] as List).cast<String>()),
      sourceTags: map['sourceTags'] == null ? null : pulumi.Output.create<List<String>>((map['sourceTags'] as List).cast<String>()),
      targetServiceAccounts: map['targetServiceAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['targetServiceAccounts'] as List).cast<String>()),
      targetTags: map['targetTags'] == null ? null : pulumi.Output.create<List<String>>((map['targetTags'] as List).cast<String>()),
    );
  }
}

