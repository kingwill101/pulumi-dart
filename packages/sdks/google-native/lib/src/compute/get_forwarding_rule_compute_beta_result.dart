// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_rule_service_directory_registration_response_compute_beta.dart';
import 'metadata_filter_response_compute_beta.dart';

/// Result data returned by getForwardingRule.
class GetForwardingRuleComputeBetaResult {
  /// The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The allPorts field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, SCTP, or L3_DEFAULT. - It's applicable only to the following products: internal passthrough Network Load Balancers, backend service-based external passthrough Network Load Balancers, and internal and external protocol forwarding. - Set this field to true to allow packets addressed to any port or packets lacking destination port information (for example, UDP fragments after the first fragment) to be forwarded to the backends configured with this forwarding rule. The L3_DEFAULT protocol requires allPorts be set to true.
  final bool allPorts;
  /// This field is used along with the backend_service field for internal load balancing or with the target field for internal TargetInstance. If set to true, clients can access the Internal TCP/UDP Load Balancer, Internal HTTP(S) and TCP Proxy Load Balancer from all regions. If false, only allows access from the local region the load balancer is located at. Note that for INTERNAL_MANAGED forwarding rules, this field cannot be changed after the forwarding rule is created.
  final bool allowGlobalAccess;
  /// This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  final bool allowPscGlobalAccess;
  /// This is used in PSC consumer ForwardingRule to control whether the producer is allowed to inject packets into the consumer's network. If set to true, the target service attachment must have tunneling enabled and TunnelingConfig.RoutingMode set to PACKET_INJECTION Non-PSC forwarding rules should not use this field.
  final bool allowPscPacketInjection;
  /// Identifies the backend service to which the forwarding rule sends traffic. Required for Internal TCP/UDP Load Balancing and Network Load Balancing; must be omitted for all other load balancer types.
  final String backendService;
  /// The URL for the corresponding base Forwarding Rule. By base Forwarding Rule, we mean the Forwarding Rule that has the same IP address, protocol, and port settings with the current Forwarding Rule, but without sourceIPRanges specified. Always empty if the current Forwarding Rule does not have sourceIPRanges specified.
  final String baseForwardingRule;
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a ForwardingRule. Include the fingerprint in patch request to ensure that you do not overwrite changes that were applied from another concurrent request. To see the latest fingerprint, make a get() request to retrieve a ForwardingRule.
  final String fingerprint;
  /// IP address for which this forwarding rule accepts traffic. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the referenced target or backendService. While creating a forwarding rule, specifying an IPAddress is required under the following circumstances: - When the target is set to targetGrpcProxy and validateForProxyless is set to true, the IPAddress should be set to 0.0.0.0. - When the target is a Private Service Connect Google APIs bundle, you must specify an IPAddress. Otherwise, you can optionally specify an IP address that references an existing static (reserved) IP address resource. When omitted, Google Cloud assigns an ephemeral IP address. Use one of the following formats to specify an IP address while creating a forwarding rule: * IP address number, as in `100.1.2.3` * IPv6 address range, as in `2600:1234::/96` * Full resource URL, as in https://www.googleapis.com/compute/v1/projects/ project_id/regions/region/addresses/address-name * Partial URL or by name, as in: - projects/project_id/regions/region/addresses/address-name - regions/region/addresses/address-name - global/addresses/address-name - address-name The forwarding rule's target or backendService, and in most cases, also the loadBalancingScheme, determine the type of IP address that you can use. For detailed information, see [IP address specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). When reading an IPAddress, the API always returns the IP address number.
  final String ipAddress;
  /// The IP protocol to which this rule applies. For protocol forwarding, valid options are TCP, UDP, ESP, AH, SCTP, ICMP and L3_DEFAULT. The valid IP protocols are different for different load balancing products as described in [Load balancing features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
  final String ipProtocol;
  /// The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
  final String ipVersion;
  /// Indicates whether or not this load balancer can be used as a collector for packet mirroring. To prevent mirroring loops, instances behind this load balancer will not have their traffic mirrored even if a PacketMirroring rule applies to them. This can only be set to true for load balancers that have their loadBalancingScheme set to INTERNAL.
  final bool isMirroringCollector;
  /// Type of the resource. Always compute#forwardingRule for Forwarding Rule resources.
  final String kind;
  /// A fingerprint for the labels being applied to this resource, which is essentially a hash of the labels set used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash in order to update or change labels, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a ForwardingRule.
  final String labelFingerprint;
  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final Map<String, String> labels;
  /// Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
  final String loadBalancingScheme;
  /// Opaque filter criteria used by load balancer to restrict routing configuration to a limited set of xDS compliant clients. In their xDS requests to load balancer, xDS clients present node metadata. When there is a match, the relevant configuration is made available to those proxies. Otherwise, all the resources (e.g. TargetHttpProxy, UrlMap) referenced by the ForwardingRule are not visible to those proxies. For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata. If multiple metadataFilters are specified, all of them need to be satisfied in order to be considered a match. metadataFilters specified here will be applifed before those specified in the UrlMap that this ForwardingRule references. metadataFilters only applies to Loadbalancers that have their loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  final List<MetadataFilterResponseComputeBeta> metadataFilters;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. For Private Service Connect forwarding rules that forward traffic to Google APIs, the forwarding rule name must be a 1-20 characters string with lowercase letters and numbers and must start with a letter.
  final String name;
  /// This field is not used for global external load balancing. For Internal TCP/UDP Load Balancing, this field identifies the network that the load balanced IP should belong to for this Forwarding Rule. If the subnetwork is specified, the network of the subnetwork will be used. If neither subnetwork nor this field is specified, the default network will be used. For Private Service Connect forwarding rules that forward traffic to Google APIs, a network must be provided.
  final String network;
  /// This signifies the networking tier used for configuring this load balancer and can only take the following values: PREMIUM, STANDARD. For regional ForwardingRule, the valid values are PREMIUM and STANDARD. For GlobalForwardingRule, the valid value is PREMIUM. If this field is not specified, it is assumed to be PREMIUM. If IPAddress is specified, this value must be equal to the networkTier of the Address.
  final String networkTier;
  /// This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field. Once set, this field is not mutable.
  final bool noAutomateDnsZone;
  /// The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The portRange field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, or SCTP, and - It's applicable only to the following products: external passthrough Network Load Balancers, internal and external proxy Network Load Balancers, internal and external Application Load Balancers, external protocol forwarding, and Classic VPN. - Some products have restrictions on what ports can be used. See port specifications for details. For external forwarding rules, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair, and cannot have overlapping portRanges. For internal forwarding rules within the same VPC network, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair, and cannot have overlapping portRanges. @pattern: \\d+(?:-\\d+)?
  final String portRange;
  /// The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The ports field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, or SCTP, and - It's applicable only to the following products: internal passthrough Network Load Balancers, backend service-based external passthrough Network Load Balancers, and internal protocol forwarding. - You can specify a list of up to five ports by number, separated by commas. The ports can be contiguous or discontiguous. For external forwarding rules, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair if they share at least one port number. For internal forwarding rules within the same VPC network, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair if they share at least one port number. @pattern: \\d+(?:-\\d+)?
  final List<String> ports;
  /// The PSC connection id of the PSC Forwarding Rule.
  final String pscConnectionId;
  final String pscConnectionStatus;
  /// URL of the region where the regional forwarding rule resides. This field is not applicable to global forwarding rules. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String region;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// Service Directory resources to register this forwarding rule with. Currently, only supports a single Service Directory resource.
  final List<ForwardingRuleServiceDirectoryRegistrationResponseComputeBeta> serviceDirectoryRegistrations;
  /// An optional prefix to the service name for this Forwarding Rule. If specified, the prefix is the first label of the fully qualified service name. The label must be 1-63 characters long, and comply with RFC1035. Specifically, the label must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. This field is only used for internal load balancing.
  final String serviceLabel;
  /// The internal fully qualified service name for this Forwarding Rule. This field is only used for internal load balancing.
  final String serviceName;
  /// If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each source_ip_range entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24).
  final List<String> sourceIpRanges;
  /// This field identifies the subnetwork that the load balanced IP should belong to for this Forwarding Rule, used in internal load balancing and network load balancing with IPv6. If the network specified is in auto subnet mode, this field is optional. However, a subnetwork must be specified if the network is in custom subnet mode or when creating external forwarding rule with IPv6.
  final String subnetwork;
  /// The URL of the target resource to receive the matched traffic. For regional forwarding rules, this target must be in the same region as the forwarding rule. For global forwarding rules, this target must be a global load balancing resource. The forwarded traffic must be of a type appropriate to the target object. - For load balancers, see the "Target" column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). - For Private Service Connect forwarding rules that forward traffic to Google APIs, provide the name of a supported Google API bundle: - vpc-sc - APIs that support VPC Service Controls. - all-apis - All supported Google APIs. - For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment. The target is not mutable once set as a service attachment.
  final String target;

  /// Creates a new [GetForwardingRuleComputeBetaResult].
  /// [allPorts] The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The allPorts field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, SCTP, or L3_DEFAULT. - It's applicable only to the following products: internal passthrough Network Load Balancers, backend service-based external passthrough Network Load Balancers, and internal and external protocol forwarding. - Set this field to true to allow packets addressed to any port or packets lacking destination port information (for example, UDP fragments after the first fragment) to be forwarded to the backends configured with this forwarding rule. The L3_DEFAULT protocol requires allPorts be set to true.
  /// [allowGlobalAccess] This field is used along with the backend_service field for internal load balancing or with the target field for internal TargetInstance. If set to true, clients can access the Internal TCP/UDP Load Balancer, Internal HTTP(S) and TCP Proxy Load Balancer from all regions. If false, only allows access from the local region the load balancer is located at. Note that for INTERNAL_MANAGED forwarding rules, this field cannot be changed after the forwarding rule is created.
  /// [allowPscGlobalAccess] This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  /// [allowPscPacketInjection] This is used in PSC consumer ForwardingRule to control whether the producer is allowed to inject packets into the consumer's network. If set to true, the target service attachment must have tunneling enabled and TunnelingConfig.RoutingMode set to PACKET_INJECTION Non-PSC forwarding rules should not use this field.
  /// [backendService] Identifies the backend service to which the forwarding rule sends traffic. Required for Internal TCP/UDP Load Balancing and Network Load Balancing; must be omitted for all other load balancer types.
  /// [baseForwardingRule] The URL for the corresponding base Forwarding Rule. By base Forwarding Rule, we mean the Forwarding Rule that has the same IP address, protocol, and port settings with the current Forwarding Rule, but without sourceIPRanges specified. Always empty if the current Forwarding Rule does not have sourceIPRanges specified.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a ForwardingRule. Include the fingerprint in patch request to ensure that you do not overwrite changes that were applied from another concurrent request. To see the latest fingerprint, make a get() request to retrieve a ForwardingRule.
  /// [ipAddress] IP address for which this forwarding rule accepts traffic. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the referenced target or backendService. While creating a forwarding rule, specifying an IPAddress is required under the following circumstances: - When the target is set to targetGrpcProxy and validateForProxyless is set to true, the IPAddress should be set to 0.0.0.0. - When the target is a Private Service Connect Google APIs bundle, you must specify an IPAddress. Otherwise, you can optionally specify an IP address that references an existing static (reserved) IP address resource. When omitted, Google Cloud assigns an ephemeral IP address. Use one of the following formats to specify an IP address while creating a forwarding rule: * IP address number, as in `100.1.2.3` * IPv6 address range, as in `2600:1234::/96` * Full resource URL, as in https://www.googleapis.com/compute/v1/projects/ project_id/regions/region/addresses/address-name * Partial URL or by name, as in: - projects/project_id/regions/region/addresses/address-name - regions/region/addresses/address-name - global/addresses/address-name - address-name The forwarding rule's target or backendService, and in most cases, also the loadBalancingScheme, determine the type of IP address that you can use. For detailed information, see [IP address specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). When reading an IPAddress, the API always returns the IP address number.
  /// [ipProtocol] The IP protocol to which this rule applies. For protocol forwarding, valid options are TCP, UDP, ESP, AH, SCTP, ICMP and L3_DEFAULT. The valid IP protocols are different for different load balancing products as described in [Load balancing features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
  /// [ipVersion] The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
  /// [isMirroringCollector] Indicates whether or not this load balancer can be used as a collector for packet mirroring. To prevent mirroring loops, instances behind this load balancer will not have their traffic mirrored even if a PacketMirroring rule applies to them. This can only be set to true for load balancers that have their loadBalancingScheme set to INTERNAL.
  /// [kind] Type of the resource. Always compute#forwardingRule for Forwarding Rule resources.
  /// [labelFingerprint] A fingerprint for the labels being applied to this resource, which is essentially a hash of the labels set used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash in order to update or change labels, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a ForwardingRule.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [loadBalancingScheme] Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
  /// [metadataFilters] Opaque filter criteria used by load balancer to restrict routing configuration to a limited set of xDS compliant clients. In their xDS requests to load balancer, xDS clients present node metadata. When there is a match, the relevant configuration is made available to those proxies. Otherwise, all the resources (e.g. TargetHttpProxy, UrlMap) referenced by the ForwardingRule are not visible to those proxies. For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata. If multiple metadataFilters are specified, all of them need to be satisfied in order to be considered a match. metadataFilters specified here will be applifed before those specified in the UrlMap that this ForwardingRule references. metadataFilters only applies to Loadbalancers that have their loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. For Private Service Connect forwarding rules that forward traffic to Google APIs, the forwarding rule name must be a 1-20 characters string with lowercase letters and numbers and must start with a letter.
  /// [network] This field is not used for global external load balancing. For Internal TCP/UDP Load Balancing, this field identifies the network that the load balanced IP should belong to for this Forwarding Rule. If the subnetwork is specified, the network of the subnetwork will be used. If neither subnetwork nor this field is specified, the default network will be used. For Private Service Connect forwarding rules that forward traffic to Google APIs, a network must be provided.
  /// [networkTier] This signifies the networking tier used for configuring this load balancer and can only take the following values: PREMIUM, STANDARD. For regional ForwardingRule, the valid values are PREMIUM and STANDARD. For GlobalForwardingRule, the valid value is PREMIUM. If this field is not specified, it is assumed to be PREMIUM. If IPAddress is specified, this value must be equal to the networkTier of the Address.
  /// [noAutomateDnsZone] This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field. Once set, this field is not mutable.
  /// [portRange] The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The portRange field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, or SCTP, and - It's applicable only to the following products: external passthrough Network Load Balancers, internal and external proxy Network Load Balancers, internal and external Application Load Balancers, external protocol forwarding, and Classic VPN. - Some products have restrictions on what ports can be used. See port specifications for details. For external forwarding rules, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair, and cannot have overlapping portRanges. For internal forwarding rules within the same VPC network, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair, and cannot have overlapping portRanges. @pattern: \\d+(?:-\\d+)?
  /// [ports] The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The ports field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, or SCTP, and - It's applicable only to the following products: internal passthrough Network Load Balancers, backend service-based external passthrough Network Load Balancers, and internal protocol forwarding. - You can specify a list of up to five ports by number, separated by commas. The ports can be contiguous or discontiguous. For external forwarding rules, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair if they share at least one port number. For internal forwarding rules within the same VPC network, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair if they share at least one port number. @pattern: \\d+(?:-\\d+)?
  /// [pscConnectionId] The PSC connection id of the PSC Forwarding Rule.
  /// [pscConnectionStatus] Required.
  /// [region] URL of the region where the regional forwarding rule resides. This field is not applicable to global forwarding rules. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  /// [selfLink] Server-defined URL for the resource.
  /// [serviceDirectoryRegistrations] Service Directory resources to register this forwarding rule with. Currently, only supports a single Service Directory resource.
  /// [serviceLabel] An optional prefix to the service name for this Forwarding Rule. If specified, the prefix is the first label of the fully qualified service name. The label must be 1-63 characters long, and comply with RFC1035. Specifically, the label must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. This field is only used for internal load balancing.
  /// [serviceName] The internal fully qualified service name for this Forwarding Rule. This field is only used for internal load balancing.
  /// [sourceIpRanges] If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each source_ip_range entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24).
  /// [subnetwork] This field identifies the subnetwork that the load balanced IP should belong to for this Forwarding Rule, used in internal load balancing and network load balancing with IPv6. If the network specified is in auto subnet mode, this field is optional. However, a subnetwork must be specified if the network is in custom subnet mode or when creating external forwarding rule with IPv6.
  /// [target] The URL of the target resource to receive the matched traffic. For regional forwarding rules, this target must be in the same region as the forwarding rule. For global forwarding rules, this target must be a global load balancing resource. The forwarded traffic must be of a type appropriate to the target object. - For load balancers, see the "Target" column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). - For Private Service Connect forwarding rules that forward traffic to Google APIs, provide the name of a supported Google API bundle: - vpc-sc - APIs that support VPC Service Controls. - all-apis - All supported Google APIs. - For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment. The target is not mutable once set as a service attachment.
  GetForwardingRuleComputeBetaResult({
    required this.allPorts,
    required this.allowGlobalAccess,
    required this.allowPscGlobalAccess,
    required this.allowPscPacketInjection,
    required this.backendService,
    required this.baseForwardingRule,
    required this.creationTimestamp,
    required this.description,
    required this.fingerprint,
    required this.ipAddress,
    required this.ipProtocol,
    required this.ipVersion,
    required this.isMirroringCollector,
    required this.kind,
    required this.labelFingerprint,
    required this.labels,
    required this.loadBalancingScheme,
    required this.metadataFilters,
    required this.name,
    required this.network,
    required this.networkTier,
    required this.noAutomateDnsZone,
    required this.portRange,
    required this.ports,
    required this.pscConnectionId,
    required this.pscConnectionStatus,
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
      'allowPscPacketInjection': allowPscPacketInjection,
      'backendService': backendService,
      'baseForwardingRule': baseForwardingRule,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'fingerprint': fingerprint,
      'ipAddress': ipAddress,
      'ipProtocol': ipProtocol,
      'ipVersion': ipVersion,
      'isMirroringCollector': isMirroringCollector,
      'kind': kind,
      'labelFingerprint': labelFingerprint,
      'labels': labels,
      'loadBalancingScheme': loadBalancingScheme,
      'metadataFilters': pulumi.Input.encodeList<MetadataFilterResponseComputeBeta, Map<String, dynamic>>(metadataFilters, (value) => value.toMap()),
      'name': name,
      'network': network,
      'networkTier': networkTier,
      'noAutomateDnsZone': noAutomateDnsZone,
      'portRange': portRange,
      'ports': ports,
      'pscConnectionId': pscConnectionId,
      'pscConnectionStatus': pscConnectionStatus,
      'region': region,
      'selfLink': selfLink,
      'serviceDirectoryRegistrations': pulumi.Input.encodeList<ForwardingRuleServiceDirectoryRegistrationResponseComputeBeta, Map<String, dynamic>>(serviceDirectoryRegistrations, (value) => value.toMap()),
      'serviceLabel': serviceLabel,
      'serviceName': serviceName,
      'sourceIpRanges': sourceIpRanges,
      'subnetwork': subnetwork,
      'target': target,
    };
  }

  factory GetForwardingRuleComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetForwardingRuleComputeBetaResult(
      allPorts: map['allPorts'] as bool,
      allowGlobalAccess: map['allowGlobalAccess'] as bool,
      allowPscGlobalAccess: map['allowPscGlobalAccess'] as bool,
      allowPscPacketInjection: map['allowPscPacketInjection'] as bool,
      backendService: map['backendService'] as String,
      baseForwardingRule: map['baseForwardingRule'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      ipAddress: map['ipAddress'] as String,
      ipProtocol: map['ipProtocol'] as String,
      ipVersion: map['ipVersion'] as String,
      isMirroringCollector: map['isMirroringCollector'] as bool,
      kind: map['kind'] as String,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      loadBalancingScheme: map['loadBalancingScheme'] as String,
      metadataFilters: pulumi.Input.decodeList<MetadataFilterResponseComputeBeta>(map['metadataFilters'], (value) => MetadataFilterResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      network: map['network'] as String,
      networkTier: map['networkTier'] as String,
      noAutomateDnsZone: map['noAutomateDnsZone'] as bool,
      portRange: map['portRange'] as String,
      ports: (map['ports'] as List).cast<String>(),
      pscConnectionId: map['pscConnectionId'] as String,
      pscConnectionStatus: map['pscConnectionStatus'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      serviceDirectoryRegistrations: pulumi.Input.decodeList<ForwardingRuleServiceDirectoryRegistrationResponseComputeBeta>(map['serviceDirectoryRegistrations'], (value) => ForwardingRuleServiceDirectoryRegistrationResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      serviceLabel: map['serviceLabel'] as String,
      serviceName: map['serviceName'] as String,
      sourceIpRanges: (map['sourceIpRanges'] as List).cast<String>(),
      subnetwork: map['subnetwork'] as String,
      target: map['target'] as String,
    );
  }
}

