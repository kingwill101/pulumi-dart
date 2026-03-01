// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_allow.dart';
import 'firewall_deny.dart';
import 'firewall_log_config.dart';
import 'firewall_params.dart';

/// {@template pulumi_compute_firewall_firewall_args_doc}
/// The set of arguments for Firewall.
/// {@endtemplate}
/// {@macro pulumi_compute_firewall_firewall_args_doc}
class FirewallArgs {
  /// The list of ALLOW rules specified by this firewall. Each rule
  /// specifies a protocol and port-range tuple that describes a permitted
  /// connection.
  /// Structure is documented below.
  final pulumi.Input<List<FirewallAllow>>? allows;
  /// The list of DENY rules specified by this firewall. Each rule specifies
  /// a protocol and port-range tuple that describes a denied connection.
  /// Structure is documented below.
  final pulumi.Input<List<FirewallDeny>>? denies;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;
  /// If destination ranges are specified, the firewall will apply only to
  /// traffic that has destination IP address in these ranges. These ranges
  /// must be expressed in CIDR format. IPv4 or IPv6 ranges are supported.
  final pulumi.Input<List<String>>? destinationRanges;
  /// Direction of traffic to which this firewall applies; default is
  /// INGRESS. Note: For INGRESS traffic, one of `source_ranges`,
  /// `source_tags` or `source_service_accounts` is required.
  /// Possible values are: `INGRESS`, `EGRESS`.
  final pulumi.Input<String>? direction;
  /// Denotes whether the firewall rule is disabled, i.e not applied to the
  /// network it is associated with. When set to true, the firewall rule is
  /// not enforced and the network behaves as if it did not exist. If this
  /// is unspecified, the firewall rule will be enabled.
  final pulumi.Input<bool>? disabled;
  /// This field denotes whether to enable logging for a particular firewall rule.
  /// If logging is enabled, logs will be exported to Stackdriver. Deprecated in favor of `log_config`
  final pulumi.Input<bool>? enableLogging;
  /// This field denotes the logging options for a particular firewall rule.
  /// If defined, logging is enabled, and logs will be exported to Cloud Logging.
  /// Structure is documented below.
  final pulumi.Input<FirewallLogConfig>? logConfig;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The name or self_link of the network to attach this firewall to.
  final pulumi.Input<String> network;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<FirewallParams>? params;
  /// Priority for this rule. This is an integer between 0 and 65535, both
  /// inclusive. When not specified, the value assumed is 1000. Relative
  /// priorities determine precedence of conflicting rules. Lower value of
  /// priority implies higher precedence (eg, a rule with priority 0 has
  /// higher precedence than a rule with priority 1). DENY rules take
  /// precedence over ALLOW rules having equal priority.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// If source ranges are specified, the firewall will apply only to
  /// traffic that has source IP address in these ranges. These ranges must
  /// be expressed in CIDR format. One or both of sourceRanges and
  /// sourceTags may be set. If both properties are set, the firewall will
  /// apply to traffic that has source IP address within sourceRanges OR the
  /// source IP that belongs to a tag listed in the sourceTags property. The
  /// connection does not need to match both properties for the firewall to
  /// apply. IPv4 or IPv6 ranges are supported. For INGRESS traffic, one of
  /// `source_ranges`, `source_tags` or `source_service_accounts` is required.
  final pulumi.Input<List<String>>? sourceRanges;
  /// If source service accounts are specified, the firewall will apply only
  /// to traffic originating from an instance with a service account in this
  /// list. Source service accounts cannot be used to control traffic to an
  /// instance's external IP address because service accounts are associated
  /// with an instance, not an IP address. sourceRanges can be set at the
  /// same time as sourceServiceAccounts. If both are set, the firewall will
  /// apply to traffic that has source IP address within sourceRanges OR the
  /// source IP belongs to an instance with service account listed in
  /// sourceServiceAccount. The connection does not need to match both
  /// properties for the firewall to apply. sourceServiceAccounts cannot be
  /// used at the same time as sourceTags or targetTags. For INGRESS traffic,
  /// one of `source_ranges`, `source_tags` or `source_service_accounts` is required.
  final pulumi.Input<List<String>>? sourceServiceAccounts;
  /// If source tags are specified, the firewall will apply only to traffic
  /// with source IP that belongs to a tag listed in source tags. Source
  /// tags cannot be used to control traffic to an instance's external IP
  /// address. Because tags are associated with an instance, not an IP
  /// address. One or both of sourceRanges and sourceTags may be set. If
  /// both properties are set, the firewall will apply to traffic that has
  /// source IP address within sourceRanges OR the source IP that belongs to
  /// a tag listed in the sourceTags property. The connection does not need
  /// to match both properties for the firewall to apply. For INGRESS traffic,
  /// one of `source_ranges`, `source_tags` or `source_service_accounts` is required.
  final pulumi.Input<List<String>>? sourceTags;
  /// A list of service accounts indicating sets of instances located in the
  /// network that may make network connections as specified in allowed[].
  /// targetServiceAccounts cannot be used at the same time as targetTags or
  /// sourceTags. If neither targetServiceAccounts nor targetTags are
  /// specified, the firewall rule applies to all instances on the specified
  /// network.
  final pulumi.Input<List<String>>? targetServiceAccounts;
  /// A list of instance tags indicating sets of instances located in the
  /// network that may make network connections as specified in allowed[].
  /// If no targetTags are specified, the firewall rule applies to all
  /// instances on the specified network.
  final pulumi.Input<List<String>>? targetTags;

  /// Creates a new [FirewallArgs].
  /// [allows] The list of ALLOW rules specified by this firewall. Each rule
  /// [denies] The list of DENY rules specified by this firewall. Each rule specifies
  /// [description] An optional description of this resource. Provide this property when
  /// [destinationRanges] If destination ranges are specified, the firewall will apply only to
  /// [direction] Direction of traffic to which this firewall applies; default is
  /// [disabled] Denotes whether the firewall rule is disabled, i.e not applied to the
  /// [enableLogging] This field denotes whether to enable logging for a particular firewall rule.
  /// [logConfig] This field denotes the logging options for a particular firewall rule.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [network] The name or self_link of the network to attach this firewall to.
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [priority] Priority for this rule. This is an integer between 0 and 65535, both
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceRanges] If source ranges are specified, the firewall will apply only to
  /// [sourceServiceAccounts] If source service accounts are specified, the firewall will apply only
  /// [sourceTags] If source tags are specified, the firewall will apply only to traffic
  /// [targetServiceAccounts] A list of service accounts indicating sets of instances located in the
  /// [targetTags] A list of instance tags indicating sets of instances located in the
  FirewallArgs({
    pulumi.Output<List<FirewallAllow>>? allows,
    pulumi.Output<List<FirewallDeny>>? denies,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? destinationRanges,
    pulumi.Output<String>? direction,
    pulumi.Output<bool>? disabled,
    pulumi.Output<bool>? enableLogging,
    pulumi.Output<FirewallLogConfig>? logConfig,
    pulumi.Output<String>? name,
    required pulumi.Output<String> network,
    pulumi.Output<FirewallParams>? params,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? project,
    pulumi.Output<List<String>>? sourceRanges,
    pulumi.Output<List<String>>? sourceServiceAccounts,
    pulumi.Output<List<String>>? sourceTags,
    pulumi.Output<List<String>>? targetServiceAccounts,
    pulumi.Output<List<String>>? targetTags,
  }) :
      allows = pulumi.Input.asOptionalInput<List<FirewallAllow>>(allows),
      denies = pulumi.Input.asOptionalInput<List<FirewallDeny>>(denies),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationRanges = pulumi.Input.asOptionalInput<List<String>>(destinationRanges),
      direction = pulumi.Input.asOptionalInput<String>(direction),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      enableLogging = pulumi.Input.asOptionalInput<bool>(enableLogging),
      logConfig = pulumi.Input.asOptionalInput<FirewallLogConfig>(logConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asInput<String>(network),
      params = pulumi.Input.asOptionalInput<FirewallParams>(params),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      project = pulumi.Input.asOptionalInput<String>(project),
      sourceRanges = pulumi.Input.asOptionalInput<List<String>>(sourceRanges),
      sourceServiceAccounts = pulumi.Input.asOptionalInput<List<String>>(sourceServiceAccounts),
      sourceTags = pulumi.Input.asOptionalInput<List<String>>(sourceTags),
      targetServiceAccounts = pulumi.Input.asOptionalInput<List<String>>(targetServiceAccounts),
      targetTags = pulumi.Input.asOptionalInput<List<String>>(targetTags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allows': ?pulumi.Input.mapOptionalInputValue<List<FirewallAllow>, List<Map<String, dynamic>>>(allows, (value) => pulumi.Input.encodeList<FirewallAllow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'denies': ?pulumi.Input.mapOptionalInputValue<List<FirewallDeny>, List<Map<String, dynamic>>>(denies, (value) => pulumi.Input.encodeList<FirewallDeny, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'destinationRanges': ?destinationRanges,
      'direction': ?direction,
      'disabled': ?disabled,
      'enableLogging': ?enableLogging,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<FirewallLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'network': network,
      'params': ?pulumi.Input.mapOptionalInputValue<FirewallParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'priority': ?priority,
      'project': ?project,
      'sourceRanges': ?sourceRanges,
      'sourceServiceAccounts': ?sourceServiceAccounts,
      'sourceTags': ?sourceTags,
      'targetServiceAccounts': ?targetServiceAccounts,
      'targetTags': ?targetTags,
    };
  }

  factory FirewallArgs.fromMap(Map<String, dynamic> map) {
    return FirewallArgs(
      allows: map['allows'] == null ? null : pulumi.Output.create<List<FirewallAllow>>(pulumi.Input.decodeList<FirewallAllow>(map['allows'], (value) => FirewallAllow.fromMap((value as Map).cast<String, dynamic>()))),
      denies: map['denies'] == null ? null : pulumi.Output.create<List<FirewallDeny>>(pulumi.Input.decodeList<FirewallDeny>(map['denies'], (value) => FirewallDeny.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationRanges: map['destinationRanges'] == null ? null : pulumi.Output.create<List<String>>((map['destinationRanges'] as List).cast<String>()),
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      enableLogging: map['enableLogging'] == null ? null : pulumi.Output.create<bool>(map['enableLogging'] as bool),
      logConfig: map['logConfig'] == null ? null : pulumi.Output.create<FirewallLogConfig>(FirewallLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: pulumi.Output.create<String>(map['network'] as String),
      params: map['params'] == null ? null : pulumi.Output.create<FirewallParams>(FirewallParams.fromMap((map['params'] as Map).cast<String, dynamic>())),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sourceRanges: map['sourceRanges'] == null ? null : pulumi.Output.create<List<String>>((map['sourceRanges'] as List).cast<String>()),
      sourceServiceAccounts: map['sourceServiceAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['sourceServiceAccounts'] as List).cast<String>()),
      sourceTags: map['sourceTags'] == null ? null : pulumi.Output.create<List<String>>((map['sourceTags'] as List).cast<String>()),
      targetServiceAccounts: map['targetServiceAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['targetServiceAccounts'] as List).cast<String>()),
      targetTags: map['targetTags'] == null ? null : pulumi.Output.create<List<String>>((map['targetTags'] as List).cast<String>()),
    );
  }
}

