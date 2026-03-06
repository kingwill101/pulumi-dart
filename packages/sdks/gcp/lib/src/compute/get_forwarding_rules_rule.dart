// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rules_rule_service_directory_registration.dart';

class GetForwardingRulesRule {
  /// The 'ports', 'portRange', and 'allPorts' fields are mutually exclusive.
  /// Only packets addressed to ports in the specified range will be forwarded
  /// to the backends configured with this forwarding rule.
  ///
  /// The 'allPorts' field has the following limitations:
  /// * It requires that the forwarding rule 'IPProtocol' be TCP, UDP, SCTP, or
  /// L3_DEFAULT.
  /// * It's applicable only to the following products: internal passthrough
  /// Network Load Balancers, backend service-based external passthrough Network
  /// Load Balancers, and internal and external protocol forwarding.
  /// * Set this field to true to allow packets addressed to any port or packets
  /// lacking destination port information (for example, UDP fragments after the
  /// first fragment) to be forwarded to the backends configured with this
  /// forwarding rule. The L3_DEFAULT protocol requires 'allPorts' be set to
  /// true.
  final pulumi.Input<bool> allPorts;
  /// This field is used along with the 'backend_service' field for
  /// internal load balancing or with the 'target' field for internal
  /// TargetInstance.
  ///
  /// If the field is set to 'TRUE', clients can access ILB from all
  /// regions.
  ///
  /// Otherwise only allows access from clients in the same region as the
  /// internal load balancer.
  final pulumi.Input<bool> allowGlobalAccess;
  /// This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  final pulumi.Input<bool> allowPscGlobalAccess;
  /// Identifies the backend service to which the forwarding rule sends traffic.
  ///
  /// Required for Internal TCP/UDP Load Balancing and Network Load Balancing;
  /// must be omitted for all other load balancer types.
  final pulumi.Input<String> backendService;
  /// [Output Only] The URL for the corresponding base Forwarding Rule. By base Forwarding Rule, we mean the Forwarding Rule that has the same IP address, protocol, and port settings with the current Forwarding Rule, but without sourceIPRanges specified. Always empty if the current Forwarding Rule does not have sourceIPRanges specified.
  final pulumi.Input<String> baseForwardingRule;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String> creationTimestamp;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String> description;
  final pulumi.Input<Map<String, String>> effectiveLabels;
  /// The unique identifier number for the resource. This identifier is defined by the server.
  final pulumi.Input<int> forwardingRuleId;
  /// IP address for which this forwarding rule accepts traffic. When a client
  /// sends traffic to this IP address, the forwarding rule directs the traffic
  /// to the referenced 'target' or 'backendService'.
  ///
  /// While creating a forwarding rule, specifying an 'IPAddress' is
  /// required under the following circumstances:
  ///
  /// * When the 'target' is set to 'targetGrpcProxy' and
  /// 'validateForProxyless' is set to 'true', the
  /// 'IPAddress' should be set to '0.0.0.0'.
  /// * When the 'target' is a Private Service Connect Google APIs
  /// bundle, you must specify an 'IPAddress'.
  ///
  /// Otherwise, you can optionally specify an IP address that references an
  /// existing static (reserved) IP address resource. When omitted, Google Cloud
  /// assigns an ephemeral IP address.
  ///
  /// Use one of the following formats to specify an IP address while creating a
  /// forwarding rule:
  ///
  /// * IP address number, as in '100.1.2.3'
  /// * IPv6 address range, as in '2600:1234::/96'
  /// * Full resource URL, as in
  /// 'https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name'
  /// * Partial URL or by name, as in:
  /// * 'projects/project_id/regions/region/addresses/address-name'
  /// * 'regions/region/addresses/address-name'
  /// * 'global/addresses/address-name'
  /// * 'address-name'
  ///
  /// The forwarding rule's 'target' or 'backendService',
  /// and in most cases, also the 'loadBalancingScheme', determine the
  /// type of IP address that you can use. For detailed information, see
  /// [IP address
  /// specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).
  ///
  /// When reading an 'IPAddress', the API always returns the IP
  /// address number.
  final pulumi.Input<String> ipAddress;
  /// Resource reference of a PublicDelegatedPrefix. The PDP must be a sub-PDP
  /// in EXTERNAL_IPV6_FORWARDING_RULE_CREATION mode.
  /// Use one of the following formats to specify a sub-PDP when creating an
  /// IPv6 NetLB forwarding rule using BYOIP:
  /// Full resource URL, as in:
  /// * 'https://www.googleapis.com/compute/v1/projects/{{projectId}}/regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}'
  /// Partial URL, as in:
  /// * 'projects/{{projectId}}/regions/region/publicDelegatedPrefixes/{{sub-pdp-name}}'
  /// * 'regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}'
  final pulumi.Input<String> ipCollection;
  /// The IP protocol to which this rule applies.
  ///
  /// For protocol forwarding, valid
  /// options are 'TCP', 'UDP', 'ESP',
  /// 'AH', 'SCTP', 'ICMP' and
  /// 'L3_DEFAULT'.
  ///
  /// The valid IP protocols are different for different load balancing products
  /// as described in [Load balancing
  /// features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
  ///
  /// A Forwarding Rule with protocol L3_DEFAULT can attach with target instance or
  /// backend service with UNSPECIFIED protocol.
  /// A forwarding rule with "L3_DEFAULT" IPProtocal cannot be attached to a backend service with TCP or UDP. Possible values: ["TCP", "UDP", "ESP", "AH", "SCTP", "ICMP", "L3_DEFAULT"]
  final pulumi.Input<String> ipProtocol;
  /// The IP address version that will be used by this forwarding rule.
  /// Valid options are IPV4 and IPV6.
  ///
  /// If not set, the IPv4 address will be used by default. Possible values: ["IPV4", "IPV6"]
  final pulumi.Input<String> ipVersion;
  /// Indicates whether or not this load balancer can be used as a collector for
  /// packet mirroring. To prevent mirroring loops, instances behind this
  /// load balancer will not have their traffic mirrored even if a
  /// 'PacketMirroring' rule applies to them.
  ///
  /// This can only be set to true for load balancers that have their
  /// 'loadBalancingScheme' set to 'INTERNAL'.
  final pulumi.Input<bool> isMirroringCollector;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  final pulumi.Input<String> labelFingerprint;
  /// Labels to apply to this forwarding rule.  A list of key-&gt;value pairs.
  ///
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>> labels;
  /// Specifies the forwarding rule type.
  ///
  /// Note that an empty string value ('""') is also supported for some use
  /// cases, for example PSC (private service connection) regional forwarding
  /// rules.
  ///
  /// For more information about forwarding rules, refer to
  /// [Forwarding rule concepts](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts). Default value: "EXTERNAL" Possible values: ["EXTERNAL", "EXTERNAL_MANAGED", "INTERNAL", "INTERNAL_MANAGED"]
  final pulumi.Input<String> loadBalancingScheme;
  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
  ///
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression 'a-z?' which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  ///
  /// For Private Service Connect forwarding rules that forward traffic to Google
  /// APIs, the forwarding rule name must be a 1-20 characters string with
  /// lowercase letters and numbers and must start with a letter.
  final pulumi.Input<String> name;
  /// This field is not used for external load balancing.
  ///
  /// For Internal TCP/UDP Load Balancing, this field identifies the network that
  /// the load balanced IP should belong to for this Forwarding Rule.
  /// If the subnetwork is specified, the network of the subnetwork will be used.
  /// If neither subnetwork nor this field is specified, the default network will
  /// be used.
  ///
  /// For Private Service Connect forwarding rules that forward traffic to Google
  /// APIs, a network must be provided.
  final pulumi.Input<String> network;
  /// This signifies the networking tier used for configuring
  /// this load balancer and can only take the following values:
  /// 'PREMIUM', 'STANDARD'.
  ///
  /// For regional ForwardingRule, the valid values are 'PREMIUM' and
  /// 'STANDARD'. For GlobalForwardingRule, the valid value is
  /// 'PREMIUM'.
  ///
  /// If this field is not specified, it is assumed to be 'PREMIUM'.
  /// If 'IPAddress' is specified, this value must be equal to the
  /// networkTier of the Address. Possible values: ["PREMIUM", "STANDARD"]
  final pulumi.Input<String> networkTier;
  /// This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field.
  final pulumi.Input<bool> noAutomateDnsZone;
  /// The 'ports', 'portRange', and 'allPorts' fields are mutually exclusive.
  /// Only packets addressed to ports in the specified range will be forwarded
  /// to the backends configured with this forwarding rule.
  ///
  /// The 'portRange' field has the following limitations:
  /// * It requires that the forwarding rule 'IPProtocol' be TCP, UDP, or SCTP,
  /// and
  /// * It's applicable only to the following products: external passthrough
  /// Network Load Balancers, internal and external proxy Network Load
  /// Balancers, internal and external Application Load Balancers, external
  /// protocol forwarding, and Classic VPN.
  /// * Some products have restrictions on what ports can be used. See
  /// [port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#port_specifications)
  /// for details.
  ///
  /// For external forwarding rules, two or more forwarding rules cannot use the
  /// same '[IPAddress, IPProtocol]' pair, and cannot have overlapping
  /// 'portRange's.
  ///
  /// For internal forwarding rules within the same VPC network, two or more
  /// forwarding rules cannot use the same '[IPAddress, IPProtocol]' pair, and
  /// cannot have overlapping 'portRange's.
  ///
  /// @pattern: \d+(?:-\d+)?
  final pulumi.Input<String> portRange;
  /// The 'ports', 'portRange', and 'allPorts' fields are mutually exclusive.
  /// Only packets addressed to ports in the specified range will be forwarded
  /// to the backends configured with this forwarding rule.
  ///
  /// The 'ports' field has the following limitations:
  /// * It requires that the forwarding rule 'IPProtocol' be TCP, UDP, or SCTP,
  /// and
  /// * It's applicable only to the following products: internal passthrough
  /// Network Load Balancers, backend service-based external passthrough Network
  /// Load Balancers, and internal protocol forwarding.
  /// * You can specify a list of up to five ports by number, separated by
  /// commas. The ports can be contiguous or discontiguous.
  ///
  /// For external forwarding rules, two or more forwarding rules cannot use the
  /// same '[IPAddress, IPProtocol]' pair if they share at least one port
  /// number.
  ///
  /// For internal forwarding rules within the same VPC network, two or more
  /// forwarding rules cannot use the same '[IPAddress, IPProtocol]' pair if
  /// they share at least one port number.
  ///
  /// @pattern: \d+(?:-\d+)?
  final pulumi.Input<List<String>> ports;
  /// The name of the project.
  final pulumi.Input<String> project;
  /// The PSC connection id of the PSC Forwarding Rule.
  final pulumi.Input<String> pscConnectionId;
  /// The PSC connection status of the PSC Forwarding Rule. Possible values: 'STATUS_UNSPECIFIED', 'PENDING', 'ACCEPTED', 'REJECTED', 'CLOSED'
  final pulumi.Input<String> pscConnectionStatus;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>> pulumiLabels;
  final pulumi.Input<bool> recreateClosedPsc;
  /// The region you want to get the forwarding rules from.
  ///
  /// These arguments must be set in either the provider or the resource in order for the information to be queried.
  final pulumi.Input<String> region;
  /// The URI of the resource.
  final pulumi.Input<String> selfLink;
  /// Service Directory resources to register this forwarding rule with.
  ///
  /// Currently, only supports a single Service Directory resource.
  final pulumi.Input<List<GetForwardingRulesRuleServiceDirectoryRegistration>> serviceDirectoryRegistrations;
  /// An optional prefix to the service name for this Forwarding Rule.
  /// If specified, will be the first label of the fully qualified service
  /// name.
  ///
  /// The label must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the label must be 1-63 characters long and match the
  /// regular expression 'a-z?' which means the first
  /// character must be a lowercase letter, and all following characters
  /// must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  ///
  /// This field is only used for INTERNAL load balancing.
  final pulumi.Input<String> serviceLabel;
  /// The internal fully qualified service name for this Forwarding Rule.
  ///
  /// This field is only used for INTERNAL load balancing.
  final pulumi.Input<String> serviceName;
  /// If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each sourceIpRange entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24).
  final pulumi.Input<List<String>> sourceIpRanges;
  /// This field identifies the subnetwork that the load balanced IP should
  /// belong to for this Forwarding Rule, used in internal load balancing and
  /// network load balancing with IPv6.
  ///
  /// If the network specified is in auto subnet mode, this field is optional.
  /// However, a subnetwork must be specified if the network is in custom subnet
  /// mode or when creating external forwarding rule with IPv6.
  final pulumi.Input<String> subnetwork;
  /// The URL of the target resource to receive the matched traffic.  For
  /// regional forwarding rules, this target must be in the same region as the
  /// forwarding rule. For global forwarding rules, this target must be a global
  /// load balancing resource.
  ///
  /// The forwarded traffic must be of a type appropriate to the target object.
  /// *  For load balancers, see the "Target" column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).
  ///
  /// For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment.
  final pulumi.Input<String> target;

  /// Creates a new [GetForwardingRulesRule].
  /// [allPorts] The 'ports', 'portRange', and 'allPorts' fields are mutually exclusive.
  /// [allowGlobalAccess] This field is used along with the 'backend_service' field for
  /// [allowPscGlobalAccess] This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  /// [backendService] Identifies the backend service to which the forwarding rule sends traffic.
  /// [baseForwardingRule] [Output Only] The URL for the corresponding base Forwarding Rule. By base Forwarding Rule, we mean the Forwarding Rule that has the same IP address, protocol, and port settings with the current Forwarding Rule, but without sourceIPRanges specified. Always empty if the current Forwarding Rule does not have sourceIPRanges specified.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when
  /// [effectiveLabels] Required.
  /// [forwardingRuleId] The unique identifier number for the resource. This identifier is defined by the server.
  /// [ipAddress] IP address for which this forwarding rule accepts traffic. When a client
  /// [ipCollection] Resource reference of a PublicDelegatedPrefix. The PDP must be a sub-PDP
  /// [ipProtocol] The IP protocol to which this rule applies.
  /// [ipVersion] The IP address version that will be used by this forwarding rule.
  /// [isMirroringCollector] Indicates whether or not this load balancer can be used as a collector for
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [labels] Labels to apply to this forwarding rule.  A list of key-&gt;value pairs.
  /// [loadBalancingScheme] Specifies the forwarding rule type.
  /// [name] Name of the resource; provided by the client when the resource is created.
  /// [network] This field is not used for external load balancing.
  /// [networkTier] This signifies the networking tier used for configuring
  /// [noAutomateDnsZone] This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field.
  /// [portRange] The 'ports', 'portRange', and 'allPorts' fields are mutually exclusive.
  /// [ports] The 'ports', 'portRange', and 'allPorts' fields are mutually exclusive.
  /// [project] The name of the project.
  /// [pscConnectionId] The PSC connection id of the PSC Forwarding Rule.
  /// [pscConnectionStatus] The PSC connection status of the PSC Forwarding Rule. Possible values: 'STATUS_UNSPECIFIED', 'PENDING', 'ACCEPTED', 'REJECTED', 'CLOSED'
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [recreateClosedPsc] Required.
  /// [region] The region you want to get the forwarding rules from.
  /// [selfLink] The URI of the resource.
  /// [serviceDirectoryRegistrations] Service Directory resources to register this forwarding rule with.
  /// [serviceLabel] An optional prefix to the service name for this Forwarding Rule.
  /// [serviceName] The internal fully qualified service name for this Forwarding Rule.
  /// [sourceIpRanges] If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each sourceIpRange entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24).
  /// [subnetwork] This field identifies the subnetwork that the load balanced IP should
  /// [target] The URL of the target resource to receive the matched traffic.  For
  const GetForwardingRulesRule({
    required this.allPorts,
    required this.allowGlobalAccess,
    required this.allowPscGlobalAccess,
    required this.backendService,
    required this.baseForwardingRule,
    required this.creationTimestamp,
    required this.description,
    required this.effectiveLabels,
    required this.forwardingRuleId,
    required this.ipAddress,
    required this.ipCollection,
    required this.ipProtocol,
    required this.ipVersion,
    required this.isMirroringCollector,
    required this.labelFingerprint,
    required this.labels,
    required this.loadBalancingScheme,
    required this.name,
    required this.network,
    required this.networkTier,
    required this.noAutomateDnsZone,
    required this.portRange,
    required this.ports,
    required this.project,
    required this.pscConnectionId,
    required this.pscConnectionStatus,
    required this.pulumiLabels,
    required this.recreateClosedPsc,
    required this.region,
    required this.selfLink,
    required this.serviceDirectoryRegistrations,
    required this.serviceLabel,
    required this.serviceName,
    required this.sourceIpRanges,
    required this.subnetwork,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allPorts': allPorts,
      'allowGlobalAccess': allowGlobalAccess,
      'allowPscGlobalAccess': allowPscGlobalAccess,
      'backendService': backendService,
      'baseForwardingRule': baseForwardingRule,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'effectiveLabels': effectiveLabels,
      'forwardingRuleId': forwardingRuleId,
      'ipAddress': ipAddress,
      'ipCollection': ipCollection,
      'ipProtocol': ipProtocol,
      'ipVersion': ipVersion,
      'isMirroringCollector': isMirroringCollector,
      'labelFingerprint': labelFingerprint,
      'labels': labels,
      'loadBalancingScheme': loadBalancingScheme,
      'name': name,
      'network': network,
      'networkTier': networkTier,
      'noAutomateDnsZone': noAutomateDnsZone,
      'portRange': portRange,
      'ports': ports,
      'project': project,
      'pscConnectionId': pscConnectionId,
      'pscConnectionStatus': pscConnectionStatus,
      'pulumiLabels': pulumiLabels,
      'recreateClosedPsc': recreateClosedPsc,
      'region': region,
      'selfLink': selfLink,
      'serviceDirectoryRegistrations': pulumi.Input.mapInputValue<List<GetForwardingRulesRuleServiceDirectoryRegistration>, List<Map<String, dynamic>>>(serviceDirectoryRegistrations, (value) => pulumi.Input.encodeList<GetForwardingRulesRuleServiceDirectoryRegistration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceLabel': serviceLabel,
      'serviceName': serviceName,
      'sourceIpRanges': sourceIpRanges,
      'subnetwork': subnetwork,
      'target': target,
    };
  }

  factory GetForwardingRulesRule.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesRule(
      allPorts: pulumi.Input.fromValue(map['allPorts'] as bool),
      allowGlobalAccess: pulumi.Input.fromValue(map['allowGlobalAccess'] as bool),
      allowPscGlobalAccess: pulumi.Input.fromValue(map['allowPscGlobalAccess'] as bool),
      backendService: pulumi.Input.fromValue(map['backendService'] as String),
      baseForwardingRule: pulumi.Input.fromValue(map['baseForwardingRule'] as String),
      creationTimestamp: pulumi.Input.fromValue(map['creationTimestamp'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      effectiveLabels: pulumi.Input.fromValue((map['effectiveLabels'] as Map).cast<String, String>()),
      forwardingRuleId: pulumi.Input.fromValue(map['forwardingRuleId'] as int),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      ipCollection: pulumi.Input.fromValue(map['ipCollection'] as String),
      ipProtocol: pulumi.Input.fromValue(map['ipProtocol'] as String),
      ipVersion: pulumi.Input.fromValue(map['ipVersion'] as String),
      isMirroringCollector: pulumi.Input.fromValue(map['isMirroringCollector'] as bool),
      labelFingerprint: pulumi.Input.fromValue(map['labelFingerprint'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      loadBalancingScheme: pulumi.Input.fromValue(map['loadBalancingScheme'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      networkTier: pulumi.Input.fromValue(map['networkTier'] as String),
      noAutomateDnsZone: pulumi.Input.fromValue(map['noAutomateDnsZone'] as bool),
      portRange: pulumi.Input.fromValue(map['portRange'] as String),
      ports: pulumi.Input.fromValue((map['ports'] as List).cast<String>()),
      project: pulumi.Input.fromValue(map['project'] as String),
      pscConnectionId: pulumi.Input.fromValue(map['pscConnectionId'] as String),
      pscConnectionStatus: pulumi.Input.fromValue(map['pscConnectionStatus'] as String),
      pulumiLabels: pulumi.Input.fromValue((map['pulumiLabels'] as Map).cast<String, String>()),
      recreateClosedPsc: pulumi.Input.fromValue(map['recreateClosedPsc'] as bool),
      region: pulumi.Input.fromValue(map['region'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      serviceDirectoryRegistrations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetForwardingRulesRuleServiceDirectoryRegistration>(map['serviceDirectoryRegistrations']!, (value) => GetForwardingRulesRuleServiceDirectoryRegistration.fromMap((value as Map).cast<String, dynamic>()))),
      serviceLabel: pulumi.Input.fromValue(map['serviceLabel'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      sourceIpRanges: pulumi.Input.fromValue((map['sourceIpRanges'] as List).cast<String>()),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}

