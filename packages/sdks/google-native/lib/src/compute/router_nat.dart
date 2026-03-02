// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_nat_auto_network_tier.dart';
import 'router_nat_endpoint_types_item.dart';
import 'router_nat_log_config.dart';
import 'router_nat_nat_ip_allocate_option.dart';
import 'router_nat_rule.dart';
import 'router_nat_source_subnetwork_ip_ranges_to_nat.dart';
import 'router_nat_subnetwork_to_nat.dart';
import 'router_nat_type.dart';

/// Represents a Nat resource. It enables the VMs within the specified subnetworks to access Internet without external IP addresses. It specifies a list of subnetworks (and the ranges within) that want to use NAT. Customers can also provide the external IPs that would be used for NAT. GCP would auto-allocate ephemeral IPs if no external IPs are provided.
class RouterNat {
  /// The network tier to use when automatically reserving NAT IP addresses. Must be one of: PREMIUM, STANDARD. If not specified, then the current project-level default tier is used.
  final pulumi.Input<RouterNatAutoNetworkTier>? autoNetworkTier;
  /// A list of URLs of the IP resources to be drained. These IPs must be valid static external IPs that have been assigned to the NAT. These IPs should be used for updating/patching a NAT only.
  final pulumi.Input<List<String>>? drainNatIps;
  /// Enable Dynamic Port Allocation. If not specified, it is disabled by default. If set to true, - Dynamic Port Allocation will be enabled on this NAT config. - enableEndpointIndependentMapping cannot be set to true. - If minPorts is set, minPortsPerVm must be set to a power of two greater than or equal to 32. If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
  final pulumi.Input<bool>? enableDynamicPortAllocation;
  final pulumi.Input<bool>? enableEndpointIndependentMapping;
  /// List of NAT-ted endpoint types supported by the Nat Gateway. If the list is empty, then it will be equivalent to include ENDPOINT_TYPE_VM
  final pulumi.Input<List<RouterNatEndpointTypesItem>>? endpointTypes;
  /// Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  final pulumi.Input<int>? icmpIdleTimeoutSec;
  /// Configure logging on this NAT.
  final pulumi.Input<RouterNatLogConfig>? logConfig;
  /// Maximum number of ports allocated to a VM from this NAT config when Dynamic Port Allocation is enabled. If Dynamic Port Allocation is not enabled, this field has no effect. If Dynamic Port Allocation is enabled, and this field is set, it must be set to a power of two greater than minPortsPerVm, or 64 if minPortsPerVm is not set. If Dynamic Port Allocation is enabled and this field is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
  final pulumi.Input<int>? maxPortsPerVm;
  /// Minimum number of ports allocated to a VM from this NAT config. If not set, a default number of ports is allocated to a VM. This is rounded up to the nearest power of 2. For example, if the value of this field is 50, at least 64 ports are allocated to a VM.
  final pulumi.Input<int>? minPortsPerVm;
  /// Unique name of this Nat service. The name must be 1-63 characters long and comply with RFC1035.
  final pulumi.Input<String>? name;
  /// Specify the NatIpAllocateOption, which can take one of the following values: - MANUAL_ONLY: Uses only Nat IP addresses provided by customers. When there are not enough specified Nat IPs, the Nat service fails for new VMs. - AUTO_ONLY: Nat IPs are allocated by Google Cloud Platform; customers can't specify any Nat IPs. When choosing AUTO_ONLY, then nat_ip should be empty.
  final pulumi.Input<RouterNatNatIpAllocateOption>? natIpAllocateOption;
  /// A list of URLs of the IP resources used for this Nat service. These IP addresses must be valid static external IP addresses assigned to the project.
  final pulumi.Input<List<String>>? natIps;
  /// A list of rules associated with this NAT.
  final pulumi.Input<List<RouterNatRule>>? rules;
  /// Specify the Nat option, which can take one of the following values: - ALL_SUBNETWORKS_ALL_IP_RANGES: All of the IP ranges in every Subnetwork are allowed to Nat. - ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES: All of the primary IP ranges in every Subnetwork are allowed to Nat. - LIST_OF_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field subnetwork below) The default is SUBNETWORK_IP_RANGE_TO_NAT_OPTION_UNSPECIFIED. Note that if this field contains ALL_SUBNETWORKS_ALL_IP_RANGES then there should not be any other Router.Nat section in any Router for this network in this region.
  final pulumi.Input<RouterNatSourceSubnetworkIpRangesToNat>? sourceSubnetworkIpRangesToNat;
  /// A list of Subnetwork resources whose traffic should be translated by NAT Gateway. It is used only when LIST_OF_SUBNETWORKS is selected for the SubnetworkIpRangeToNatOption above.
  final pulumi.Input<List<RouterNatSubnetworkToNat>>? subnetworks;
  /// Timeout (in seconds) for TCP established connections. Defaults to 1200s if not set.
  final pulumi.Input<int>? tcpEstablishedIdleTimeoutSec;
  /// Timeout (in seconds) for TCP connections that are in TIME_WAIT state. Defaults to 120s if not set.
  final pulumi.Input<int>? tcpTimeWaitTimeoutSec;
  /// Timeout (in seconds) for TCP transitory connections. Defaults to 30s if not set.
  final pulumi.Input<int>? tcpTransitoryIdleTimeoutSec;
  /// Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
  final pulumi.Input<RouterNatType>? type;
  /// Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  final pulumi.Input<int>? udpIdleTimeoutSec;

  /// Creates a new [RouterNat].
  /// [autoNetworkTier] The network tier to use when automatically reserving NAT IP addresses. Must be one of: PREMIUM, STANDARD. If not specified, then the current project-level default tier is used.
  /// [drainNatIps] A list of URLs of the IP resources to be drained. These IPs must be valid static external IPs that have been assigned to the NAT. These IPs should be used for updating/patching a NAT only.
  /// [enableDynamicPortAllocation] Enable Dynamic Port Allocation. If not specified, it is disabled by default. If set to true, - Dynamic Port Allocation will be enabled on this NAT config. - enableEndpointIndependentMapping cannot be set to true. - If minPorts is set, minPortsPerVm must be set to a power of two greater than or equal to 32. If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
  /// [enableEndpointIndependentMapping] Optional.
  /// [endpointTypes] List of NAT-ted endpoint types supported by the Nat Gateway. If the list is empty, then it will be equivalent to include ENDPOINT_TYPE_VM
  /// [icmpIdleTimeoutSec] Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  /// [logConfig] Configure logging on this NAT.
  /// [maxPortsPerVm] Maximum number of ports allocated to a VM from this NAT config when Dynamic Port Allocation is enabled. If Dynamic Port Allocation is not enabled, this field has no effect. If Dynamic Port Allocation is enabled, and this field is set, it must be set to a power of two greater than minPortsPerVm, or 64 if minPortsPerVm is not set. If Dynamic Port Allocation is enabled and this field is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
  /// [minPortsPerVm] Minimum number of ports allocated to a VM from this NAT config. If not set, a default number of ports is allocated to a VM. This is rounded up to the nearest power of 2. For example, if the value of this field is 50, at least 64 ports are allocated to a VM.
  /// [name] Unique name of this Nat service. The name must be 1-63 characters long and comply with RFC1035.
  /// [natIpAllocateOption] Specify the NatIpAllocateOption, which can take one of the following values: - MANUAL_ONLY: Uses only Nat IP addresses provided by customers. When there are not enough specified Nat IPs, the Nat service fails for new VMs. - AUTO_ONLY: Nat IPs are allocated by Google Cloud Platform; customers can't specify any Nat IPs. When choosing AUTO_ONLY, then nat_ip should be empty.
  /// [natIps] A list of URLs of the IP resources used for this Nat service. These IP addresses must be valid static external IP addresses assigned to the project.
  /// [rules] A list of rules associated with this NAT.
  /// [sourceSubnetworkIpRangesToNat] Specify the Nat option, which can take one of the following values: - ALL_SUBNETWORKS_ALL_IP_RANGES: All of the IP ranges in every Subnetwork are allowed to Nat. - ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES: All of the primary IP ranges in every Subnetwork are allowed to Nat. - LIST_OF_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field subnetwork below) The default is SUBNETWORK_IP_RANGE_TO_NAT_OPTION_UNSPECIFIED. Note that if this field contains ALL_SUBNETWORKS_ALL_IP_RANGES then there should not be any other Router.Nat section in any Router for this network in this region.
  /// [subnetworks] A list of Subnetwork resources whose traffic should be translated by NAT Gateway. It is used only when LIST_OF_SUBNETWORKS is selected for the SubnetworkIpRangeToNatOption above.
  /// [tcpEstablishedIdleTimeoutSec] Timeout (in seconds) for TCP established connections. Defaults to 1200s if not set.
  /// [tcpTimeWaitTimeoutSec] Timeout (in seconds) for TCP connections that are in TIME_WAIT state. Defaults to 120s if not set.
  /// [tcpTransitoryIdleTimeoutSec] Timeout (in seconds) for TCP transitory connections. Defaults to 30s if not set.
  /// [type] Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
  /// [udpIdleTimeoutSec] Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  RouterNat({
    this.autoNetworkTier,
    this.drainNatIps,
    this.enableDynamicPortAllocation,
    this.enableEndpointIndependentMapping,
    this.endpointTypes,
    this.icmpIdleTimeoutSec,
    this.logConfig,
    this.maxPortsPerVm,
    this.minPortsPerVm,
    this.name,
    this.natIpAllocateOption,
    this.natIps,
    this.rules,
    this.sourceSubnetworkIpRangesToNat,
    this.subnetworks,
    this.tcpEstablishedIdleTimeoutSec,
    this.tcpTimeWaitTimeoutSec,
    this.tcpTransitoryIdleTimeoutSec,
    this.type,
    this.udpIdleTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoNetworkTier': ?pulumi.Input.mapOptionalInputValue<RouterNatAutoNetworkTier, String>(autoNetworkTier, (value) => value.value),
      'drainNatIps': ?drainNatIps,
      'enableDynamicPortAllocation': ?enableDynamicPortAllocation,
      'enableEndpointIndependentMapping': ?enableEndpointIndependentMapping,
      'endpointTypes': ?pulumi.Input.mapOptionalInputValue<List<RouterNatEndpointTypesItem>, List<String>>(endpointTypes, (value) => pulumi.Input.encodeList<RouterNatEndpointTypesItem, String>(value, (value) => value.value)),
      'icmpIdleTimeoutSec': ?icmpIdleTimeoutSec,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<RouterNatLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'maxPortsPerVm': ?maxPortsPerVm,
      'minPortsPerVm': ?minPortsPerVm,
      'name': ?name,
      'natIpAllocateOption': ?pulumi.Input.mapOptionalInputValue<RouterNatNatIpAllocateOption, String>(natIpAllocateOption, (value) => value.value),
      'natIps': ?natIps,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RouterNatRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RouterNatRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceSubnetworkIpRangesToNat': ?pulumi.Input.mapOptionalInputValue<RouterNatSourceSubnetworkIpRangesToNat, String>(sourceSubnetworkIpRangesToNat, (value) => value.value),
      'subnetworks': ?pulumi.Input.mapOptionalInputValue<List<RouterNatSubnetworkToNat>, List<Map<String, dynamic>>>(subnetworks, (value) => pulumi.Input.encodeList<RouterNatSubnetworkToNat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tcpEstablishedIdleTimeoutSec': ?tcpEstablishedIdleTimeoutSec,
      'tcpTimeWaitTimeoutSec': ?tcpTimeWaitTimeoutSec,
      'tcpTransitoryIdleTimeoutSec': ?tcpTransitoryIdleTimeoutSec,
      'type': ?pulumi.Input.mapOptionalInputValue<RouterNatType, String>(type, (value) => value.value),
      'udpIdleTimeoutSec': ?udpIdleTimeoutSec,
    };
  }

  factory RouterNat.fromMap(Map<String, dynamic> map) {
    return RouterNat(
      autoNetworkTier: map['autoNetworkTier'] == null ? null : (RouterNatAutoNetworkTier.fromValue(map['autoNetworkTier'] as String)).input(),
      drainNatIps: map['drainNatIps'] == null ? null : ((map['drainNatIps'] as List).cast<String>()).input(),
      enableDynamicPortAllocation: map['enableDynamicPortAllocation'] == null ? null : (map['enableDynamicPortAllocation'] as bool).input(),
      enableEndpointIndependentMapping: map['enableEndpointIndependentMapping'] == null ? null : (map['enableEndpointIndependentMapping'] as bool).input(),
      endpointTypes: map['endpointTypes'] == null ? null : (pulumi.Input.decodeList<RouterNatEndpointTypesItem>(map['endpointTypes'], (value) => RouterNatEndpointTypesItem.fromValue(value as String))).input(),
      icmpIdleTimeoutSec: map['icmpIdleTimeoutSec'] == null ? null : (map['icmpIdleTimeoutSec'] as int).input(),
      logConfig: map['logConfig'] == null ? null : (RouterNatLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())).input(),
      maxPortsPerVm: map['maxPortsPerVm'] == null ? null : (map['maxPortsPerVm'] as int).input(),
      minPortsPerVm: map['minPortsPerVm'] == null ? null : (map['minPortsPerVm'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      natIpAllocateOption: map['natIpAllocateOption'] == null ? null : (RouterNatNatIpAllocateOption.fromValue(map['natIpAllocateOption'] as String)).input(),
      natIps: map['natIps'] == null ? null : ((map['natIps'] as List).cast<String>()).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<RouterNatRule>(map['rules'], (value) => RouterNatRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceSubnetworkIpRangesToNat: map['sourceSubnetworkIpRangesToNat'] == null ? null : (RouterNatSourceSubnetworkIpRangesToNat.fromValue(map['sourceSubnetworkIpRangesToNat'] as String)).input(),
      subnetworks: map['subnetworks'] == null ? null : (pulumi.Input.decodeList<RouterNatSubnetworkToNat>(map['subnetworks'], (value) => RouterNatSubnetworkToNat.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tcpEstablishedIdleTimeoutSec: map['tcpEstablishedIdleTimeoutSec'] == null ? null : (map['tcpEstablishedIdleTimeoutSec'] as int).input(),
      tcpTimeWaitTimeoutSec: map['tcpTimeWaitTimeoutSec'] == null ? null : (map['tcpTimeWaitTimeoutSec'] as int).input(),
      tcpTransitoryIdleTimeoutSec: map['tcpTransitoryIdleTimeoutSec'] == null ? null : (map['tcpTransitoryIdleTimeoutSec'] as int).input(),
      type: map['type'] == null ? null : (RouterNatType.fromValue(map['type'] as String)).input(),
      udpIdleTimeoutSec: map['udpIdleTimeoutSec'] == null ? null : (map['udpIdleTimeoutSec'] as int).input(),
    );
  }
}

