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
  final pulumi.Input<String?>? autoNetworkTier;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A list of URLs of the IP resources to be drained. These IPs must be
  /// valid static external IPs that have been assigned to the NAT.
  final pulumi.Input<List<String>?>? drainNatIps;
  /// Enable Dynamic Port Allocation.
  /// If minPortsPerVm is set, minPortsPerVm must be set to a power of two greater than or equal to 32.
  /// If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
  /// If maxPortsPerVm is set, maxPortsPerVm must be set to a power of two greater than minPortsPerVm.
  /// If maxPortsPerVm is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
  /// Mutually exclusive with enableEndpointIndependentMapping.
  final pulumi.Input<bool?>? enableDynamicPortAllocation;
  /// Enable endpoint independent mapping.
  /// For more information see the [official documentation](https://docs.cloud.google.com/nat/docs/public-nat#specs-rfcs).
  final pulumi.Input<bool?>? enableEndpointIndependentMapping;
  /// Specifies the endpoint Types supported by the NAT Gateway.
  /// Supported values include:
  /// `ENDPOINT_TYPE_VM`, `ENDPOINT_TYPE_SWG`,
  /// `ENDPOINT_TYPE_MANAGED_PROXY_LB`.
  final pulumi.Input<List<String>?>? endpointTypes;
  /// Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  final pulumi.Input<int?>? icmpIdleTimeoutSec;
  /// Self-links of NAT IPs to be used as initial value for creation alongside a RouterNatAddress resource.
  /// Conflicts with natIps and drainNatIps. Only valid if natIpAllocateOption is set to MANUAL_ONLY.
  final pulumi.Input<List<String>?>? initialNatIps;
  /// Configuration for logging on NAT
  /// Structure is documented below.
  final pulumi.Input<RouterNatLogConfig?>? logConfig;
  /// Maximum number of ports allocated to a VM from this NAT.
  /// This field can only be set when enableDynamicPortAllocation is enabled.
  final pulumi.Input<int?>? maxPortsPerVm;
  /// Minimum number of ports allocated to a VM from this NAT. Defaults to 64 for static port allocation and 32 dynamic port allocation if not set.
  final pulumi.Input<int?>? minPortsPerVm;
  /// Name of the NAT service. The name must be 1-63 characters long and
  /// comply with RFC1035.
  final pulumi.Input<String?>? name;
  /// One or more subnetwork NAT configurations whose traffic should be translated by NAT64 Gateway.
  /// Only used if `sourceSubnetworkIpRangesToNat64` is set to `LIST_OF_IPV6_SUBNETWORKS`
  /// Structure is documented below.
  final pulumi.Input<List<RouterNatNat64Subnetwork>?>? nat64Subnetworks;
  /// How external IPs should be allocated for this NAT. Valid values are
  /// `AUTO_ONLY` for only allowing NAT IPs allocated by Google Cloud
  /// Platform, or `MANUAL_ONLY` for only user-allocated NAT IP addresses.
  /// Possible values are: `MANUAL_ONLY`, `AUTO_ONLY`.
  final pulumi.Input<String?>? natIpAllocateOption;
  /// Self-links of NAT IPs. Only valid if natIpAllocateOption
  /// is set to MANUAL_ONLY.
  /// If this field is used alongside with a count created list of address resources `google_compute_address.foobar.*.self_link`,
  /// the access level resource for the address resource must have a `lifecycle` block with `createBeforeDestroy = true` so
  /// the number of resources can be increased/decreased without triggering the `resourceInUseByAnotherResource` error.
  final pulumi.Input<List<String>?>? natIps;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Region where the router and NAT reside.
  final pulumi.Input<String?>? region;
  /// The name of the Cloud Router in which this NAT will be configured.
  final pulumi.Input<String?>? router;
  /// A list of rules associated with this NAT.
  /// Structure is documented below.
  final pulumi.Input<List<RouterNatRule>?>? rules;
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
  final pulumi.Input<String?>? sourceSubnetworkIpRangesToNat;
  /// Specify the Nat option for NAT64, which can take one of the following values:
  /// ALL_IPV6_SUBNETWORKS: All of the IP ranges in every Subnetwork are allowed to Nat.
  /// LIST_OF_IPV6_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field nat64Subnetwork below).
  /// Note that if this field contains NAT64_ALL_V6_SUBNETWORKS no other Router.Nat section in this region can also enable NAT64 for any Subnetworks in this network.
  /// Other Router.Nat sections can still be present to enable NAT44 only.
  /// Possible values are: `ALL_IPV6_SUBNETWORKS`, `LIST_OF_IPV6_SUBNETWORKS`.
  final pulumi.Input<String?>? sourceSubnetworkIpRangesToNat64;
  /// One or more subnetwork NAT configurations. Only used if
  /// `sourceSubnetworkIpRangesToNat` is set to `LIST_OF_SUBNETWORKS`
  /// Structure is documented below.
  final pulumi.Input<List<RouterNatSubnetwork>?>? subnetworks;
  /// Timeout (in seconds) for TCP established connections.
  /// Defaults to 1200s if not set.
  final pulumi.Input<int?>? tcpEstablishedIdleTimeoutSec;
  /// Timeout (in seconds) for TCP connections that are in TIME_WAIT state.
  /// Defaults to 120s if not set.
  final pulumi.Input<int?>? tcpTimeWaitTimeoutSec;
  /// Timeout (in seconds) for TCP transitory connections.
  /// Defaults to 30s if not set.
  final pulumi.Input<int?>? tcpTransitoryIdleTimeoutSec;
  /// Indicates whether this NAT is used for public or private IP translation.
  /// If unspecified, it defaults to PUBLIC.
  /// If `PUBLIC` NAT used for public IP translation.
  /// If `PRIVATE` NAT used for private IP translation.
  /// Default value is `PUBLIC`.
  /// Possible values are: `PUBLIC`, `PRIVATE`.
  final pulumi.Input<String?>? type;
  /// Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  final pulumi.Input<int?>? udpIdleTimeoutSec;

  /// Creates a new [RouterNatState].
  /// [autoNetworkTier] The network tier to use when automatically reserving NAT IP addresses.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const RouterNatState({
    this.autoNetworkTier,
    this.deletionPolicy,
    this.drainNatIps,
    this.enableDynamicPortAllocation,
    this.enableEndpointIndependentMapping,
    this.endpointTypes,
    this.icmpIdleTimeoutSec,
    this.initialNatIps,
    this.logConfig,
    this.maxPortsPerVm,
    this.minPortsPerVm,
    this.name,
    this.nat64Subnetworks,
    this.natIpAllocateOption,
    this.natIps,
    this.project,
    this.region,
    this.router,
    this.rules,
    this.sourceSubnetworkIpRangesToNat,
    this.sourceSubnetworkIpRangesToNat64,
    this.subnetworks,
    this.tcpEstablishedIdleTimeoutSec,
    this.tcpTimeWaitTimeoutSec,
    this.tcpTransitoryIdleTimeoutSec,
    this.type,
    this.udpIdleTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoNetworkTier': ?autoNetworkTier,
      'deletionPolicy': ?deletionPolicy,
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
      autoNetworkTier: (() { final guardedValue = map['autoNetworkTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      drainNatIps: (() { final guardedValue = map['drainNatIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enableDynamicPortAllocation: (() { final guardedValue = map['enableDynamicPortAllocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableEndpointIndependentMapping: (() { final guardedValue = map['enableEndpointIndependentMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpointTypes: (() { final guardedValue = map['endpointTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      icmpIdleTimeoutSec: (() { final guardedValue = map['icmpIdleTimeoutSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      initialNatIps: (() { final guardedValue = map['initialNatIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouterNatLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxPortsPerVm: (() { final guardedValue = map['maxPortsPerVm']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      minPortsPerVm: (() { final guardedValue = map['minPortsPerVm']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nat64Subnetworks: (() { final guardedValue = map['nat64Subnetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterNatNat64Subnetwork>(guardedValue, (value) => RouterNatNat64Subnetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
      natIpAllocateOption: (() { final guardedValue = map['natIpAllocateOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natIps: (() { final guardedValue = map['natIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      router: (() { final guardedValue = map['router']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterNatRule>(guardedValue, (value) => RouterNatRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceSubnetworkIpRangesToNat: (() { final guardedValue = map['sourceSubnetworkIpRangesToNat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceSubnetworkIpRangesToNat64: (() { final guardedValue = map['sourceSubnetworkIpRangesToNat64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetworks: (() { final guardedValue = map['subnetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterNatSubnetwork>(guardedValue, (value) => RouterNatSubnetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tcpEstablishedIdleTimeoutSec: (() { final guardedValue = map['tcpEstablishedIdleTimeoutSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tcpTimeWaitTimeoutSec: (() { final guardedValue = map['tcpTimeWaitTimeoutSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tcpTransitoryIdleTimeoutSec: (() { final guardedValue = map['tcpTransitoryIdleTimeoutSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      udpIdleTimeoutSec: (() { final guardedValue = map['udpIdleTimeoutSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
