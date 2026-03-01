// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_nat_log_config.dart';
import 'router_nat_nat64_subnetwork.dart';
import 'router_nat_rule.dart';
import 'router_nat_subnetwork.dart';

/// Input properties used for looking up and filtering RouterNat resources.
class RouterNatState {
  /// The network tier to use when automatically reserving NAT IP addresses.
  /// Must be one of: PREMIUM, STANDARD. If not specified, then the current
  /// project-level default tier is used.
  /// Possible values are: `PREMIUM`, `STANDARD`.
  final pulumi.Input<String>? autoNetworkTier;
  /// A list of URLs of the IP resources to be drained. These IPs must be
  /// valid static external IPs that have been assigned to the NAT.
  final pulumi.Input<List<String>>? drainNatIps;
  /// Enable Dynamic Port Allocation.
  /// If minPortsPerVm is set, minPortsPerVm must be set to a power of two greater than or equal to 32.
  /// If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
  /// If maxPortsPerVm is set, maxPortsPerVm must be set to a power of two greater than minPortsPerVm.
  /// If maxPortsPerVm is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
  /// Mutually exclusive with enableEndpointIndependentMapping.
  final pulumi.Input<bool>? enableDynamicPortAllocation;
  /// Enable endpoint independent mapping.
  /// For more information see the [official documentation](https://docs.cloud.google.com/nat/docs/public-nat#specs-rfcs).
  final pulumi.Input<bool>? enableEndpointIndependentMapping;
  /// Specifies the endpoint Types supported by the NAT Gateway.
  /// Supported values include:
  /// `ENDPOINT_TYPE_VM`, `ENDPOINT_TYPE_SWG`,
  /// `ENDPOINT_TYPE_MANAGED_PROXY_LB`.
  final pulumi.Input<List<String>>? endpointTypes;
  /// Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  final pulumi.Input<int>? icmpIdleTimeoutSec;
  /// Self-links of NAT IPs to be used as initial value for creation alongside a RouterNatAddress resource.
  /// Conflicts with natIps and drainNatIps. Only valid if natIpAllocateOption is set to MANUAL_ONLY.
  final pulumi.Input<List<String>>? initialNatIps;
  /// Configuration for logging on NAT
  /// Structure is documented below.
  final pulumi.Input<RouterNatLogConfig>? logConfig;
  /// Maximum number of ports allocated to a VM from this NAT.
  /// This field can only be set when enableDynamicPortAllocation is enabled.
  final pulumi.Input<int>? maxPortsPerVm;
  /// Minimum number of ports allocated to a VM from this NAT. Defaults to 64 for static port allocation and 32 dynamic port allocation if not set.
  final pulumi.Input<int>? minPortsPerVm;
  /// Name of the NAT service. The name must be 1-63 characters long and
  /// comply with RFC1035.
  final pulumi.Input<String>? name;
  /// One or more subnetwork NAT configurations whose traffic should be translated by NAT64 Gateway.
  /// Only used if `source_subnetwork_ip_ranges_to_nat64` is set to `LIST_OF_IPV6_SUBNETWORKS`
  /// Structure is documented below.
  final pulumi.Input<List<RouterNatNat64Subnetwork>>? nat64Subnetworks;
  /// How external IPs should be allocated for this NAT. Valid values are
  /// `AUTO_ONLY` for only allowing NAT IPs allocated by Google Cloud
  /// Platform, or `MANUAL_ONLY` for only user-allocated NAT IP addresses.
  /// Possible values are: `MANUAL_ONLY`, `AUTO_ONLY`.
  final pulumi.Input<String>? natIpAllocateOption;
  /// Self-links of NAT IPs. Only valid if natIpAllocateOption
  /// is set to MANUAL_ONLY.
  /// If this field is used alongside with a count created list of address resources `google_compute_address.foobar.*.self_link`,
  /// the access level resource for the address resource must have a `lifecycle` block with `create_before_destroy = true` so
  /// the number of resources can be increased/decreased without triggering the `resourceInUseByAnotherResource` error.
  final pulumi.Input<List<String>>? natIps;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Region where the router and NAT reside.
  final pulumi.Input<String>? region;
  /// The name of the Cloud Router in which this NAT will be configured.
  final pulumi.Input<String>? router;
  /// A list of rules associated with this NAT.
  /// Structure is documented below.
  final pulumi.Input<List<RouterNatRule>>? rules;
  /// How NAT should be configured per Subnetwork.
  /// If `ALL_SUBNETWORKS_ALL_IP_RANGES`, all of the
  /// IP ranges in every Subnetwork are allowed to Nat.
  /// If `ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES`, all of the primary IP
  /// ranges in every Subnetwork are allowed to Nat.
  /// `LIST_OF_SUBNETWORKS`: A list of Subnetworks are allowed to Nat
  /// (specified in the field subnetwork below). Note that if this field
  /// contains ALL_SUBNETWORKS_ALL_IP_RANGES or
  /// ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be any
  /// other RouterNat section in any Router for this network in this region.
  /// Possible values are: `ALL_SUBNETWORKS_ALL_IP_RANGES`, `ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES`, `LIST_OF_SUBNETWORKS`.
  final pulumi.Input<String>? sourceSubnetworkIpRangesToNat;
  /// Specify the Nat option for NAT64, which can take one of the following values:
  /// ALL_IPV6_SUBNETWORKS: All of the IP ranges in every Subnetwork are allowed to Nat.
  /// LIST_OF_IPV6_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field nat64Subnetwork below).
  /// Note that if this field contains NAT64_ALL_V6_SUBNETWORKS no other Router.Nat section in this region can also enable NAT64 for any Subnetworks in this network.
  /// Other Router.Nat sections can still be present to enable NAT44 only.
  /// Possible values are: `ALL_IPV6_SUBNETWORKS`, `LIST_OF_IPV6_SUBNETWORKS`.
  final pulumi.Input<String>? sourceSubnetworkIpRangesToNat64;
  /// One or more subnetwork NAT configurations. Only used if
  /// `source_subnetwork_ip_ranges_to_nat` is set to `LIST_OF_SUBNETWORKS`
  /// Structure is documented below.
  final pulumi.Input<List<RouterNatSubnetwork>>? subnetworks;
  /// Timeout (in seconds) for TCP established connections.
  /// Defaults to 1200s if not set.
  final pulumi.Input<int>? tcpEstablishedIdleTimeoutSec;
  /// Timeout (in seconds) for TCP connections that are in TIME_WAIT state.
  /// Defaults to 120s if not set.
  final pulumi.Input<int>? tcpTimeWaitTimeoutSec;
  /// Timeout (in seconds) for TCP transitory connections.
  /// Defaults to 30s if not set.
  final pulumi.Input<int>? tcpTransitoryIdleTimeoutSec;
  /// Indicates whether this NAT is used for public or private IP translation.
  /// If unspecified, it defaults to PUBLIC.
  /// If `PUBLIC` NAT used for public IP translation.
  /// If `PRIVATE` NAT used for private IP translation.
  /// Default value is `PUBLIC`.
  /// Possible values are: `PUBLIC`, `PRIVATE`.
  final pulumi.Input<String>? type;
  /// Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  final pulumi.Input<int>? udpIdleTimeoutSec;

  /// Creates a new [RouterNatState].
  /// [autoNetworkTier] The network tier to use when automatically reserving NAT IP addresses.
  /// [drainNatIps] A list of URLs of the IP resources to be drained. These IPs must be
  /// [enableDynamicPortAllocation] Enable Dynamic Port Allocation.
  /// [enableEndpointIndependentMapping] Enable endpoint independent mapping.
  /// [endpointTypes] Specifies the endpoint Types supported by the NAT Gateway.
  /// [icmpIdleTimeoutSec] Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  /// [initialNatIps] Self-links of NAT IPs to be used as initial value for creation alongside a RouterNatAddress resource.
  /// [logConfig] Configuration for logging on NAT
  /// [maxPortsPerVm] Maximum number of ports allocated to a VM from this NAT.
  /// [minPortsPerVm] Minimum number of ports allocated to a VM from this NAT. Defaults to 64 for static port allocation and 32 dynamic port allocation if not set.
  /// [name] Name of the NAT service. The name must be 1-63 characters long and
  /// [nat64Subnetworks] One or more subnetwork NAT configurations whose traffic should be translated by NAT64 Gateway.
  /// [natIpAllocateOption] How external IPs should be allocated for this NAT. Valid values are
  /// [natIps] Self-links of NAT IPs. Only valid if natIpAllocateOption
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the router and NAT reside.
  /// [router] The name of the Cloud Router in which this NAT will be configured.
  /// [rules] A list of rules associated with this NAT.
  /// [sourceSubnetworkIpRangesToNat] How NAT should be configured per Subnetwork.
  /// [sourceSubnetworkIpRangesToNat64] Specify the Nat option for NAT64, which can take one of the following values:
  /// [subnetworks] One or more subnetwork NAT configurations. Only used if
  /// [tcpEstablishedIdleTimeoutSec] Timeout (in seconds) for TCP established connections.
  /// [tcpTimeWaitTimeoutSec] Timeout (in seconds) for TCP connections that are in TIME_WAIT state.
  /// [tcpTransitoryIdleTimeoutSec] Timeout (in seconds) for TCP transitory connections.
  /// [type] Indicates whether this NAT is used for public or private IP translation.
  /// [udpIdleTimeoutSec] Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  RouterNatState({
    pulumi.Output<String>? autoNetworkTier,
    pulumi.Output<List<String>>? drainNatIps,
    pulumi.Output<bool>? enableDynamicPortAllocation,
    pulumi.Output<bool>? enableEndpointIndependentMapping,
    pulumi.Output<List<String>>? endpointTypes,
    pulumi.Output<int>? icmpIdleTimeoutSec,
    pulumi.Output<List<String>>? initialNatIps,
    pulumi.Output<RouterNatLogConfig>? logConfig,
    pulumi.Output<int>? maxPortsPerVm,
    pulumi.Output<int>? minPortsPerVm,
    pulumi.Output<String>? name,
    pulumi.Output<List<RouterNatNat64Subnetwork>>? nat64Subnetworks,
    pulumi.Output<String>? natIpAllocateOption,
    pulumi.Output<List<String>>? natIps,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? router,
    pulumi.Output<List<RouterNatRule>>? rules,
    pulumi.Output<String>? sourceSubnetworkIpRangesToNat,
    pulumi.Output<String>? sourceSubnetworkIpRangesToNat64,
    pulumi.Output<List<RouterNatSubnetwork>>? subnetworks,
    pulumi.Output<int>? tcpEstablishedIdleTimeoutSec,
    pulumi.Output<int>? tcpTimeWaitTimeoutSec,
    pulumi.Output<int>? tcpTransitoryIdleTimeoutSec,
    pulumi.Output<String>? type,
    pulumi.Output<int>? udpIdleTimeoutSec,
  }) :
      autoNetworkTier = pulumi.Input.asOptionalInput<String>(autoNetworkTier),
      drainNatIps = pulumi.Input.asOptionalInput<List<String>>(drainNatIps),
      enableDynamicPortAllocation = pulumi.Input.asOptionalInput<bool>(enableDynamicPortAllocation),
      enableEndpointIndependentMapping = pulumi.Input.asOptionalInput<bool>(enableEndpointIndependentMapping),
      endpointTypes = pulumi.Input.asOptionalInput<List<String>>(endpointTypes),
      icmpIdleTimeoutSec = pulumi.Input.asOptionalInput<int>(icmpIdleTimeoutSec),
      initialNatIps = pulumi.Input.asOptionalInput<List<String>>(initialNatIps),
      logConfig = pulumi.Input.asOptionalInput<RouterNatLogConfig>(logConfig),
      maxPortsPerVm = pulumi.Input.asOptionalInput<int>(maxPortsPerVm),
      minPortsPerVm = pulumi.Input.asOptionalInput<int>(minPortsPerVm),
      name = pulumi.Input.asOptionalInput<String>(name),
      nat64Subnetworks = pulumi.Input.asOptionalInput<List<RouterNatNat64Subnetwork>>(nat64Subnetworks),
      natIpAllocateOption = pulumi.Input.asOptionalInput<String>(natIpAllocateOption),
      natIps = pulumi.Input.asOptionalInput<List<String>>(natIps),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      router = pulumi.Input.asOptionalInput<String>(router),
      rules = pulumi.Input.asOptionalInput<List<RouterNatRule>>(rules),
      sourceSubnetworkIpRangesToNat = pulumi.Input.asOptionalInput<String>(sourceSubnetworkIpRangesToNat),
      sourceSubnetworkIpRangesToNat64 = pulumi.Input.asOptionalInput<String>(sourceSubnetworkIpRangesToNat64),
      subnetworks = pulumi.Input.asOptionalInput<List<RouterNatSubnetwork>>(subnetworks),
      tcpEstablishedIdleTimeoutSec = pulumi.Input.asOptionalInput<int>(tcpEstablishedIdleTimeoutSec),
      tcpTimeWaitTimeoutSec = pulumi.Input.asOptionalInput<int>(tcpTimeWaitTimeoutSec),
      tcpTransitoryIdleTimeoutSec = pulumi.Input.asOptionalInput<int>(tcpTransitoryIdleTimeoutSec),
      type = pulumi.Input.asOptionalInput<String>(type),
      udpIdleTimeoutSec = pulumi.Input.asOptionalInput<int>(udpIdleTimeoutSec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoNetworkTier': ?autoNetworkTier,
      'drainNatIps': ?drainNatIps,
      'enableDynamicPortAllocation': ?enableDynamicPortAllocation,
      'enableEndpointIndependentMapping': ?enableEndpointIndependentMapping,
      'endpointTypes': ?endpointTypes,
      'icmpIdleTimeoutSec': ?icmpIdleTimeoutSec,
      'initialNatIps': ?initialNatIps,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<RouterNatLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'maxPortsPerVm': ?maxPortsPerVm,
      'minPortsPerVm': ?minPortsPerVm,
      'name': ?name,
      'nat64Subnetworks': ?pulumi.Input.mapOptionalInputValue<List<RouterNatNat64Subnetwork>, List<Map<String, dynamic>>>(nat64Subnetworks, (value) => pulumi.Input.encodeList<RouterNatNat64Subnetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'natIpAllocateOption': ?natIpAllocateOption,
      'natIps': ?natIps,
      'project': ?project,
      'region': ?region,
      'router': ?router,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RouterNatRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RouterNatRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceSubnetworkIpRangesToNat': ?sourceSubnetworkIpRangesToNat,
      'sourceSubnetworkIpRangesToNat64': ?sourceSubnetworkIpRangesToNat64,
      'subnetworks': ?pulumi.Input.mapOptionalInputValue<List<RouterNatSubnetwork>, List<Map<String, dynamic>>>(subnetworks, (value) => pulumi.Input.encodeList<RouterNatSubnetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tcpEstablishedIdleTimeoutSec': ?tcpEstablishedIdleTimeoutSec,
      'tcpTimeWaitTimeoutSec': ?tcpTimeWaitTimeoutSec,
      'tcpTransitoryIdleTimeoutSec': ?tcpTransitoryIdleTimeoutSec,
      'type': ?type,
      'udpIdleTimeoutSec': ?udpIdleTimeoutSec,
    };
  }

  factory RouterNatState.fromMap(Map<String, dynamic> map) {
    return RouterNatState(
      autoNetworkTier: map['autoNetworkTier'] == null ? null : pulumi.Output.create<String>(map['autoNetworkTier'] as String),
      drainNatIps: map['drainNatIps'] == null ? null : pulumi.Output.create<List<String>>((map['drainNatIps'] as List).cast<String>()),
      enableDynamicPortAllocation: map['enableDynamicPortAllocation'] == null ? null : pulumi.Output.create<bool>(map['enableDynamicPortAllocation'] as bool),
      enableEndpointIndependentMapping: map['enableEndpointIndependentMapping'] == null ? null : pulumi.Output.create<bool>(map['enableEndpointIndependentMapping'] as bool),
      endpointTypes: map['endpointTypes'] == null ? null : pulumi.Output.create<List<String>>((map['endpointTypes'] as List).cast<String>()),
      icmpIdleTimeoutSec: map['icmpIdleTimeoutSec'] == null ? null : pulumi.Output.create<int>(map['icmpIdleTimeoutSec'] as int),
      initialNatIps: map['initialNatIps'] == null ? null : pulumi.Output.create<List<String>>((map['initialNatIps'] as List).cast<String>()),
      logConfig: map['logConfig'] == null ? null : pulumi.Output.create<RouterNatLogConfig>(RouterNatLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())),
      maxPortsPerVm: map['maxPortsPerVm'] == null ? null : pulumi.Output.create<int>(map['maxPortsPerVm'] as int),
      minPortsPerVm: map['minPortsPerVm'] == null ? null : pulumi.Output.create<int>(map['minPortsPerVm'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nat64Subnetworks: map['nat64Subnetworks'] == null ? null : pulumi.Output.create<List<RouterNatNat64Subnetwork>>(pulumi.Input.decodeList<RouterNatNat64Subnetwork>(map['nat64Subnetworks'], (value) => RouterNatNat64Subnetwork.fromMap((value as Map).cast<String, dynamic>()))),
      natIpAllocateOption: map['natIpAllocateOption'] == null ? null : pulumi.Output.create<String>(map['natIpAllocateOption'] as String),
      natIps: map['natIps'] == null ? null : pulumi.Output.create<List<String>>((map['natIps'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      router: map['router'] == null ? null : pulumi.Output.create<String>(map['router'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<RouterNatRule>>(pulumi.Input.decodeList<RouterNatRule>(map['rules'], (value) => RouterNatRule.fromMap((value as Map).cast<String, dynamic>()))),
      sourceSubnetworkIpRangesToNat: map['sourceSubnetworkIpRangesToNat'] == null ? null : pulumi.Output.create<String>(map['sourceSubnetworkIpRangesToNat'] as String),
      sourceSubnetworkIpRangesToNat64: map['sourceSubnetworkIpRangesToNat64'] == null ? null : pulumi.Output.create<String>(map['sourceSubnetworkIpRangesToNat64'] as String),
      subnetworks: map['subnetworks'] == null ? null : pulumi.Output.create<List<RouterNatSubnetwork>>(pulumi.Input.decodeList<RouterNatSubnetwork>(map['subnetworks'], (value) => RouterNatSubnetwork.fromMap((value as Map).cast<String, dynamic>()))),
      tcpEstablishedIdleTimeoutSec: map['tcpEstablishedIdleTimeoutSec'] == null ? null : pulumi.Output.create<int>(map['tcpEstablishedIdleTimeoutSec'] as int),
      tcpTimeWaitTimeoutSec: map['tcpTimeWaitTimeoutSec'] == null ? null : pulumi.Output.create<int>(map['tcpTimeWaitTimeoutSec'] as int),
      tcpTransitoryIdleTimeoutSec: map['tcpTransitoryIdleTimeoutSec'] == null ? null : pulumi.Output.create<int>(map['tcpTransitoryIdleTimeoutSec'] as int),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      udpIdleTimeoutSec: map['udpIdleTimeoutSec'] == null ? null : pulumi.Output.create<int>(map['udpIdleTimeoutSec'] as int),
    );
  }
}

