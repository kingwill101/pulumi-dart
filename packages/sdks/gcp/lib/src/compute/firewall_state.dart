// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_allow.dart';
import 'firewall_deny.dart';
import 'firewall_log_config.dart';
import 'firewall_params.dart';

/// Input properties used for looking up and filtering Firewall resources.
class FirewallState {
  /// The list of ALLOW rules specified by this firewall. Each rule
  /// specifies a protocol and port-range tuple that describes a permitted
  /// connection.
  /// Structure is documented below.
  final pulumi.Input<List<FirewallAllow>>? allows;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// INGRESS. Note: For INGRESS traffic, one of `sourceRanges`,
  /// `sourceTags` or `sourceServiceAccounts` is required.
  /// Possible values are: `INGRESS`, `EGRESS`.
  final pulumi.Input<String>? direction;
  /// Denotes whether the firewall rule is disabled, i.e not applied to the
  /// network it is associated with. When set to true, the firewall rule is
  /// not enforced and the network behaves as if it did not exist. If this
  /// is unspecified, the firewall rule will be enabled.
  final pulumi.Input<bool>? disabled;
  /// This field denotes whether to enable logging for a particular firewall rule.
  /// If logging is enabled, logs will be exported to Stackdriver. Deprecated in favor of `logConfig`
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
  /// The name or selfLink of the network to attach this firewall to.
  final pulumi.Input<String>? network;
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
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// If source ranges are specified, the firewall will apply only to
  /// traffic that has source IP address in these ranges. These ranges must
  /// be expressed in CIDR format. One or both of sourceRanges and
  /// sourceTags may be set. If both properties are set, the firewall will
  /// apply to traffic that has source IP address within sourceRanges OR the
  /// source IP that belongs to a tag listed in the sourceTags property. The
  /// connection does not need to match both properties for the firewall to
  /// apply. IPv4 or IPv6 ranges are supported. For INGRESS traffic, one of
  /// `sourceRanges`, `sourceTags` or `sourceServiceAccounts` is required.
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
  /// one of `sourceRanges`, `sourceTags` or `sourceServiceAccounts` is required.
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
  /// one of `sourceRanges`, `sourceTags` or `sourceServiceAccounts` is required.
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

  /// Creates a new [FirewallState].
  /// [allows] The list of ALLOW rules specified by this firewall. Each rule
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [denies] The list of DENY rules specified by this firewall. Each rule specifies
  /// [description] An optional description of this resource. Provide this property when
  /// [destinationRanges] If destination ranges are specified, the firewall will apply only to
  /// [direction] Direction of traffic to which this firewall applies; default is
  /// [disabled] Denotes whether the firewall rule is disabled, i.e not applied to the
  /// [enableLogging] This field denotes whether to enable logging for a particular firewall rule.
  /// [logConfig] This field denotes the logging options for a particular firewall rule.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [network] The name or selfLink of the network to attach this firewall to.
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [priority] Priority for this rule. This is an integer between 0 and 65535, both
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The URI of the created resource.
  /// [sourceRanges] If source ranges are specified, the firewall will apply only to
  /// [sourceServiceAccounts] If source service accounts are specified, the firewall will apply only
  /// [sourceTags] If source tags are specified, the firewall will apply only to traffic
  /// [targetServiceAccounts] A list of service accounts indicating sets of instances located in the
  /// [targetTags] A list of instance tags indicating sets of instances located in the
  const FirewallState({
    this.allows,
    this.creationTimestamp,
    this.deletionPolicy,
    this.denies,
    this.description,
    this.destinationRanges,
    this.direction,
    this.disabled,
    this.enableLogging,
    this.logConfig,
    this.name,
    this.network,
    this.params,
    this.priority,
    this.project,
    this.selfLink,
    this.sourceRanges,
    this.sourceServiceAccounts,
    this.sourceTags,
    this.targetServiceAccounts,
    this.targetTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allows': ?pulumi.Input.mapOptionalInputValue<List<FirewallAllow>, List<Map<String, dynamic>>>(allows, (value) => pulumi.Input.encodeList<FirewallAllow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'denies': ?pulumi.Input.mapOptionalInputValue<List<FirewallDeny>, List<Map<String, dynamic>>>(denies, (value) => pulumi.Input.encodeList<FirewallDeny, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'destinationRanges': ?destinationRanges,
      'direction': ?direction,
      'disabled': ?disabled,
      'enableLogging': ?enableLogging,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<FirewallLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'network': ?network,
      'params': ?pulumi.Input.mapOptionalInputValue<FirewallParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'priority': ?priority,
      'project': ?project,
      'selfLink': ?selfLink,
      'sourceRanges': ?sourceRanges,
      'sourceServiceAccounts': ?sourceServiceAccounts,
      'sourceTags': ?sourceTags,
      'targetServiceAccounts': ?targetServiceAccounts,
      'targetTags': ?targetTags,
    };
  }

  factory FirewallState.fromMap(Map<String, dynamic> map) {
    return FirewallState(
      allows: (() { final guardedValue = map['allows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallAllow>(guardedValue, (value) => FirewallAllow.fromMap((value as Map).cast<String, dynamic>()))); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      denies: (() { final guardedValue = map['denies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallDeny>(guardedValue, (value) => FirewallDeny.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationRanges: (() { final guardedValue = map['destinationRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableLogging: (() { final guardedValue = map['enableLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceRanges: (() { final guardedValue = map['sourceRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceServiceAccounts: (() { final guardedValue = map['sourceServiceAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceTags: (() { final guardedValue = map['sourceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetServiceAccounts: (() { final guardedValue = map['targetServiceAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetTags: (() { final guardedValue = map['targetTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
