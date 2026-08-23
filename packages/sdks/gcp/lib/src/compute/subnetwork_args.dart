// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnetwork_log_config.dart';
import 'subnetwork_params.dart';
import 'subnetwork_secondary_ip_range.dart';

/// {@template pulumi_compute_subnetwork_subnetwork_args_doc}
/// The set of arguments for Subnetwork.
/// {@endtemplate}
/// {@macro pulumi_compute_subnetwork_subnetwork_args_doc}
class SubnetworkArgs {
  /// Typically packets destined to IPs within the subnetwork range that do not match
  /// existing resources are dropped and prevented from leaving the VPC.
  /// Setting this field to true will allow these packets to match dynamic routes injected
  /// via BGP even if their destinations match existing subnet ranges.
  final pulumi.Input<bool>? allowSubnetCidrRoutesOverlap;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of this resource. Provide this property when
  /// you create the resource. This field can be set only at resource
  /// creation time.
  final pulumi.Input<String>? description;
  /// The range of external IPv6 addresses that are owned by this subnetwork.
  final pulumi.Input<String>? externalIpv6Prefix;
  /// The internal IPv6 address range that is assigned to this subnetwork.
  final pulumi.Input<String>? internalIpv6Prefix;
  /// The range of internal addresses that are owned by this subnetwork.
  /// Provide this property when you create the subnetwork. For example,
  /// 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and
  /// non-overlapping within a network. Only IPv4 is supported.
  /// Field is optional when `reservedInternalRange` is defined, otherwise required.
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
  /// or the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6Type is EXTERNAL then this subnet
  /// cannot enable direct path.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  final pulumi.Input<String>? ipv6AccessType;
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
  final pulumi.Input<String> network;
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
  /// The purpose of the resource. This field can be either `PRIVATE`, `REGIONAL_MANAGED_PROXY`, `GLOBAL_MANAGED_PROXY`, `PRIVATE_SERVICE_CONNECT`, `PEER_MIGRATION` or `PRIVATE_NAT`(Beta).
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
  /// Possible values are: `ARP_ALL_RANGES`, `ARP_PRIMARY_RANGE`, `ARP_BROADCAST_PRIMARY_RANGE`, `ARP_BROADCAST_PRIMARY_RANGE_WITH_LEARNING`.
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
  /// Controls the removal behavior of secondary_ip_range.
  /// When false, removing secondaryIpRange from config will not produce a diff as
  /// the provider will default to the API's value.
  /// When true, the provider will treat removing secondaryIpRange as sending an
  /// empty list of secondary IP ranges to the API.
  /// Defaults to false.
  final pulumi.Input<bool>? sendSecondaryIpRangeIfEmpty;
  /// The stack type for this subnet to identify whether the IPv6 feature is enabled or not.
  /// If not specified IPV4_ONLY will be used.
  /// Possible values are: `IPV4_ONLY`, `IPV4_IPV6`, `IPV6_ONLY`.
  final pulumi.Input<String>? stackType;

  /// Creates a new [SubnetworkArgs].
  /// [allowSubnetCidrRoutesOverlap] Typically packets destined to IPs within the subnetwork range that do not match
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource. Provide this property when
  /// [externalIpv6Prefix] The range of external IPv6 addresses that are owned by this subnetwork.
  /// [internalIpv6Prefix] The internal IPv6 address range that is assigned to this subnetwork.
  /// [ipCidrRange] The range of internal addresses that are owned by this subnetwork.
  /// [ipCollection] Resource reference of a PublicDelegatedPrefix. The PDP must be a sub-PDP
  /// [ipv6AccessType] The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation
  /// [logConfig] This field denotes the VPC flow logging options for this subnetwork. If
  /// [name] The name of the resource, provided by the client when initially
  /// [network] The network this subnet belongs to.
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [privateIpGoogleAccess] When enabled, VMs in this subnetwork without external IP addresses can
  /// [privateIpv6GoogleAccess] The private IPv6 google access type for the VMs in this subnet.
  /// [project] The ID of the project in which the resource belongs.
  /// [purpose] The purpose of the resource. This field can be either `PRIVATE`, `REGIONAL_MANAGED_PROXY`, `GLOBAL_MANAGED_PROXY`, `PRIVATE_SERVICE_CONNECT`, `PEER_MIGRATION` or `PRIVATE_NAT`(Beta).
  /// [region] The GCP region for this subnetwork.
  /// [reservedInternalRange] The ID of the reserved internal range. Must be prefixed with `networkconnectivity.googleapis.com`
  /// [resolveSubnetMask] 'Configures subnet mask resolution for this subnetwork.'
  /// [role] The role of subnetwork.
  /// [secondaryIpRanges] An array of configurations for secondary IP ranges for VM instances
  /// [sendSecondaryIpRangeIfEmpty] Controls the removal behavior of secondary_ip_range.
  /// [stackType] The stack type for this subnet to identify whether the IPv6 feature is enabled or not.
  const SubnetworkArgs({
    this.allowSubnetCidrRoutesOverlap,
    this.deletionPolicy,
    this.description,
    this.externalIpv6Prefix,
    this.internalIpv6Prefix,
    this.ipCidrRange,
    this.ipCollection,
    this.ipv6AccessType,
    this.logConfig,
    this.name,
    required this.network,
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
    this.sendSecondaryIpRangeIfEmpty,
    this.stackType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSubnetCidrRoutesOverlap': ?allowSubnetCidrRoutesOverlap,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'externalIpv6Prefix': ?externalIpv6Prefix,
      'internalIpv6Prefix': ?internalIpv6Prefix,
      'ipCidrRange': ?ipCidrRange,
      'ipCollection': ?ipCollection,
      'ipv6AccessType': ?ipv6AccessType,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<SubnetworkLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'network': network,
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
      'sendSecondaryIpRangeIfEmpty': ?sendSecondaryIpRangeIfEmpty,
      'stackType': ?stackType,
    };
  }

  factory SubnetworkArgs.fromMap(Map<String, dynamic> map) {
    return SubnetworkArgs(
      allowSubnetCidrRoutesOverlap: (() { final guardedValue = map['allowSubnetCidrRoutesOverlap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalIpv6Prefix: (() { final guardedValue = map['externalIpv6Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalIpv6Prefix: (() { final guardedValue = map['internalIpv6Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipCidrRange: (() { final guardedValue = map['ipCidrRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipCollection: (() { final guardedValue = map['ipCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6AccessType: (() { final guardedValue = map['ipv6AccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetworkLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetworkParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateIpGoogleAccess: (() { final guardedValue = map['privateIpGoogleAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateIpv6GoogleAccess: (() { final guardedValue = map['privateIpv6GoogleAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purpose: (() { final guardedValue = map['purpose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedInternalRange: (() { final guardedValue = map['reservedInternalRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolveSubnetMask: (() { final guardedValue = map['resolveSubnetMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryIpRanges: (() { final guardedValue = map['secondaryIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubnetworkSecondaryIpRange>(guardedValue, (value) => SubnetworkSecondaryIpRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sendSecondaryIpRangeIfEmpty: (() { final guardedValue = map['sendSecondaryIpRangeIfEmpty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stackType: (() { final guardedValue = map['stackType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
