// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnetwork_log_config.dart';
import 'subnetwork_params.dart';
import 'subnetwork_secondary_ip_range.dart';

/// Input properties used for looking up and filtering Subnetwork resources.
class SubnetworkState {
  /// Typically packets destined to IPs within the subnetwork range that do not match
  /// existing resources are dropped and prevented from leaving the VPC.
  /// Setting this field to true will allow these packets to match dynamic routes injected
  /// via BGP even if their destinations match existing subnet ranges.
  final pulumi.Input<bool>? allowSubnetCidrRoutesOverlap;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource. Provide this property when
  /// you create the resource. This field can be set only at resource
  /// creation time.
  final pulumi.Input<String>? description;
  /// The range of external IPv6 addresses that are owned by this subnetwork.
  final pulumi.Input<String>? externalIpv6Prefix;
  /// Fingerprint of this resource. This field is used internally during updates of this resource.
  final pulumi.Input<String>? fingerprint;
  /// The gateway address for default routes to reach destination addresses
  /// outside this subnetwork.
  final pulumi.Input<String>? gatewayAddress;
  /// The internal IPv6 address range that is assigned to this subnetwork.
  final pulumi.Input<String>? internalIpv6Prefix;
  /// The range of internal addresses that are owned by this subnetwork.
  /// Provide this property when you create the subnetwork. For example,
  /// 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and
  /// non-overlapping within a network. Only IPv4 is supported.
  /// Field is optional when `reserved_internal_range` is defined, otherwise required.
  final pulumi.Input<String>? ipCidrRange;
  /// Resource reference of a PublicDelegatedPrefix. The PDP must be a sub-PDP
  /// in EXTERNAL_IPV6_SUBNETWORK_CREATION or INTERNAL_IPV6_SUBNETWORK_CREATION
  /// mode. Use one of the following formats to specify a sub-PDP when creating
  /// a dual stack or IPv6-only subnetwork using BYOIP:
  /// Full resource URL, as in:
  /// * `https://www.googleapis.com/compute/v1/projects/{{projectId}}/regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}`
  /// Partial URL, as in:
  /// * `projects/{{projectId}}/regions/region/publicDelegatedPrefixes/{{sub-pdp-name}}`
  /// * `regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}`
  final pulumi.Input<String>? ipCollection;
  /// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation
  /// or the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6_type is EXTERNAL then this subnet
  /// cannot enable direct path.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  final pulumi.Input<String>? ipv6AccessType;
  /// The range of internal IPv6 addresses that are owned by this subnetwork.
  final pulumi.Input<String>? ipv6CidrRange;
  /// Possible endpoints of this subnetwork. It can be one of the following:
  /// * VM_ONLY: The subnetwork can be used for creating instances and IPv6 addresses with VM endpoint type. Such a subnetwork
  /// gets external IPv6 ranges from a public delegated prefix and cannot be used to create NetLb.
  /// * VM_AND_FR: The subnetwork can be used for creating both VM instances and Forwarding Rules. It can also be used to reserve
  /// IPv6 addresses with both VM and FR endpoint types. Such a subnetwork gets its IPv6 range from Google IP Pool directly.
  final pulumi.Input<String>? ipv6GceEndpoint;
  /// This field denotes the VPC flow logging options for this subnetwork. If
  /// logging is enabled, logs are exported to Cloud Logging. Flow logging
  /// isn't supported if the subnet `purpose` field is set to subnetwork is
  /// `REGIONAL_MANAGED_PROXY` or `GLOBAL_MANAGED_PROXY`.
  /// Structure is documented below.
  final pulumi.Input<SubnetworkLogConfig>? logConfig;
  /// The name of the resource, provided by the client when initially
  /// creating the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which
  /// means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The network this subnet belongs to.
  /// Only networks that are in the distributed mode can have subnetworks.
  final pulumi.Input<String>? network;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<SubnetworkParams>? params;
  /// When enabled, VMs in this subnetwork without external IP addresses can
  /// access Google APIs and services by using Private Google Access.
  final pulumi.Input<bool>? privateIpGoogleAccess;
  /// The private IPv6 google access type for the VMs in this subnet.
  final pulumi.Input<String>? privateIpv6GoogleAccess;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The purpose of the resource. This field can be either `PRIVATE`, `REGIONAL_MANAGED_PROXY`, `GLOBAL_MANAGED_PROXY`, `PRIVATE_SERVICE_CONNECT`, `PEER_MIGRATION` or `PRIVATE_NAT`.
  /// A subnet with purpose set to `REGIONAL_MANAGED_PROXY` is a user-created subnetwork that is reserved for regional Envoy-based load balancers.
  /// A subnetwork in a given region with purpose set to `GLOBAL_MANAGED_PROXY` is a proxy-only subnet and is shared between all the cross-regional Envoy-based load balancers.
  /// A subnetwork with purpose set to `PRIVATE_SERVICE_CONNECT` reserves the subnet for hosting a Private Service Connect published service.
  /// A subnetwork with purpose set to `PEER_MIGRATION` is a user created subnetwork that is reserved for migrating resources from one peered network to another.
  /// A subnetwork with purpose set to `PRIVATE_NAT` is used as source range for Private NAT gateways.
  /// Note that `REGIONAL_MANAGED_PROXY` is the preferred setting for all regional Envoy load balancers.
  /// If unspecified, the purpose defaults to `PRIVATE`.
  final pulumi.Input<String>? purpose;
  /// The GCP region for this subnetwork.
  final pulumi.Input<String>? region;
  /// The ID of the reserved internal range. Must be prefixed with `networkconnectivity.googleapis.com`
  /// E.g. `networkconnectivity.googleapis.com/projects/{project}/locations/global/internalRanges/{rangeId}`
  final pulumi.Input<String>? reservedInternalRange;
  /// 'Configures subnet mask resolution for this subnetwork.'
  /// Possible values are: `ARP_ALL_RANGES`, `ARP_PRIMARY_RANGE`.
  final pulumi.Input<String>? resolveSubnetMask;
  /// The role of subnetwork.
  /// Currently, this field is only used when `purpose` is `REGIONAL_MANAGED_PROXY`.
  /// The value can be set to `ACTIVE` or `BACKUP`.
  /// An `ACTIVE` subnetwork is one that is currently being used for Envoy-based load balancers in a region.
  /// A `BACKUP` subnetwork is one that is ready to be promoted to `ACTIVE` or is currently draining.
  /// Possible values are: `ACTIVE`, `BACKUP`.
  final pulumi.Input<String>? role;
  /// An array of configurations for secondary IP ranges for VM instances
  /// contained in this subnetwork. The primary IP of such VM must belong
  /// to the primary ipCidrRange of the subnetwork. The alias IPs may belong
  /// to either primary or secondary ranges.
  /// Structure is documented below.
  final pulumi.Input<List<SubnetworkSecondaryIpRange>>? secondaryIpRanges;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// Controls the removal behavior of secondary_ip_range.
  /// When false, removing secondary_ip_range from config will not produce a diff as
  /// the provider will default to the API's value.
  /// When true, the provider will treat removing secondary_ip_range as sending an
  /// empty list of secondary IP ranges to the API.
  /// Defaults to false.
  final pulumi.Input<bool>? sendSecondaryIpRangeIfEmpty;
  /// The stack type for this subnet to identify whether the IPv6 feature is enabled or not.
  /// If not specified IPV4_ONLY will be used.
  /// Possible values are: `IPV4_ONLY`, `IPV4_IPV6`, `IPV6_ONLY`.
  final pulumi.Input<String>? stackType;
  /// 'The state of the subnetwork, which can be one of the following values:
  /// READY: Subnetwork is created and ready to use DRAINING: only applicable to subnetworks that have the purpose
  /// set to INTERNAL_HTTPS_LOAD_BALANCER and indicates that connections to the load balancer are being drained.
  /// A subnetwork that is draining cannot be used or modified until it reaches a status of READY'
  final pulumi.Input<String>? state;
  /// The unique identifier number for the resource. This identifier is defined by the server.
  final pulumi.Input<int>? subnetworkId;

  /// Creates a new [SubnetworkState].
  /// [allowSubnetCidrRoutesOverlap] Typically packets destined to IPs within the subnetwork range that do not match
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when
  /// [externalIpv6Prefix] The range of external IPv6 addresses that are owned by this subnetwork.
  /// [fingerprint] Fingerprint of this resource. This field is used internally during updates of this resource.
  /// [gatewayAddress] The gateway address for default routes to reach destination addresses
  /// [internalIpv6Prefix] The internal IPv6 address range that is assigned to this subnetwork.
  /// [ipCidrRange] The range of internal addresses that are owned by this subnetwork.
  /// [ipCollection] Resource reference of a PublicDelegatedPrefix. The PDP must be a sub-PDP
  /// [ipv6AccessType] The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation
  /// [ipv6CidrRange] The range of internal IPv6 addresses that are owned by this subnetwork.
  /// [ipv6GceEndpoint] Possible endpoints of this subnetwork. It can be one of the following:
  /// [logConfig] This field denotes the VPC flow logging options for this subnetwork. If
  /// [name] The name of the resource, provided by the client when initially
  /// [network] The network this subnet belongs to.
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [privateIpGoogleAccess] When enabled, VMs in this subnetwork without external IP addresses can
  /// [privateIpv6GoogleAccess] The private IPv6 google access type for the VMs in this subnet.
  /// [project] The ID of the project in which the resource belongs.
  /// [purpose] The purpose of the resource. This field can be either `PRIVATE`, `REGIONAL_MANAGED_PROXY`, `GLOBAL_MANAGED_PROXY`, `PRIVATE_SERVICE_CONNECT`, `PEER_MIGRATION` or `PRIVATE_NAT`.
  /// [region] The GCP region for this subnetwork.
  /// [reservedInternalRange] The ID of the reserved internal range. Must be prefixed with `networkconnectivity.googleapis.com`
  /// [resolveSubnetMask] 'Configures subnet mask resolution for this subnetwork.'
  /// [role] The role of subnetwork.
  /// [secondaryIpRanges] An array of configurations for secondary IP ranges for VM instances
  /// [selfLink] The URI of the created resource.
  /// [sendSecondaryIpRangeIfEmpty] Controls the removal behavior of secondary_ip_range.
  /// [stackType] The stack type for this subnet to identify whether the IPv6 feature is enabled or not.
  /// [state] 'The state of the subnetwork, which can be one of the following values:
  /// [subnetworkId] The unique identifier number for the resource. This identifier is defined by the server.
  SubnetworkState({
    this.allowSubnetCidrRoutesOverlap,
    this.creationTimestamp,
    this.description,
    this.externalIpv6Prefix,
    this.fingerprint,
    this.gatewayAddress,
    this.internalIpv6Prefix,
    this.ipCidrRange,
    this.ipCollection,
    this.ipv6AccessType,
    this.ipv6CidrRange,
    this.ipv6GceEndpoint,
    this.logConfig,
    this.name,
    this.network,
    this.params,
    this.privateIpGoogleAccess,
    this.privateIpv6GoogleAccess,
    this.project,
    this.purpose,
    this.region,
    this.reservedInternalRange,
    this.resolveSubnetMask,
    this.role,
    this.secondaryIpRanges,
    this.selfLink,
    this.sendSecondaryIpRangeIfEmpty,
    this.stackType,
    this.state,
    this.subnetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSubnetCidrRoutesOverlap': ?allowSubnetCidrRoutesOverlap,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'externalIpv6Prefix': ?externalIpv6Prefix,
      'fingerprint': ?fingerprint,
      'gatewayAddress': ?gatewayAddress,
      'internalIpv6Prefix': ?internalIpv6Prefix,
      'ipCidrRange': ?ipCidrRange,
      'ipCollection': ?ipCollection,
      'ipv6AccessType': ?ipv6AccessType,
      'ipv6CidrRange': ?ipv6CidrRange,
      'ipv6GceEndpoint': ?ipv6GceEndpoint,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<SubnetworkLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'network': ?network,
      'params': ?pulumi.Input.mapOptionalInputValue<SubnetworkParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'privateIpGoogleAccess': ?privateIpGoogleAccess,
      'privateIpv6GoogleAccess': ?privateIpv6GoogleAccess,
      'project': ?project,
      'purpose': ?purpose,
      'region': ?region,
      'reservedInternalRange': ?reservedInternalRange,
      'resolveSubnetMask': ?resolveSubnetMask,
      'role': ?role,
      'secondaryIpRanges': ?pulumi.Input.mapOptionalInputValue<List<SubnetworkSecondaryIpRange>, List<Map<String, dynamic>>>(secondaryIpRanges, (value) => pulumi.Input.encodeList<SubnetworkSecondaryIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfLink': ?selfLink,
      'sendSecondaryIpRangeIfEmpty': ?sendSecondaryIpRangeIfEmpty,
      'stackType': ?stackType,
      'state': ?state,
      'subnetworkId': ?subnetworkId,
    };
  }

  factory SubnetworkState.fromMap(Map<String, dynamic> map) {
    return SubnetworkState(
      allowSubnetCidrRoutesOverlap: map['allowSubnetCidrRoutesOverlap'] == null ? null : (map['allowSubnetCidrRoutesOverlap']! as bool).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      externalIpv6Prefix: map['externalIpv6Prefix'] == null ? null : (map['externalIpv6Prefix']! as String).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint']! as String).input(),
      gatewayAddress: map['gatewayAddress'] == null ? null : (map['gatewayAddress']! as String).input(),
      internalIpv6Prefix: map['internalIpv6Prefix'] == null ? null : (map['internalIpv6Prefix']! as String).input(),
      ipCidrRange: map['ipCidrRange'] == null ? null : (map['ipCidrRange']! as String).input(),
      ipCollection: map['ipCollection'] == null ? null : (map['ipCollection']! as String).input(),
      ipv6AccessType: map['ipv6AccessType'] == null ? null : (map['ipv6AccessType']! as String).input(),
      ipv6CidrRange: map['ipv6CidrRange'] == null ? null : (map['ipv6CidrRange']! as String).input(),
      ipv6GceEndpoint: map['ipv6GceEndpoint'] == null ? null : (map['ipv6GceEndpoint']! as String).input(),
      logConfig: map['logConfig'] == null ? null : (SubnetworkLogConfig.fromMap((map['logConfig']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      params: map['params'] == null ? null : (SubnetworkParams.fromMap((map['params']! as Map).cast<String, dynamic>())).input(),
      privateIpGoogleAccess: map['privateIpGoogleAccess'] == null ? null : (map['privateIpGoogleAccess']! as bool).input(),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null ? null : (map['privateIpv6GoogleAccess']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      purpose: map['purpose'] == null ? null : (map['purpose']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      reservedInternalRange: map['reservedInternalRange'] == null ? null : (map['reservedInternalRange']! as String).input(),
      resolveSubnetMask: map['resolveSubnetMask'] == null ? null : (map['resolveSubnetMask']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
      secondaryIpRanges: map['secondaryIpRanges'] == null ? null : (pulumi.Input.decodeList<SubnetworkSecondaryIpRange>(map['secondaryIpRanges']!, (value) => SubnetworkSecondaryIpRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      sendSecondaryIpRangeIfEmpty: map['sendSecondaryIpRangeIfEmpty'] == null ? null : (map['sendSecondaryIpRangeIfEmpty']! as bool).input(),
      stackType: map['stackType'] == null ? null : (map['stackType']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      subnetworkId: map['subnetworkId'] == null ? null : (map['subnetworkId']! as int).input(),
    );
  }
}

