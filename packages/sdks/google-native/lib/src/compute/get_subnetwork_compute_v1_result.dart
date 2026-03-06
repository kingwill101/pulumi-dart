// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnetwork_log_config_response_compute_v1.dart';
import 'subnetwork_secondary_range_response_compute_v1.dart';

/// Result data returned by getSubnetwork.
class GetSubnetworkComputeV1Result {
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time.
  final String description;
  /// Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. This field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  final bool enableFlowLogs;
  /// The external IPv6 address range that is owned by this subnetwork.
  final String externalIpv6Prefix;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a Subnetwork. An up-to-date fingerprint must be provided in order to update the Subnetwork, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a Subnetwork.
  final String fingerprint;
  /// The gateway address for default routes to reach destination addresses outside this subnetwork.
  final String gatewayAddress;
  /// The internal IPv6 address range that is assigned to this subnetwork.
  final String internalIpv6Prefix;
  /// The range of internal addresses that are owned by this subnetwork. Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 100.64.0.0/10. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported. This field is set at resource creation time. The range can be any range listed in the Valid ranges list. The range can be expanded after creation using expandIpCidrRange.
  final String ipCidrRange;
  /// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation or the first time the subnet is updated into IPV4_IPV6 dual stack.
  final String ipv6AccessType;
  /// This field is for internal use.
  final String ipv6CidrRange;
  /// Type of the resource. Always compute#subnetwork for Subnetwork resources.
  final String kind;
  /// This field denotes the VPC flow logging options for this subnetwork. If logging is enabled, logs are exported to Cloud Logging.
  final SubnetworkLogConfigResponseComputeV1 logConfig;
  /// The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// The URL of the network to which this subnetwork belongs, provided by the client when initially creating the subnetwork. This field can be set only at resource creation time.
  final String network;
  /// Whether the VMs in this subnet can access Google services without assigned external IP addresses. This field can be both set at resource creation time and updated using setPrivateIpGoogleAccess.
  final bool privateIpGoogleAccess;
  /// This field is for internal use. This field can be both set at resource creation time and updated using patch.
  final String privateIpv6GoogleAccess;
  /// The purpose of the resource. This field can be either PRIVATE, REGIONAL_MANAGED_PROXY, PRIVATE_SERVICE_CONNECT, or INTERNAL_HTTPS_LOAD_BALANCER. PRIVATE is the default purpose for user-created subnets or subnets that are automatically created in auto mode networks. A subnet with purpose set to REGIONAL_MANAGED_PROXY is a user-created subnetwork that is reserved for regional Envoy-based load balancers. A subnet with purpose set to PRIVATE_SERVICE_CONNECT is used to publish services using Private Service Connect. A subnet with purpose set to INTERNAL_HTTPS_LOAD_BALANCER is a proxy-only subnet that can be used only by regional internal HTTP(S) load balancers. Note that REGIONAL_MANAGED_PROXY is the preferred setting for all regional Envoy load balancers. If unspecified, the subnet purpose defaults to PRIVATE. The enableFlowLogs field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  final String purpose;
  /// URL of the region where the Subnetwork resides. This field can be set only at resource creation time.
  final String region;
  /// The role of subnetwork. Currently, this field is only used when purpose = REGIONAL_MANAGED_PROXY. The value can be set to ACTIVE or BACKUP. An ACTIVE subnetwork is one that is currently being used for Envoy-based load balancers in a region. A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining. This field can be updated with a patch request.
  final String role;
  /// An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges. This field can be updated with a patch request.
  final List<SubnetworkSecondaryRangeResponseComputeV1> secondaryIpRanges;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// The stack type for the subnet. If set to IPV4_ONLY, new VMs in the subnet are assigned IPv4 addresses only. If set to IPV4_IPV6, new VMs in the subnet can be assigned both IPv4 and IPv6 addresses. If not specified, IPV4_ONLY is used. This field can be both set at resource creation time and updated using patch.
  final String stackType;
  /// The state of the subnetwork, which can be one of the following values: READY: Subnetwork is created and ready to use DRAINING: only applicable to subnetworks that have the purpose set to INTERNAL_HTTPS_LOAD_BALANCER and indicates that connections to the load balancer are being drained. A subnetwork that is draining cannot be used or modified until it reaches a status of READY
  final String state;

  /// Creates a new [GetSubnetworkComputeV1Result].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time.
  /// [enableFlowLogs] Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. This field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  /// [externalIpv6Prefix] The external IPv6 address range that is owned by this subnetwork.
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a Subnetwork. An up-to-date fingerprint must be provided in order to update the Subnetwork, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a Subnetwork.
  /// [gatewayAddress] The gateway address for default routes to reach destination addresses outside this subnetwork.
  /// [internalIpv6Prefix] The internal IPv6 address range that is assigned to this subnetwork.
  /// [ipCidrRange] The range of internal addresses that are owned by this subnetwork. Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 100.64.0.0/10. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported. This field is set at resource creation time. The range can be any range listed in the Valid ranges list. The range can be expanded after creation using expandIpCidrRange.
  /// [ipv6AccessType] The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation or the first time the subnet is updated into IPV4_IPV6 dual stack.
  /// [ipv6CidrRange] This field is for internal use.
  /// [kind] Type of the resource. Always compute#subnetwork for Subnetwork resources.
  /// [logConfig] This field denotes the VPC flow logging options for this subnetwork. If logging is enabled, logs are exported to Cloud Logging.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] The URL of the network to which this subnetwork belongs, provided by the client when initially creating the subnetwork. This field can be set only at resource creation time.
  /// [privateIpGoogleAccess] Whether the VMs in this subnet can access Google services without assigned external IP addresses. This field can be both set at resource creation time and updated using setPrivateIpGoogleAccess.
  /// [privateIpv6GoogleAccess] This field is for internal use. This field can be both set at resource creation time and updated using patch.
  /// [purpose] The purpose of the resource. This field can be either PRIVATE, REGIONAL_MANAGED_PROXY, PRIVATE_SERVICE_CONNECT, or INTERNAL_HTTPS_LOAD_BALANCER. PRIVATE is the default purpose for user-created subnets or subnets that are automatically created in auto mode networks. A subnet with purpose set to REGIONAL_MANAGED_PROXY is a user-created subnetwork that is reserved for regional Envoy-based load balancers. A subnet with purpose set to PRIVATE_SERVICE_CONNECT is used to publish services using Private Service Connect. A subnet with purpose set to INTERNAL_HTTPS_LOAD_BALANCER is a proxy-only subnet that can be used only by regional internal HTTP(S) load balancers. Note that REGIONAL_MANAGED_PROXY is the preferred setting for all regional Envoy load balancers. If unspecified, the subnet purpose defaults to PRIVATE. The enableFlowLogs field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  /// [region] URL of the region where the Subnetwork resides. This field can be set only at resource creation time.
  /// [role] The role of subnetwork. Currently, this field is only used when purpose = REGIONAL_MANAGED_PROXY. The value can be set to ACTIVE or BACKUP. An ACTIVE subnetwork is one that is currently being used for Envoy-based load balancers in a region. A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining. This field can be updated with a patch request.
  /// [secondaryIpRanges] An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges. This field can be updated with a patch request.
  /// [selfLink] Server-defined URL for the resource.
  /// [stackType] The stack type for the subnet. If set to IPV4_ONLY, new VMs in the subnet are assigned IPv4 addresses only. If set to IPV4_IPV6, new VMs in the subnet can be assigned both IPv4 and IPv6 addresses. If not specified, IPV4_ONLY is used. This field can be both set at resource creation time and updated using patch.
  /// [state] The state of the subnetwork, which can be one of the following values: READY: Subnetwork is created and ready to use DRAINING: only applicable to subnetworks that have the purpose set to INTERNAL_HTTPS_LOAD_BALANCER and indicates that connections to the load balancer are being drained. A subnetwork that is draining cannot be used or modified until it reaches a status of READY
  const GetSubnetworkComputeV1Result({
    required this.creationTimestamp,
    required this.description,
    required this.enableFlowLogs,
    required this.externalIpv6Prefix,
    required this.fingerprint,
    required this.gatewayAddress,
    required this.internalIpv6Prefix,
    required this.ipCidrRange,
    required this.ipv6AccessType,
    required this.ipv6CidrRange,
    required this.kind,
    required this.logConfig,
    required this.name,
    required this.network,
    required this.privateIpGoogleAccess,
    required this.privateIpv6GoogleAccess,
    required this.purpose,
    required this.region,
    required this.role,
    required this.secondaryIpRanges,
    required this.selfLink,
    required this.stackType,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': creationTimestamp,
      'description': description,
      'enableFlowLogs': enableFlowLogs,
      'externalIpv6Prefix': externalIpv6Prefix,
      'fingerprint': fingerprint,
      'gatewayAddress': gatewayAddress,
      'internalIpv6Prefix': internalIpv6Prefix,
      'ipCidrRange': ipCidrRange,
      'ipv6AccessType': ipv6AccessType,
      'ipv6CidrRange': ipv6CidrRange,
      'kind': kind,
      'logConfig': logConfig.toMap(),
      'name': name,
      'network': network,
      'privateIpGoogleAccess': privateIpGoogleAccess,
      'privateIpv6GoogleAccess': privateIpv6GoogleAccess,
      'purpose': purpose,
      'region': region,
      'role': role,
      'secondaryIpRanges': pulumi.Input.encodeList<SubnetworkSecondaryRangeResponseComputeV1, Map<String, dynamic>>(secondaryIpRanges, (value) => value.toMap()),
      'selfLink': selfLink,
      'stackType': stackType,
      'state': state,
    };
  }

  factory GetSubnetworkComputeV1Result.fromMap(Map<String, dynamic> map) {
    return GetSubnetworkComputeV1Result(
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      enableFlowLogs: map['enableFlowLogs'] as bool,
      externalIpv6Prefix: map['externalIpv6Prefix'] as String,
      fingerprint: map['fingerprint'] as String,
      gatewayAddress: map['gatewayAddress'] as String,
      internalIpv6Prefix: map['internalIpv6Prefix'] as String,
      ipCidrRange: map['ipCidrRange'] as String,
      ipv6AccessType: map['ipv6AccessType'] as String,
      ipv6CidrRange: map['ipv6CidrRange'] as String,
      kind: map['kind'] as String,
      logConfig: SubnetworkLogConfigResponseComputeV1.fromMap((map['logConfig']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      network: map['network'] as String,
      privateIpGoogleAccess: map['privateIpGoogleAccess'] as bool,
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] as String,
      purpose: map['purpose'] as String,
      region: map['region'] as String,
      role: map['role'] as String,
      secondaryIpRanges: pulumi.Input.decodeList<SubnetworkSecondaryRangeResponseComputeV1>(map['secondaryIpRanges']!, (value) => SubnetworkSecondaryRangeResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] as String,
      stackType: map['stackType'] as String,
      state: map['state'] as String,
    );
  }
}

