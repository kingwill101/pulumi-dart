// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_rule_service_directory_registration_compute_v1.dart';
import 'global_forwarding_rule_ip_protocol_compute_v1.dart';
import 'global_forwarding_rule_ip_version_compute_v1.dart';
import 'global_forwarding_rule_load_balancing_scheme_compute_v1.dart';
import 'global_forwarding_rule_network_tier_compute_v1.dart';
import 'global_forwarding_rule_psc_connection_status_compute_v1.dart';
import 'metadata_filter_compute_v1.dart';

/// {@template pulumi_compute_v1_global_forwarding_rule_compute_v1_args_doc}
/// The set of arguments for GlobalForwardingRule.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_global_forwarding_rule_compute_v1_args_doc}
class GlobalForwardingRuleComputeV1Args {
  /// The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The allPorts field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, SCTP, or L3_DEFAULT. - It's applicable only to the following products: internal passthrough Network Load Balancers, backend service-based external passthrough Network Load Balancers, and internal and external protocol forwarding. - Set this field to true to allow packets addressed to any port or packets lacking destination port information (for example, UDP fragments after the first fragment) to be forwarded to the backends configured with this forwarding rule. The L3_DEFAULT protocol requires allPorts be set to true.
  final pulumi.Input<bool>? allPorts;
  /// This field is used along with the backend_service field for internal load balancing or with the target field for internal TargetInstance. If set to true, clients can access the Internal TCP/UDP Load Balancer, Internal HTTP(S) and TCP Proxy Load Balancer from all regions. If false, only allows access from the local region the load balancer is located at. Note that for INTERNAL_MANAGED forwarding rules, this field cannot be changed after the forwarding rule is created.
  final pulumi.Input<bool>? allowGlobalAccess;
  /// This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  final pulumi.Input<bool>? allowPscGlobalAccess;
  /// Identifies the backend service to which the forwarding rule sends traffic. Required for Internal TCP/UDP Load Balancing and Network Load Balancing; must be omitted for all other load balancer types.
  final pulumi.Input<String>? backendService;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// IP address for which this forwarding rule accepts traffic. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the referenced target or backendService. While creating a forwarding rule, specifying an IPAddress is required under the following circumstances: - When the target is set to targetGrpcProxy and validateForProxyless is set to true, the IPAddress should be set to 0.0.0.0. - When the target is a Private Service Connect Google APIs bundle, you must specify an IPAddress. Otherwise, you can optionally specify an IP address that references an existing static (reserved) IP address resource. When omitted, Google Cloud assigns an ephemeral IP address. Use one of the following formats to specify an IP address while creating a forwarding rule: * IP address number, as in `100.1.2.3` * IPv6 address range, as in `2600:1234::/96` * Full resource URL, as in https://www.googleapis.com/compute/v1/projects/ project_id/regions/region/addresses/address-name * Partial URL or by name, as in: - projects/project_id/regions/region/addresses/address-name - regions/region/addresses/address-name - global/addresses/address-name - address-name The forwarding rule's target or backendService, and in most cases, also the loadBalancingScheme, determine the type of IP address that you can use. For detailed information, see [IP address specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). When reading an IPAddress, the API always returns the IP address number.
  final pulumi.Input<String>? ipAddress;
  /// The IP protocol to which this rule applies. For protocol forwarding, valid options are TCP, UDP, ESP, AH, SCTP, ICMP and L3_DEFAULT. The valid IP protocols are different for different load balancing products as described in [Load balancing features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
  final pulumi.Input<GlobalForwardingRuleIpProtocolComputeV1>? ipProtocol;
  /// The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
  final pulumi.Input<GlobalForwardingRuleIpVersionComputeV1>? ipVersion;
  /// Indicates whether or not this load balancer can be used as a collector for packet mirroring. To prevent mirroring loops, instances behind this load balancer will not have their traffic mirrored even if a PacketMirroring rule applies to them. This can only be set to true for load balancers that have their loadBalancingScheme set to INTERNAL.
  final pulumi.Input<bool>? isMirroringCollector;
  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;
  /// Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
  final pulumi.Input<GlobalForwardingRuleLoadBalancingSchemeComputeV1>? loadBalancingScheme;
  /// Opaque filter criteria used by load balancer to restrict routing configuration to a limited set of xDS compliant clients. In their xDS requests to load balancer, xDS clients present node metadata. When there is a match, the relevant configuration is made available to those proxies. Otherwise, all the resources (e.g. TargetHttpProxy, UrlMap) referenced by the ForwardingRule are not visible to those proxies. For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata. If multiple metadataFilters are specified, all of them need to be satisfied in order to be considered a match. metadataFilters specified here will be applifed before those specified in the UrlMap that this ForwardingRule references. metadataFilters only applies to Loadbalancers that have their loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<List<MetadataFilterComputeV1>>? metadataFilters;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. For Private Service Connect forwarding rules that forward traffic to Google APIs, the forwarding rule name must be a 1-20 characters string with lowercase letters and numbers and must start with a letter.
  final pulumi.Input<String>? name;
  /// This field is not used for global external load balancing. For Internal TCP/UDP Load Balancing, this field identifies the network that the load balanced IP should belong to for this Forwarding Rule. If the subnetwork is specified, the network of the subnetwork will be used. If neither subnetwork nor this field is specified, the default network will be used. For Private Service Connect forwarding rules that forward traffic to Google APIs, a network must be provided.
  final pulumi.Input<String>? network;
  /// This signifies the networking tier used for configuring this load balancer and can only take the following values: PREMIUM, STANDARD. For regional ForwardingRule, the valid values are PREMIUM and STANDARD. For GlobalForwardingRule, the valid value is PREMIUM. If this field is not specified, it is assumed to be PREMIUM. If IPAddress is specified, this value must be equal to the networkTier of the Address.
  final pulumi.Input<GlobalForwardingRuleNetworkTierComputeV1>? networkTier;
  /// This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field. Once set, this field is not mutable.
  final pulumi.Input<bool>? noAutomateDnsZone;
  /// The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The portRange field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, or SCTP, and - It's applicable only to the following products: external passthrough Network Load Balancers, internal and external proxy Network Load Balancers, internal and external Application Load Balancers, external protocol forwarding, and Classic VPN. - Some products have restrictions on what ports can be used. See port specifications for details. For external forwarding rules, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair, and cannot have overlapping portRanges. For internal forwarding rules within the same VPC network, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair, and cannot have overlapping portRanges. @pattern: \\d+(?:-\\d+)?
  final pulumi.Input<String>? portRange;
  /// The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The ports field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, or SCTP, and - It's applicable only to the following products: internal passthrough Network Load Balancers, backend service-based external passthrough Network Load Balancers, and internal protocol forwarding. - You can specify a list of up to five ports by number, separated by commas. The ports can be contiguous or discontiguous. For external forwarding rules, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair if they share at least one port number. For internal forwarding rules within the same VPC network, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair if they share at least one port number. @pattern: \\d+(?:-\\d+)?
  final pulumi.Input<List<String>>? ports;
  final pulumi.Input<String>? project;
  final pulumi.Input<GlobalForwardingRulePscConnectionStatusComputeV1>? pscConnectionStatus;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Service Directory resources to register this forwarding rule with. Currently, only supports a single Service Directory resource.
  final pulumi.Input<List<ForwardingRuleServiceDirectoryRegistrationComputeV1>>? serviceDirectoryRegistrations;
  /// An optional prefix to the service name for this Forwarding Rule. If specified, the prefix is the first label of the fully qualified service name. The label must be 1-63 characters long, and comply with RFC1035. Specifically, the label must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. This field is only used for internal load balancing.
  final pulumi.Input<String>? serviceLabel;
  /// If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each source_ip_range entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24).
  final pulumi.Input<List<String>>? sourceIpRanges;
  /// This field identifies the subnetwork that the load balanced IP should belong to for this Forwarding Rule, used in internal load balancing and network load balancing with IPv6. If the network specified is in auto subnet mode, this field is optional. However, a subnetwork must be specified if the network is in custom subnet mode or when creating external forwarding rule with IPv6.
  final pulumi.Input<String>? subnetwork;
  /// The URL of the target resource to receive the matched traffic. For regional forwarding rules, this target must be in the same region as the forwarding rule. For global forwarding rules, this target must be a global load balancing resource. The forwarded traffic must be of a type appropriate to the target object. - For load balancers, see the "Target" column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). - For Private Service Connect forwarding rules that forward traffic to Google APIs, provide the name of a supported Google API bundle: - vpc-sc - APIs that support VPC Service Controls. - all-apis - All supported Google APIs. - For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment. The target is not mutable once set as a service attachment.
  final pulumi.Input<String>? target;

  /// Creates a new [GlobalForwardingRuleComputeV1Args].
  /// [allPorts] The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The allPorts field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, SCTP, or L3_DEFAULT. - It's applicable only to the following products: internal passthrough Network Load Balancers, backend service-based external passthrough Network Load Balancers, and internal and external protocol forwarding. - Set this field to true to allow packets addressed to any port or packets lacking destination port information (for example, UDP fragments after the first fragment) to be forwarded to the backends configured with this forwarding rule. The L3_DEFAULT protocol requires allPorts be set to true.
  /// [allowGlobalAccess] This field is used along with the backend_service field for internal load balancing or with the target field for internal TargetInstance. If set to true, clients can access the Internal TCP/UDP Load Balancer, Internal HTTP(S) and TCP Proxy Load Balancer from all regions. If false, only allows access from the local region the load balancer is located at. Note that for INTERNAL_MANAGED forwarding rules, this field cannot be changed after the forwarding rule is created.
  /// [allowPscGlobalAccess] This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  /// [backendService] Identifies the backend service to which the forwarding rule sends traffic. Required for Internal TCP/UDP Load Balancing and Network Load Balancing; must be omitted for all other load balancer types.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [ipAddress] IP address for which this forwarding rule accepts traffic. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the referenced target or backendService. While creating a forwarding rule, specifying an IPAddress is required under the following circumstances: - When the target is set to targetGrpcProxy and validateForProxyless is set to true, the IPAddress should be set to 0.0.0.0. - When the target is a Private Service Connect Google APIs bundle, you must specify an IPAddress. Otherwise, you can optionally specify an IP address that references an existing static (reserved) IP address resource. When omitted, Google Cloud assigns an ephemeral IP address. Use one of the following formats to specify an IP address while creating a forwarding rule: * IP address number, as in `100.1.2.3` * IPv6 address range, as in `2600:1234::/96` * Full resource URL, as in https://www.googleapis.com/compute/v1/projects/ project_id/regions/region/addresses/address-name * Partial URL or by name, as in: - projects/project_id/regions/region/addresses/address-name - regions/region/addresses/address-name - global/addresses/address-name - address-name The forwarding rule's target or backendService, and in most cases, also the loadBalancingScheme, determine the type of IP address that you can use. For detailed information, see [IP address specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). When reading an IPAddress, the API always returns the IP address number.
  /// [ipProtocol] The IP protocol to which this rule applies. For protocol forwarding, valid options are TCP, UDP, ESP, AH, SCTP, ICMP and L3_DEFAULT. The valid IP protocols are different for different load balancing products as described in [Load balancing features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
  /// [ipVersion] The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
  /// [isMirroringCollector] Indicates whether or not this load balancer can be used as a collector for packet mirroring. To prevent mirroring loops, instances behind this load balancer will not have their traffic mirrored even if a PacketMirroring rule applies to them. This can only be set to true for load balancers that have their loadBalancingScheme set to INTERNAL.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [loadBalancingScheme] Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
  /// [metadataFilters] Opaque filter criteria used by load balancer to restrict routing configuration to a limited set of xDS compliant clients. In their xDS requests to load balancer, xDS clients present node metadata. When there is a match, the relevant configuration is made available to those proxies. Otherwise, all the resources (e.g. TargetHttpProxy, UrlMap) referenced by the ForwardingRule are not visible to those proxies. For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata. If multiple metadataFilters are specified, all of them need to be satisfied in order to be considered a match. metadataFilters specified here will be applifed before those specified in the UrlMap that this ForwardingRule references. metadataFilters only applies to Loadbalancers that have their loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. For Private Service Connect forwarding rules that forward traffic to Google APIs, the forwarding rule name must be a 1-20 characters string with lowercase letters and numbers and must start with a letter.
  /// [network] This field is not used for global external load balancing. For Internal TCP/UDP Load Balancing, this field identifies the network that the load balanced IP should belong to for this Forwarding Rule. If the subnetwork is specified, the network of the subnetwork will be used. If neither subnetwork nor this field is specified, the default network will be used. For Private Service Connect forwarding rules that forward traffic to Google APIs, a network must be provided.
  /// [networkTier] This signifies the networking tier used for configuring this load balancer and can only take the following values: PREMIUM, STANDARD. For regional ForwardingRule, the valid values are PREMIUM and STANDARD. For GlobalForwardingRule, the valid value is PREMIUM. If this field is not specified, it is assumed to be PREMIUM. If IPAddress is specified, this value must be equal to the networkTier of the Address.
  /// [noAutomateDnsZone] This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field. Once set, this field is not mutable.
  /// [portRange] The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The portRange field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, or SCTP, and - It's applicable only to the following products: external passthrough Network Load Balancers, internal and external proxy Network Load Balancers, internal and external Application Load Balancers, external protocol forwarding, and Classic VPN. - Some products have restrictions on what ports can be used. See port specifications for details. For external forwarding rules, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair, and cannot have overlapping portRanges. For internal forwarding rules within the same VPC network, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair, and cannot have overlapping portRanges. @pattern: \\d+(?:-\\d+)?
  /// [ports] The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The ports field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, or SCTP, and - It's applicable only to the following products: internal passthrough Network Load Balancers, backend service-based external passthrough Network Load Balancers, and internal protocol forwarding. - You can specify a list of up to five ports by number, separated by commas. The ports can be contiguous or discontiguous. For external forwarding rules, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair if they share at least one port number. For internal forwarding rules within the same VPC network, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair if they share at least one port number. @pattern: \\d+(?:-\\d+)?
  /// [project] Optional.
  /// [pscConnectionStatus] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [serviceDirectoryRegistrations] Service Directory resources to register this forwarding rule with. Currently, only supports a single Service Directory resource.
  /// [serviceLabel] An optional prefix to the service name for this Forwarding Rule. If specified, the prefix is the first label of the fully qualified service name. The label must be 1-63 characters long, and comply with RFC1035. Specifically, the label must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. This field is only used for internal load balancing.
  /// [sourceIpRanges] If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each source_ip_range entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24).
  /// [subnetwork] This field identifies the subnetwork that the load balanced IP should belong to for this Forwarding Rule, used in internal load balancing and network load balancing with IPv6. If the network specified is in auto subnet mode, this field is optional. However, a subnetwork must be specified if the network is in custom subnet mode or when creating external forwarding rule with IPv6.
  /// [target] The URL of the target resource to receive the matched traffic. For regional forwarding rules, this target must be in the same region as the forwarding rule. For global forwarding rules, this target must be a global load balancing resource. The forwarded traffic must be of a type appropriate to the target object. - For load balancers, see the "Target" column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). - For Private Service Connect forwarding rules that forward traffic to Google APIs, provide the name of a supported Google API bundle: - vpc-sc - APIs that support VPC Service Controls. - all-apis - All supported Google APIs. - For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment. The target is not mutable once set as a service attachment.
  GlobalForwardingRuleComputeV1Args({
    pulumi.Output<bool>? allPorts,
    pulumi.Output<bool>? allowGlobalAccess,
    pulumi.Output<bool>? allowPscGlobalAccess,
    pulumi.Output<String>? backendService,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<GlobalForwardingRuleIpProtocolComputeV1>? ipProtocol,
    pulumi.Output<GlobalForwardingRuleIpVersionComputeV1>? ipVersion,
    pulumi.Output<bool>? isMirroringCollector,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<GlobalForwardingRuleLoadBalancingSchemeComputeV1>? loadBalancingScheme,
    pulumi.Output<List<MetadataFilterComputeV1>>? metadataFilters,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<GlobalForwardingRuleNetworkTierComputeV1>? networkTier,
    pulumi.Output<bool>? noAutomateDnsZone,
    pulumi.Output<String>? portRange,
    pulumi.Output<List<String>>? ports,
    pulumi.Output<String>? project,
    pulumi.Output<GlobalForwardingRulePscConnectionStatusComputeV1>? pscConnectionStatus,
    pulumi.Output<String>? requestId,
    pulumi.Output<List<ForwardingRuleServiceDirectoryRegistrationComputeV1>>? serviceDirectoryRegistrations,
    pulumi.Output<String>? serviceLabel,
    pulumi.Output<List<String>>? sourceIpRanges,
    pulumi.Output<String>? subnetwork,
    pulumi.Output<String>? target,
  }) :
      allPorts = pulumi.Input.asOptionalInput<bool>(allPorts),
      allowGlobalAccess = pulumi.Input.asOptionalInput<bool>(allowGlobalAccess),
      allowPscGlobalAccess = pulumi.Input.asOptionalInput<bool>(allowPscGlobalAccess),
      backendService = pulumi.Input.asOptionalInput<String>(backendService),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      ipProtocol = pulumi.Input.asOptionalInput<GlobalForwardingRuleIpProtocolComputeV1>(ipProtocol),
      ipVersion = pulumi.Input.asOptionalInput<GlobalForwardingRuleIpVersionComputeV1>(ipVersion),
      isMirroringCollector = pulumi.Input.asOptionalInput<bool>(isMirroringCollector),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      loadBalancingScheme = pulumi.Input.asOptionalInput<GlobalForwardingRuleLoadBalancingSchemeComputeV1>(loadBalancingScheme),
      metadataFilters = pulumi.Input.asOptionalInput<List<MetadataFilterComputeV1>>(metadataFilters),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      networkTier = pulumi.Input.asOptionalInput<GlobalForwardingRuleNetworkTierComputeV1>(networkTier),
      noAutomateDnsZone = pulumi.Input.asOptionalInput<bool>(noAutomateDnsZone),
      portRange = pulumi.Input.asOptionalInput<String>(portRange),
      ports = pulumi.Input.asOptionalInput<List<String>>(ports),
      project = pulumi.Input.asOptionalInput<String>(project),
      pscConnectionStatus = pulumi.Input.asOptionalInput<GlobalForwardingRulePscConnectionStatusComputeV1>(pscConnectionStatus),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      serviceDirectoryRegistrations = pulumi.Input.asOptionalInput<List<ForwardingRuleServiceDirectoryRegistrationComputeV1>>(serviceDirectoryRegistrations),
      serviceLabel = pulumi.Input.asOptionalInput<String>(serviceLabel),
      sourceIpRanges = pulumi.Input.asOptionalInput<List<String>>(sourceIpRanges),
      subnetwork = pulumi.Input.asOptionalInput<String>(subnetwork),
      target = pulumi.Input.asOptionalInput<String>(target);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allPorts': ?allPorts,
      'allowGlobalAccess': ?allowGlobalAccess,
      'allowPscGlobalAccess': ?allowPscGlobalAccess,
      'backendService': ?backendService,
      'description': ?description,
      'ipAddress': ?ipAddress,
      'ipProtocol': ?pulumi.Input.mapOptionalInputValue<GlobalForwardingRuleIpProtocolComputeV1, String>(ipProtocol, (value) => value.value),
      'ipVersion': ?pulumi.Input.mapOptionalInputValue<GlobalForwardingRuleIpVersionComputeV1, String>(ipVersion, (value) => value.value),
      'isMirroringCollector': ?isMirroringCollector,
      'labels': ?labels,
      'loadBalancingScheme': ?pulumi.Input.mapOptionalInputValue<GlobalForwardingRuleLoadBalancingSchemeComputeV1, String>(loadBalancingScheme, (value) => value.value),
      'metadataFilters': ?pulumi.Input.mapOptionalInputValue<List<MetadataFilterComputeV1>, List<Map<String, dynamic>>>(metadataFilters, (value) => pulumi.Input.encodeList<MetadataFilterComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'network': ?network,
      'networkTier': ?pulumi.Input.mapOptionalInputValue<GlobalForwardingRuleNetworkTierComputeV1, String>(networkTier, (value) => value.value),
      'noAutomateDnsZone': ?noAutomateDnsZone,
      'portRange': ?portRange,
      'ports': ?ports,
      'project': ?project,
      'pscConnectionStatus': ?pulumi.Input.mapOptionalInputValue<GlobalForwardingRulePscConnectionStatusComputeV1, String>(pscConnectionStatus, (value) => value.value),
      'requestId': ?requestId,
      'serviceDirectoryRegistrations': ?pulumi.Input.mapOptionalInputValue<List<ForwardingRuleServiceDirectoryRegistrationComputeV1>, List<Map<String, dynamic>>>(serviceDirectoryRegistrations, (value) => pulumi.Input.encodeList<ForwardingRuleServiceDirectoryRegistrationComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceLabel': ?serviceLabel,
      'sourceIpRanges': ?sourceIpRanges,
      'subnetwork': ?subnetwork,
      'target': ?target,
    };
  }

  factory GlobalForwardingRuleComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GlobalForwardingRuleComputeV1Args(
      allPorts: map['allPorts'] == null ? null : pulumi.Output.create<bool>(map['allPorts'] as bool),
      allowGlobalAccess: map['allowGlobalAccess'] == null ? null : pulumi.Output.create<bool>(map['allowGlobalAccess'] as bool),
      allowPscGlobalAccess: map['allowPscGlobalAccess'] == null ? null : pulumi.Output.create<bool>(map['allowPscGlobalAccess'] as bool),
      backendService: map['backendService'] == null ? null : pulumi.Output.create<String>(map['backendService'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      ipProtocol: map['ipProtocol'] == null ? null : pulumi.Output.create<GlobalForwardingRuleIpProtocolComputeV1>(GlobalForwardingRuleIpProtocolComputeV1.fromValue(map['ipProtocol'] as String)),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<GlobalForwardingRuleIpVersionComputeV1>(GlobalForwardingRuleIpVersionComputeV1.fromValue(map['ipVersion'] as String)),
      isMirroringCollector: map['isMirroringCollector'] == null ? null : pulumi.Output.create<bool>(map['isMirroringCollector'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      loadBalancingScheme: map['loadBalancingScheme'] == null ? null : pulumi.Output.create<GlobalForwardingRuleLoadBalancingSchemeComputeV1>(GlobalForwardingRuleLoadBalancingSchemeComputeV1.fromValue(map['loadBalancingScheme'] as String)),
      metadataFilters: map['metadataFilters'] == null ? null : pulumi.Output.create<List<MetadataFilterComputeV1>>(pulumi.Input.decodeList<MetadataFilterComputeV1>(map['metadataFilters'], (value) => MetadataFilterComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      networkTier: map['networkTier'] == null ? null : pulumi.Output.create<GlobalForwardingRuleNetworkTierComputeV1>(GlobalForwardingRuleNetworkTierComputeV1.fromValue(map['networkTier'] as String)),
      noAutomateDnsZone: map['noAutomateDnsZone'] == null ? null : pulumi.Output.create<bool>(map['noAutomateDnsZone'] as bool),
      portRange: map['portRange'] == null ? null : pulumi.Output.create<String>(map['portRange'] as String),
      ports: map['ports'] == null ? null : pulumi.Output.create<List<String>>((map['ports'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pscConnectionStatus: map['pscConnectionStatus'] == null ? null : pulumi.Output.create<GlobalForwardingRulePscConnectionStatusComputeV1>(GlobalForwardingRulePscConnectionStatusComputeV1.fromValue(map['pscConnectionStatus'] as String)),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      serviceDirectoryRegistrations: map['serviceDirectoryRegistrations'] == null ? null : pulumi.Output.create<List<ForwardingRuleServiceDirectoryRegistrationComputeV1>>(pulumi.Input.decodeList<ForwardingRuleServiceDirectoryRegistrationComputeV1>(map['serviceDirectoryRegistrations'], (value) => ForwardingRuleServiceDirectoryRegistrationComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      serviceLabel: map['serviceLabel'] == null ? null : pulumi.Output.create<String>(map['serviceLabel'] as String),
      sourceIpRanges: map['sourceIpRanges'] == null ? null : pulumi.Output.create<List<String>>((map['sourceIpRanges'] as List).cast<String>()),
      subnetwork: map['subnetwork'] == null ? null : pulumi.Output.create<String>(map['subnetwork'] as String),
      target: map['target'] == null ? null : pulumi.Output.create<String>(map['target'] as String),
    );
  }
}

